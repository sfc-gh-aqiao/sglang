python -m sglang.launch_server --model-path meta-llama/Meta-Llama-3.1-8B-Instruct --port 30000 --host 0.0.0.0 --disable-radix-cache --disable-cuda-graph --enable-mixed-chunk

python3 -m sglang.bench_serving --backend sglang --dataset-name random --num-prompts 1000 --random-input 8000 --random-output 256 --random-range-ratio 0.5
