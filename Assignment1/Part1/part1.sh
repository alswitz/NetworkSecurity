for char in {a..z}; do
        mkdir $char
done

for char in {a..z}; do
	cat words.txt | grep "^[$char]"
done
 
#cat words.txt | grep "^[Cc]" words.txt > c/sortedwords.txt
#cat words.txt | grep "^[Dd]" words.txt > d/sortedwords.txt
#cat words.txt | grep "^[Zz]" words.txt > z/sortedwords.txt
#rm -f words.txt
#ls -l
