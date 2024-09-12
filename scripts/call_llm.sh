openai_api_key=""
model="gpt-4-turbo"
question=""
n=5
db_dir="dataset/spider/database_opt"
temperature=1.0

while [[ $# -gt 0 ]]; do
  case "$1" in
  "-openai_api_key")
    openai_api_key="${2}"
    shift 2
    ;;
  "-model")
    model="${2}"
    shift 2
    ;;
  "-question")
    question="${2}"
    shift 2
    ;;
  "-n")
    n="${2}"
    shift 2
    ;;
  "-db_dir")
    db_dir="${2}"
    shift 2
    ;;
  "-temperature")
    temperature="${2}"
    shift 2
    ;;
  *)
    positional_args+=("${1}")
    shift
    ;;
  esac
done

python ask_llm.py \
--openai_api_key $openai_api_key  \
--model $model \
--question $question \
--n $n \
--db_dir $db_dir \
--temperature $temperature
