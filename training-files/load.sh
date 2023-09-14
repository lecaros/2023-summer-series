while true; do
  for i in $(seq $2); do
    cat logs/$1.nolog >> logs/$3log.log
  done
  # Wait for 1 second before repeating
  sleep 1
done