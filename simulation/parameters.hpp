#pragma once

#include <vector>

/**
 * Number of times the experiment is run for our simulation.
 * The more runs, the less efficient but the more precise.
 */
#define SIMULATION_NUMRUNS 25000

/**
 * Once the probability is below this threshold,
 * simulation for larger number of samples is skipped and implicitly p = 0 is assumed.
 */
#define SIMULATION_THRESH 0.001

/**
 * Range of Ns is {NSTEPS*i | i = NSTARTI, ... NENDI}
 */
#define NSTEPS 128
#define NSTARTI 2
#define NENDI 16

/**
 * Range of Qs
 */
const std::vector<int> QS = {8, 32};

/**
 * Range of Ks is {N/KDENOM*i | i = KSTARTI,... KENDI}
 */
#define KDENOM 4
#define KSTARTI 1
#define KENDI 3

/**
 * number of client ell will be in range [k/q+KOFFLOW,n/q+KOFFHIGH] with step width ELLSTEPS
*/
#define ELLSTEPS 5
#define KOFFLOW 0
#define KOFFHIGH 100

/** The path where the data is stored */
#define DATAPATH "../../data/data.csv"