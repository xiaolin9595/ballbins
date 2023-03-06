## Purpose of this Repository
This repository contains simulation code for a probabilistic experiment that one may call a collective coupon collector or collective balls into bins.
Consider the following problem.
There are `N` bins and `L` players.
Each player is allowed to throw `Q` balls into the bins, according to some fixed strategy.
The players all start with the same state, are not aware of any identifiers and can not communicate.
Each player starts with a random tape.
The goal of the players is to ensure that after the experiment, at least `K` of the `N` bins are non-empty.
What is the best strategy for the players?
One strategy would be for the players to sample `Q` bins at random (e.g. with replacement).
Then this would boil down to a standard coupon collector problem.
This repository simulates this experiment for different strategies.
Currently, the following samplers/strategies are implemented: 
* Sampling uniformly with replacement (0)
* Sampling uniformly without replacement (1)
* Segment sampling (2)

Hint: New samplers can easily be added by creating a subclass of `Sampler` and adding `samplers.push_back(new <Your ClassName>());` in `main.cpp`.


## Running the Simulation
Simulation results can be found in `data/data.csv`.
One can re-run the simulation as follows.
First, delete `data/data.csv`, as otherwise simulation results will be appended to the existing ones.
The code for the simulation is in `simulation`.
To compile the simulation code, run 
```
    cd simulation
    mkdir build
    cd build
    cmake ..
    make
```
You may have to install `openmp` if you do not have it.
Then, run `./simulate`. It may take a while.
The resulting data can be found in `data/data.csv`.


## Filtering Simulation Data

The raw simulation data is not useful without further processing.
For example, we may want to plot the dependency between number of samples and probability of filling less than `K` out of `N` bins (failure probability) using Tikz. 
For that, we would need a filtered csv file with just two columns.
Python scripts are provided that take care of such a filtering:
* `filtering/n_to_samples.py`: Depdendency between `N` and the number of samples needed to get the failure probability below a given threshold.
* `filtering/samples_to_prob.py`: Dependency between number of samples and failure probability.
You can run both scripts with `--help` to get an overview of the input parameters.