!/bash/shell

mkdir c
mkdir d
mkdir z
grep "[Cc]" words.txt > c/sortedwords.txt
grep "[Dd]" words.txt > d/sortedwords.txt
grep "[Zz]" words.txt > z/sortedwords.txt
rm -f words.txt
ls -l
