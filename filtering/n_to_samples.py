#!/usr/bin/env python

import os
import os.path
import csv
import argparse


# expected number of entries per line in raw data file
RAWDATADIM = 6
# positions in raw data file
RAWPOS = {"sampler": 0, "n": 1, "k": 2, "q": 3, "l": 4, "p": 5}

# Setup command line options
parser = argparse.ArgumentParser(
    description="Python script to create a filtered csv file from the raw simulation data output by the simulation. The resulting csv file contains pairs (n,s), where s is the minumum number of samples needed to get the probability of filling less than k bins below a given probability threshold.")
parser.add_argument("--sampler", help="The sampler", default=0, type=int)
parser.add_argument(
    "-q", help="The number of balls per player", default=8, type=int)
parser.add_argument(
    "-p", help="Threshold for the probability", default=0.001, type=float)
parser.add_argument(
    "-d", help="The relative number of bins that should be non-empty. Should be between 0 and 1", default=0.5, type=float)
parser.add_argument(
    "--min", help="The start of the range for n", default=0, type=int)
parser.add_argument(
    "--max", help="The end of the range for n", default=4096, type=int)
parser.add_argument(
    "-i", "--in", help="The name of the input file. Should be located in ../data/", default="data.csv")
parser.add_argument(
    "-o", "--out", help="The name of the output file. Will be located in ../data_filtered/", default="filtered.csv")
args = vars(parser.parse_args())

# This dictionary will contain the result
# n -> samples 
f = {}

# Check if input file exists. If it exists, read it
inputpath = "../data/"+args["in"]
if not os.path.exists(inputpath):
    print("Input file not found.")
    exit(-1)

with open(inputpath, "r") as infile:
    # We ignore all lines that are not interesting
    # for this sampler and set of parameters
    for line in infile:
        sp = line.split(",")
        assert (len(sp) == RAWDATADIM)

        sampler = int(sp[RAWPOS["sampler"]])
        q = int(sp[RAWPOS["q"]])
        n = int(sp[RAWPOS["n"]])
        k = int(sp[RAWPOS["k"]])
        l = int(sp[RAWPOS["l"]])
        p = float(sp[RAWPOS["p"]])
        numSamples = q*l

        if sampler != args["sampler"]:
            continue
        if q != args["q"]:
            continue
        if p > args["p"]:
            continue
        if k != n * args["d"]:
            continue
        if n not in f:
            f[n] = numSamples
        f[n] = min(f[n],numSamples)

# Write the result to a csv file
if len(f) == 0:
    print("Warning: No data for your set of parameters found.")
    exit(0)
outputpath = "../data_filtered/"+args["out"]
with open(outputpath, mode="w") as outfile:
    writer = csv.writer(outfile, delimiter=',')
    for n in f:
        writer.writerow([n,f[n]])
