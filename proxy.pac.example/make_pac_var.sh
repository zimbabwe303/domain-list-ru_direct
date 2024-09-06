#!/bin/sh

pf="pac_var.txt"
datadir="../data"

echo "domains = [" > "$pf"

files_cnt=$(ls -1 "$datadir" | wc -l)

fn=1
for f in "$datadir"/*
do
  lines_cnt=$(grep -c '.' "$f")
  ln=1
  while read -r domain
  do
    if [ $domain ]; then
      fbn=$(basename "$f")
      if [ $fn -eq $files_cnt ] && [ $ln -eq $lines_cnt ]; then
        printf "  \"$domain\"\t// $fbn\n" >> "$pf"
      else
        printf "  \"$domain\",\t// $fbn\n" >> "$pf"
      fi
    fi
    ln=$((ln+1))
  done < "$f"
  fn=$((fn+1))
done

echo "];" >> "$pf"

