data_dir="./dataset/spider"
data_type="spider"
evaluation_step="step2"


while [[ $# -gt 0 ]]; do
  case "$1" in
  "-data_dir")
    data_dir="${2}"
    shift 2
    ;;
  "-data_type")
    data_type="${2}"
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

python data_preprocess.py --data_dir $data_dir --data_type $data_type --evaluation_step $evaluation_step
