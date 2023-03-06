#include "SegmentSampler.hpp"

#include "Rand.hpp"
#include "parameters.hpp"

std::vector<int> SegmentSampler::sample(int n, int q) {
    int segment = Rand::randomInt(0,n/q-1);
    std::vector<int> result(q);
    for (int i = 0; i<q; ++i) {
        result[i] = (segment*q+i)%n;
    }
    return result;
}

bool SegmentSampler::isQSensitive() {
    return true;
}