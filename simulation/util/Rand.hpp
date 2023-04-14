#pragma once

#include <random>
#include <vector>

/**
 * A class to sample random integers
*/

class Rand {
   private:
    Rand();
    static Rand *instance;
    static Rand  *get(); 
    

    std::mt19937 generator;

   public:

    static void init();

    /**
     * lowerBound is inclusive,
     * upperBound is inclusive
    */
    static int randomInt(int lowerBound, int upperBound);
};
