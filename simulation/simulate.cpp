#include "simulate.hpp"

#include <omp.h>

#include <vector>

#include "parameters.hpp"

double simulate(Sampler* sampler, int n, int k, int q, int ell) {
    // we do the experiment a lot of times,
    // and count how often we have less than k bins

    int numBad = 0;
    #pragma omp parallel for reduction(+ : numBad)
    for (int r = 0; r < SIMULATION_NUMRUNS; ++r) {
        std::vector<bool> bins(n, false);
        int nonempty = 0;

        // let each client sample, and mark the bins that are now non-emtpy
        for (int c = 0; c < ell; ++c) {
            std::vector<int> sampledBins = sampler->sample(n, q);
            for (int bin : sampledBins) {
                if (!bins[bin]) {
                    bins[bin] = true;
                    nonempty++;
                }
            }
        }

        // check if the number of non-empty bins is less than k
        int d = (nonempty < k) ? 1 : 0;
        numBad += d;
    }
    return (double)numBad / (double)SIMULATION_NUMRUNS;
}