#pragma once

#include "Sampler.hpp"

/**
 * Sample bins uniformly and independent, with replacement
*/

class UniformWRSampler : public Sampler {
    public:
        std::vector<int> sample(int n, int q);
        bool isQSensitive();
};