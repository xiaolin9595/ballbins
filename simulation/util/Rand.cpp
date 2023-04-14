#include "Rand.hpp"

Rand* Rand::instance = nullptr;  // or NULL, or nullptr in c++11

Rand::Rand() {
    std::random_device device;
    generator = std::mt19937(device());
}

Rand* Rand::get() {
    if (instance == nullptr) {
        instance = new Rand();
    }
    return instance;
}

int Rand::randomInt(int lowerBound, int upperBound) {
    std::uniform_int_distribution<int> distribution(lowerBound, upperBound);
    return distribution(get()->generator);
}


void Rand::init() {
    get();
}