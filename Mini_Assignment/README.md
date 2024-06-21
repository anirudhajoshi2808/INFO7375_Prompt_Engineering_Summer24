# Mini Assignment: Setting Up and Running Llama3 and CodeLlama Models

This repository contains scripts to set up and run the Llama3 and CodeLlama models using the Ollama client. Follow the instructions below to get started.

Video Link: https://youtu.be/2HfR1p9qQF0

## Prerequisites

1. **Download and Install Ollama:**
   You need to download and install Ollama from [GitHub](https://github.com/ollama/ollama).

2. **Install jq:**
   The scripts use `jq` to process JSON. Install it using Homebrew:
   ```sh
   brew install jq

## Setting Up and Running Models

### Llama3

**Run the Llama3 Model:**
```sh
ollama run llama3
```
### Fetch Results for Llama3:

**Make the script executable:**

```
chmod +x fetch_result_llama3.sh
```

**Run the script:**
```sh
./fetch_result_llama3.sh
```

### CodeLlama

**Run the CodeLlama Model:**
```sh
ollama run codellama
```

### Fetch Results for CodeLlama:

**Make the script executable:**
```
chmod +x fetch_result_codellama.sh
```

**Run the script:**
```sh
./fetch_result_codellama.sh
```

## Purpose of Each Part of the Setup
### fetch_result_llama3.sh:
This script sends a request to the Llama3 model running on the Ollama server and processes the streaming response to output the final result in a readable format.

### fetch_result_codellama.sh:
Similar to the fetch_result_llama3.sh, this script interacts with the CodeLlama model, processes the streaming response, and outputs the final result.