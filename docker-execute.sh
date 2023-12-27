#!/bin/sh

docker run -it \
    -e GGML_CUDA_NO_PINNED=1 \
    -e LLAMA_CTX_SIZE=2048 \
    -e LLAMA_MODEL=/models/bun_mistral_7b_v2.Q4_K_M.gguf \
    -e LLAMA_N_GPU_LAYERS=99 \
    -v $(pwd)/models:/models \
    -p 18080:8080 \
    llama-cpp-docker
