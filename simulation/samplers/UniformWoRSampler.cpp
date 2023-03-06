#include "UniformWoRSampler.hpp"

#include <assert.h>

#include <map>

#include "Rand.hpp"

/*
 * A helper class.
 * initially (implicitly) stores the identity function over the integers.
 * Then, using set, one can update this function at chosen points.
 * The function can be accessed via get.
 * */
class Remapper {
   public:
    inline void set(int x, int y) { this->remap[x] = y; };
    inline int get(int x) {
        // check if x has been remapped.
        // if so, return the new function value.
        // otherwise, f(x) = x.
        if (this->remap.find(x) == this->remap.end()) {
            return x;
        }
        return this->remap[x];
    };

   private:
    std::map<int, int> remap;
};
std::vector<int> sampleWithRemap(int n, int q) {
    std::vector<int> res(q);

    Remapper bins;

    // invariant: all non-empty bins are within [0,..,n-i)
    for (int i = 0; i < q; ++i) {
        // Sample a bin from the remaining bins
        int binIdx = Rand::randomInt(0, n - 1 - i);
        res[i] = bins.get(binIdx);

        // swap this bin to the back, because it is used now.
        // optimization: We do not really care about what remains in the back
        bins.set(binIdx, bins.get(n - 1 - i));
    }
    return res;
}

std::vector<int> sampleWithoutRemap(int n, int q) {
    std::vector<int> res(q);

    std::vector<int> bins(n);
    for (int i = 0; i < n; ++i) {
        bins[i] = i;
    }

    // invariant: all non-empty bins are within [0,..,n-i)
    for (int i = 0; i < q; ++i) {
        // Sample a bin from the remaining bins
        int binIdx = Rand::randomInt(0, n - 1 - i);
        res[i] = bins[binIdx];

        // swap this bin to the back, because it is used now.
        // optimization: We do not really care about what remains in the back
        bins[binIdx] = bins[n - q - i];
    }
    return res;
}

std::vector<int> UniformWoRSampler::sample(int n, int q) {
    assert(q <= n);

    // asymptotically, the solution with the remap is more efficient.
    // but for very small n, it is more efficient to do it the more naive way.
    if (n < 200) {
        return sampleWithoutRemap(n, q);
    }
    return sampleWithRemap(n, q);
}


bool UniformWoRSampler::isQSensitive() {
    return true;
}