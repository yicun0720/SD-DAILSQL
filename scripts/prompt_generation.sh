data_type="spider"
split="test"
tokenizer="gpt-3.5-turbo"
max_seq_len=4096
prompt_repr="SQL"
k_shot=5
example_type="QA"
selector_type="EUCDISQUESTIONMASK"
evaluation_step="step2"

while [[ $# -gt 0 ]]; do
  case "$1" in
  "-data_type")
    data_type="${2}"
    shift 2
    ;;
  "-split")
    data_type="${2}"
    shift 2
    ;;
  "-tokenizer")
    tokenizer="${2}"
    shift 2
    ;;
  "-max_seq_len")
    max_seq_len="${2}"
    shift 2
    ;;
  "-prompt_repr")
    prompt_repr="${2}"
    shift 2
    ;;
  "-k_shot")
    k_shot="${2}"
    shift 2
    ;;
  "-example_type")
    example_type="${2}"
    shift 2
    ;;
  "-selector_type")
    selector_type="${2}"
    shift 2
    ;;
  "-evaluation_step")
    evaluation_step="${2}"
    shift 2
    ;;
  *)
    positional_args+=("${1}")
    shift
    ;;
  esac
done



python generate_question.py \
--data_type $data_type \
--split $split \
--tokenizer $tokenizer \
--max_seq_len $max_seq_len \
--prompt_repr $prompt_repr \
--k_shot $k_shot \
--example_type $example_type \
--selector_type  $selector_type \
--evaluation_step $evaluation_step
