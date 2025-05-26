```py
def call_llm(prompt: str, model="gpt-4o") -> str:
    response = openai.chat.completions.create(
        model=model,
        messages=[
            {
                 "role": "system",
                 "content": (
                     "You are an expert in C optimization."
                     "Please generate code whose processing is identical to the original PolyBench code."
                     "Additionally, the code should aim for code generation that is more optimized than -O3."
                     "Please output your reply as code only, without enclosing it in quotation marks ```c ```."
                     "Do not use OpenMP, threads, multiprocessing, SIMD/vector intrinsics, or any parallel processing. "
                     "Only use sequential optimization techniques such as loop unrolling, loop fusion, reducing memory latency, etc. "
                     "Do not change variable names or the PolyBench macro structure. "
                 )
            },
            {"role": "user", "content": prompt}
        ],
        temperature=0.7
```

```py
        prompt = f"""
Below is a C program, part of the polybench benchmark, with optimization objectives.
- Do not change the variable names
- Keep polybench I/O and macro definitions intact
- Make your code faster
- Do not use OpenMP or any parallelization such as threading, multiprocessing, or vector intrinsics.
- The optimization must be performed using sequential code only.
- The output is just the code, not enclosed in ````c ```` and no additional explanation is needed
- Make sure there are no incomplete functions or syntax errors
- Reduced execution time

{source_code}
"""
```
