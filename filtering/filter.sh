# N_TO_SAMPLES

python3 n_to_samples.py --sampler 0 -q 32 -d 0.25 --out 0_25/wr.csv 
python3 n_to_samples.py --sampler 1 -q 8 -d 0.25 --out 0_25/wor_8.csv  
python3 n_to_samples.py --sampler 1 -q 32 -d 0.25 --out 0_25/wor_32.csv 
python3 n_to_samples.py --sampler 2 -q 8 -d 0.25 --out 0_25/seg_8.csv 
python3 n_to_samples.py --sampler 2 -q 32 -d 0.25 --out 0_25/seg_32.csv  

python3 n_to_samples.py --sampler 0 -q 32 -d 0.5 --out 0_5/wr.csv 
python3 n_to_samples.py --sampler 1 -q 8 -d 0.5 --out 0_5/wor_8.csv 
python3 n_to_samples.py --sampler 1 -q 32 -d 0.5 --out 0_5/wor_32.csv 
python3 n_to_samples.py --sampler 2 -q 8 -d 0.5 --out 0_5/seg_8.csv 
python3 n_to_samples.py --sampler 2 -q 32 -d 0.5 --out 0_5/seg_32.csv  

python3 n_to_samples.py --sampler 0 -q 32 -d 0.75 --out 0_75/wr.csv 
python3 n_to_samples.py --sampler 1 -q 32 -d 0.75 --out 0_75/wor_32.csv    
python3 n_to_samples.py --sampler 1 -q 8 -d 0.75 --out 0_75/wor_8.csv  
python3 n_to_samples.py --sampler 2 -q 8 -d 0.75 --out 0_75/seg_8.csv 
python3 n_to_samples.py --sampler 2 -q 32 -d 0.75 --out 0_75/seg_32.csv  



# SAMPLES_TO_PROB

python3 samples_to_prob.py --sampler 0 -q 32 -n 1024 -k 256 --max 800 --out 1024_256/wr.csv
python3 samples_to_prob.py --sampler 1 -q 8 -n 1024 -k 256 --max 800 --out 1024_256/wor_8.csv
python3 samples_to_prob.py --sampler 1 -q 32 -n 1024 -k 256 --max 800 --out 1024_256/wor_32.csv
python3 samples_to_prob.py --sampler 2 -q 8 -n 1024 -k 256  --max 800 --out 1024_256/seg_8.csv
python3 samples_to_prob.py --sampler 2 -q 32 -n 1024 -k 256 --max 800 --out 1024_256/seg_32.csv

python3 samples_to_prob.py --sampler 0 -q 32 -n 1024 -k 512 --max 1200 --out 1024_512/wr.csv
python3 samples_to_prob.py --sampler 1 -q 8 -n 1024 -k 512 --max 1200 --out 1024_512/wor_8.csv
python3 samples_to_prob.py --sampler 1 -q 32 -n 1024 -k 512 --max 1200 --out 1024_512/wor_32.csv
python3 samples_to_prob.py --sampler 2 -q 8 -n 1024 -k 512 --max 1200 --out 1024_512/seg_8.csv
python3 samples_to_prob.py --sampler 2 -q 32 -n 1024 -k 512 --max 1200 --out 1024_512/seg_32.csv

python3 samples_to_prob.py --sampler 0 -q 32 -n 1024 -k 768 --max 2200 --out 1024_768/wr.csv
python3 samples_to_prob.py --sampler 1 -q 8 -n 1024 -k 768 --max 2200 --out 1024_768/wor_8.csv
python3 samples_to_prob.py --sampler 1 -q 32 -n 1024 -k 768 --max 2200 --out 1024_768/wor_32.csv
python3 samples_to_prob.py --sampler 2 -q 8 -n 1024 -k 768 --max 2200 --out 1024_768/seg_8.csv
python3 samples_to_prob.py --sampler 2 -q 32 -n 1024 -k 768 --max 2200 --out 1024_768/seg_32.csv





python3 samples_to_prob.py --sampler 0 -q 32 -n 2048 -k 512 --max 1100 --out 2048_512/wr.csv
python3 samples_to_prob.py --sampler 1 -q 8 -n 2048 -k 512 --max 1100 --out 2048_512/wor_8.csv
python3 samples_to_prob.py --sampler 1 -q 32 -n 2048 -k 512 --max 1100 --out 2048_512/wor_32.csv
python3 samples_to_prob.py --sampler 2 -q 8 -n 2048 -k 512 --max 1100 --out 2048_512/seg_8.csv
python3 samples_to_prob.py --sampler 2 -q 32 -n 2048 -k 512 --max 1100 --out 2048_512/seg_32.csv

python3 samples_to_prob.py --sampler 0 -q 32 -n 2048 -k 1024 --max 2200 --out 2048_1024/wr.csv
python3 samples_to_prob.py --sampler 1 -q 8 -n 2048 -k 1024 --max 2200 --out 2048_1024/wor_8.csv
python3 samples_to_prob.py --sampler 1 -q 32 -n 2048 -k 1024 --max 2200 --out 2048_1024/wor_32.csv
python3 samples_to_prob.py --sampler 2 -q 8 -n 2048 -k 1024 --max 2200 --out 2048_1024/seg_8.csv
python3 samples_to_prob.py --sampler 2 -q 32 -n 2048 -k 1024 --max 2200 --out 2048_1024/seg_32.csv

python3 samples_to_prob.py --sampler 0 -q 32 -n 2048 -k 1536 --max 4000 --out 2048_1536/wr.csv
python3 samples_to_prob.py --sampler 1 -q 8 -n 2048 -k 1536 --max 4000 --out 2048_1536/wor_8.csv
python3 samples_to_prob.py --sampler 1 -q 32 -n 2048 -k 1536 --max 4000 --out 2048_1536/wor_32.csv
python3 samples_to_prob.py --sampler 2 -q 8 -n 2048 -k 1536 --max 4000 --out 2048_1536/seg_8.csv
python3 samples_to_prob.py --sampler 2 -q 32 -n 2048 -k 1536 --max 4000 --out 2048_1536/seg_32.csv
