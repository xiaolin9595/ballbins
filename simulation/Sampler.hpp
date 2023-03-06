#pragma once

#include <vector>
/**
 * An abstract class representing a way of sampling bins.
 */

class Sampler {
   public:
    /**
     * Samples q bins out of n bins in total.
     */
    virtual std::vector<int> sample(int n, int q) = 0;
    /**
     * Returns whether Q has an impact on the performance of this sampler.
    */
    virtual bool isQSensitive() = 0;
    virtual ~Sampler(){};
};
