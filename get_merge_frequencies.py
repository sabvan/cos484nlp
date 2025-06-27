import json
from pathlib import Path
import subprocess

def get_languages_from_meta(meta_path):
    meta_path = Path(meta_path)
    if not meta_path.exists():
        raise FileNotFoundError(f"No such file: {meta_path}")

    with open(meta_path, "r") as f:
        meta = json.load(f)

    byte_count = meta.get("byte_count", {})
    languages = list(byte_count.keys())
    return languages

def run_dump_frequencies(test_id, model_name):
    corpus_dir = "/Users/sabrinavan/Documents/Princeton/Spring2025/cos484/COS484_final_proj/RedPajama/domains"
    corpus_path = Path(corpus_dir)
    lang_list = [f.name for f in corpus_path.iterdir() if f.is_dir()]
    experiment_dir = f"/Users/sabrinavan/Documents/Princeton/Spring2025/cos484/COS484_final_proj/experiments/llm/qwen3"
    experiment_path = Path(experiment_dir)
    finished_list = [f.name for f in experiment_path.iterdir() if f.is_dir()]
    
    print(lang_list)
    print(finished_list)


    for lang in lang_list:
        if lang not in finished_list:
            print(f"➡️  Running dump_frequencies for: {lang}")
            subprocess.run([
                "python", "-m", "dump_frequencies",
                "--experiment_dir", experiment_dir,
                "--lang_code", lang,
                "--corpus_dir", corpus_dir,
                "--model_name", model_name
            ], check=True)
            print(f"✅ Done with {lang}\n")


## CHANGE THIS
if __name__ == "__main__":
    run_dump_frequencies(0, "qwen3")