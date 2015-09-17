cp -r ~/NetworkSecurity/Assignment1/Part1/a .
cp -r ~/NetworkSecurity/Assignment1/Part1/b .
cp -r ~/NetworkSecurity/Assignment1/Part1/c .
cp -r ~/NetworkSecurity/Assignment1/Part1/d .
cp -r ~/NetworkSecurity/Assignment1/Part1/e .
cp -r ~/NetworkSecurity/Assignment1/Part1/f .
cp -r ~/NetworkSecurity/Assignment1/Part1/g .
cp -r ~/NetworkSecurity/Assignment1/Part1/h .
cp -r ~/NetworkSecurity/Assignment1/Part1/i .
cp -r ~/NetworkSecurity/Assignment1/Part1/j .
cp -r ~/NetworkSecurity/Assignment1/Part1/k .
cp -r ~/NetworkSecurity/Assignment1/Part1/l .
cp -r ~/NetworkSecurity/Assignment1/Part1/m .
cp -r ~/NetworkSecurity/Assignment1/Part1/n .
cp -r ~/NetworkSecurity/Assignment1/Part1/o .
cp -r ~/NetworkSecurity/Assignment1/Part1/p .
cp -r ~/NetworkSecurity/Assignment1/Part1/q .
cp -r ~/NetworkSecurity/Assignment1/Part1/r .
cp -r ~/NetworkSecurity/Assignment1/Part1/s .
cp -r ~/NetworkSecurity/Assignment1/Part1/t .
cp -r ~/NetworkSecurity/Assignment1/Part1/u .
cp -r ~/NetworkSecurity/Assignment1/Part1/v .
cp -r ~/NetworkSecurity/Assignment1/Part1/w .
cp -r ~/NetworkSecurity/Assignment1/Part1/x .
cp -r ~/NetworkSecurity/Assignment1/Part1/y .
cp -r ~/NetworkSecurity/Assignment1/Part1/z .

#for char in {z..a}; do 
#	mkdir $char
#done

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

