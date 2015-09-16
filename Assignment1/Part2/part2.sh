cp -r ~/NetworkSecurity/Assignment1/Part1/c .
cp -r ~/NetworkSecurity/Assignment1/Part1/d .
cp -r ~/NetworkSecurity/Assignment1/Part1/z .

for char in {z..a}; do 
	mkdir $char
done

echo > reversedwords.txt

for char in {z..a}; do
	cat $char/sortedwords.txt >> reversedwords.txt
done

sort -r reversedwords.txt

#grep "^[zZ]" z/sortedwords.txt > reversedwords.txt
#grep "^[Dd]" d/sortedwords.txt >> reversedwords.txt
#grep "^[Cc]" c/sortedwords.txt >> reversedwords.txt


for char in {z..a}; do
	rm -rf $char
done

