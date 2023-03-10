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
    description="Python script to create a filtered csv file from the raw simulation data output by the simulation. The resulting csv file contains pairs (Nr of samples, probability), for a given sampler and range")
parser.add_argument("--sampler", help="The sampler", default=0, type=int)
parser.add_argument(
    "-q", help="The number of balls per player", default=8, type=int)
parser.add_argument("-n", help="The number of bins", default=1024, type=int)
parser.add_argument(
    "-k", help="The number of bins that should be non-empty. Should be between 0 and n", default=512, type=int)
parser.add_argument(
    "--min", help="The start of the range for x = #samples", default=0, type=int)
parser.add_argument(
    "--max", help="The end of the range for x = #samples", default=2048, type=int)
parser.add_argument(
    "-i", "--in", help="The name of the input file. Should be located in ../data/", default="data.csv")
parser.add_argument(
    "-o", "--out", help="The name of the output file. Will be located in ../data_filtered/samples_to_prob/", default="filtered.csv")
args = vars(parser.parse_args())

# These two lists will contain the result
xs = []
ys = []

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
        if n != args["n"]:
            continue
        if k != args["k"]:
            continue
        if q != args["q"]:
            continue
        if numSamples < args["min"]:
            continue
        if numSamples > args["max"]:
            continue

        # This line passed all checks, so we add it to the result
        xs.append(numSamples)
        ys.append(p)

# Create directory if it does not yet exist
if not os.path.exists("../data_filtered"):
    os.makedirs("../data_filtered")
if not os.path.exists("../data_filtered/samples_to_prob"):
    os.makedirs("../data_filtered/samples_to_prob")

# Write the result to a csv file
assert (len(xs) == len(ys))
if len(xs) == 0:
    print("Warning: No data for your set of parameters found.")
    exit(0)
outputpath = "../data_filtered/samples_to_prob/"+args["out"]
with open(outputpath, mode="w") as outfile:
    writer = csv.writer(outfile, delimiter=',')
    for i in range(len(xs)):
        writer.writerow([xs[i], ys[i]])
