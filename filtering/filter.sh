# N_TO_SAMPLES

python3 n_to_samples.py --sampler 0 -q 8 -d 0.25 --out 0_25/wr_8.csv 
python3 n_to_samples.py --sampler 1 -q 8 -d 0.25 --out 0_25/wor_8.csv  
python3 n_to_samples.py --sampler 1 -q 64 -d 0.25 --out 0_25/wor_64.csv 
python3 n_to_samples.py --sampler 1 -q 128 -d 0.25 --out 0_25/wor_128.csv  
python3 n_to_samples.py --sampler 2 -q 8 -d 0.25 --out 0_25/seg_8.csv 
python3 n_to_samples.py --sampler 2 -q 64 -d 0.25 --out 0_25/seg_64.csv  
python3 n_to_samples.py --sampler 2 -q 128 -d 0.25 --out 0_25/seg_128.csv

python3 n_to_samples.py --sampler 0 -q 8 -d 0.5 --out 0_5/wr_8.csv 
python3 n_to_samples.py --sampler 1 -q 8 -d 0.5 --out 0_5/wor_8.csv 
python3 n_to_samples.py --sampler 1 -q 64 -d 0.5 --out 0_5/wor_64.csv 
python3 n_to_samples.py --sampler 1 -q 128 -d 0.5 --out 0_5/wor_128.csv  
python3 n_to_samples.py --sampler 2 -q 8 -d 0.5 --out 0_5/seg_8.csv 
python3 n_to_samples.py --sampler 2 -q 64 -d 0.5 --out 0_5/seg_64.csv  
python3 n_to_samples.py --sampler 2 -q 128 -d 0.5 --out 0_5/seg_128.csv

python3 n_to_samples.py --sampler 0 -q 8 -d 0.75 --out 0_75/wr_8.csv 
python3 n_to_samples.py --sampler 1 -q 64 -d 0.75 --out 0_75/wor_64.csv  
python3 n_to_samples.py --sampler 1 -q 128 -d 0.75 --out 0_75/wor_128.csv  
python3 n_to_samples.py --sampler 1 -q 8 -d 0.75 --out 0_75/wor_8.csv  
python3 n_to_samples.py --sampler 2 -q 8 -d 0.75 --out 0_75/seg_8.csv 
python3 n_to_samples.py --sampler 2 -q 64 -d 0.75 --out 0_75/seg_64.csv  
python3 n_to_samples.py --sampler 2 -q 128 -d 0.75 --out 0_75/seg_128.csv



# SAMPLES_TO_PROB

python3 samples_to_prob.py --sampler 0 -q 8 -n 1024 -k 256 --out 1024_256/wr_8.csv
python3 samples_to_prob.py --sampler 1 -q 8 -n 1024 -k 256 --out 1024_256/wor_8.csv
python3 samples_to_prob.py --sampler 1 -q 64 -n 1024 -k 256 --out 1024_256/wor_64.csv
python3 samples_to_prob.py --sampler 1 -q 128 -n 1024 -k 256 --out 1024_256/wor_128.csv
python3 samples_to_prob.py --sampler 2 -q 8 -n 1024 -k 256 --out 1024_256/seg_8.csv
python3 samples_to_prob.py --sampler 2 -q 64 -n 1024 -k 256 --out 1024_256/seg_64.csv
python3 samples_to_prob.py --sampler 2 -q 128 -n 1024 -k 256 --out 1024_256/seg_128.csv

python3 samples_to_prob.py --sampler 0 -q 8 -n 1024 -k 512 --out 1024_512/wr_8.csv
python3 samples_to_prob.py --sampler 1 -q 8 -n 1024 -k 512 --out 1024_512/wor_8.csv
python3 samples_to_prob.py --sampler 1 -q 64 -n 1024 -k 512 --out 1024_512/wor_64.csv
python3 samples_to_prob.py --sampler 1 -q 128 -n 1024 -k 512 --out 1024_512/wor_128.csv
python3 samples_to_prob.py --sampler 2 -q 8 -n 1024 -k 512 --out 1024_512/seg_8.csv
python3 samples_to_prob.py --sampler 2 -q 64 -n 1024 -k 512 --out 1024_512/seg_64.csv
python3 samples_to_prob.py --sampler 2 -q 128 -n 1024 -k 512 --out 1024_512/seg_128.csv

python3 samples_to_prob.py --sampler 0 -q 8 -n 1024 -k 768 --out 1024_768/wr_8.csv
python3 samples_to_prob.py --sampler 1 -q 8 -n 1024 -k 768 --out 1024_768/wor_8.csv
python3 samples_to_prob.py --sampler 1 -q 64 -n 1024 -k 768 --out 1024_768/wor_64.csv
python3 samples_to_prob.py --sampler 1 -q 128 -n 1024 -k 768 --out 1024_768/wor_128.csv
python3 samples_to_prob.py --sampler 2 -q 8 -n 1024 -k 768 --out 1024_768/seg_8.csv
python3 samples_to_prob.py --sampler 2 -q 64 -n 1024 -k 768 --out 1024_768/seg_64.csv
python3 samples_to_prob.py --sampler 2 -q 128 -n 1024 -k 768 --out 1024_768/seg_128.csv
