#include <iostream>

#include "CSVWriter.hpp"
#include "SegmentSampler.hpp"
#include "UniformWRSampler.hpp"
#include "UniformWoRSampler.hpp"
#include "parameters.hpp"
#include "simulate.hpp"

void printInfo(int s, int q, int n, int k) {
    std::cout << "Sampler is " << s << " with Q = " << q << ". Simulating N = " << n << ", K = " << k << std::endl;
}

int main() {
    std::cout << "Starting Simulation. " << std::endl;

    CSVWriter writer(DATAPATH);

    std::vector<Sampler*> samplers;
    samplers.push_back(new UniformWRSampler());
    samplers.push_back(new UniformWoRSampler());
    samplers.push_back(new SegmentSampler());

    /**
     * For all samplers, for each n, for each k,
     * for each q, for each l, determine the probability
     * by simulation
     */
    for (int s = 0; s < samplers.size(); ++s) {
        int nLow = NSTARTI * NSTEPS;
        int nHigh = NENDI * NSTEPS;
        for (int n = nLow; n <= nHigh; n += NSTEPS) {
            int kSteps = n / KDENOM;
            int kLow = kSteps * KSTARTI;
            int kHigh = kSteps * KENDI;
            for (int k = kLow; k <= kHigh; k += kSteps) {
                std::vector<int> qs;
                if (samplers[s]->isQSensitive()) {
                    qs = QS;
                } else {
                    qs.push_back(QS.back());
                }
                for (int qi = 0; qi < qs.size(); ++qi) {
                    int q = qs[qi];
                    printInfo(s, q, n, k);
                    int ellLow = k / q + KOFFLOW;
                    // int ellLow =1;
                    // int ellHigh=2;
                    int ellHigh = n / q + KOFFHIGH;
                    bool belowThresh = false;
                    for (int ell = ellLow; ell < ellHigh || !belowThresh; ell += ELLSTEPS) {
                        //  std::cout << "The ell is: " << ell << std::endl;
                        double p = 0.0;
                        if (!belowThresh) {
                            p = simulate(samplers[s], n, k, q, ell);
                            if (p < SIMULATION_THRESH) {
                                belowThresh = true;
                            }
                        }
                        writer.putData(s, n, k, q, ell, p);
                    }
                }
            }
        }
    }

    writer.close();
}