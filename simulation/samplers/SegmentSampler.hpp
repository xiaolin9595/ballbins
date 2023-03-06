#pragma once

#include "Sampler.hpp"

/**
 * Sample bins segment-wise.
 * I.e. sample one contiguous of n/q segments 
 * of size q, and then output that segment
*/

class SegmentSampler : public Sampler {
    public:
        std::vector<int> sample(int n, int q);
        bool isQSensitive();
};