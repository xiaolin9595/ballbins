#pragma once

#include "Sampler.hpp"



/**
 * For a given sampler, n, k, q, and ell, this determines the probability
 * that at less than k bins of n are non-empty when ell clients make q samples.
 */
double simulate(Sampler* sampler, int n, int k, int q, int ell);