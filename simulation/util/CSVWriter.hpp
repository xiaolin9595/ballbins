#pragma once

#include <fstream>
#include <string>

/**
 * Writes data to csv file
 */

class CSVWriter {
   public:
    CSVWriter(std::string path);
    void putData(int sampler, int n, int k, int q, int ell, double p);
    void close();

   private:
    std::ofstream file;
};
