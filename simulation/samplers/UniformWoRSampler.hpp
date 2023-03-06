#pragma once

#include "Sampler.hpp"

/**
 * Sample bins uniformly at random, without replacement
*/

class UniformWoRSampler : public Sampler {
    public:
        std::vector<int> sample(int n, int q);
        bool isQSensitive();
};