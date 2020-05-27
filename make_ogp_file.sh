#!/bin/bash
function usage() {
  cat <<EOF
  Usage:
    "bash $0 folderprefix startNum endNum"
    use input.env
  Description:
    create ./folder/index.html for ogp.png
    please read input.env.sample

EOF
exit 1
}

if [ $# != 3 ]; then
  usage
fi

set -a; eval "$(cat input.env <(echo) <(declare -x))"; set +a;
for i in `seq $2 $3`; do
  foldername="$1${i}"
  mkdir ${foldername}
  pathname="${foldername}/index.html"
  env FOLDERNAME=${foldername} envsubst < ogp.template > ${pathname}
done

echo "finished!"
