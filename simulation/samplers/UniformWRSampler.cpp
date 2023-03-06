#include "UniformWRSampler.hpp"

#include "Rand.hpp"
std::vector<int> UniformWRSampler::sample(int n, int q) {
    std::vector<int> result(q);
    for (int i = 0; i < q; ++i) {
        result[i] = Rand::randomInt(0, n - 1);
    }
    return result;
}


bool UniformWRSampler::isQSensitive() {
    return false;
}