
for i in $(seq $2); do
  cat logs/$1.nolog >> logs/$3log.log
  sleep 1
done
