#include "CSVWriter.hpp"

#include <iostream>

CSVWriter::CSVWriter(std::string path) {
    this->file.open(path,std::ios_base::app);
}

void CSVWriter::putData(int sampler, int n, int k, int q, int ell, double p) {
    this->file << sampler << ", " << n << ", " << k << ", " << q << ", " << ell << ", " << p << std::endl;
}

void CSVWriter::close() { this->file.close(); }