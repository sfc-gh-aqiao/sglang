python -m sglang.launch_server --model-path meta-llama/Meta-Llama-3.1-8B-Instruct --port 30000 --host 0.0.0.0 --disable-radix-cache --chunked-prefill-size 0
python -m sglang.launch_server --model-path meta-llama/Meta-Llama-3.1-8B-Instruct --port 30000 --host 0.0.0.0 --disable-radix-cache --chunked-prefill-size 0 --mem-fraction-static 0.72
python -m sglang.launch_server --model-path meta-llama/Meta-Llama-3.1-8B-Instruct --port 30000 --host 0.0.0.0 --disable-radix-cache

python3 -m sglang.bench_serving --backend sglang --dataset-name random --num-prompts 60 --random-input 128000 --random-output 256 --random-range-ratio 0.9
python3 -m sglang.bench_serving --backend sglang --dataset-name random --num-prompts 240 --random-input 32000 --random-output 256 --random-range-ratio 0.9
python3 -m sglang.bench_serving --backend sglang --dataset-name random --num-prompts 960 --random-input 8000 --random-output 256 --random-range-ratio 0.9
python3 -m sglang.bench_serving --backend sglang --dataset-name random --num-prompts 3840 --random-input 2000 --random-output 256 --random-range-ratio 0.9