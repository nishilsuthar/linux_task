cd
mkdir testdir
cd testdir
touch file1.txt
touch file2.txt
touch file3.txt
printf "file 1\n line2\n line3\n line4\n line5\n" >> file1.txt
printf "file 1\n line2\n line3\n line4\n line5\n line6\n line7\n line8\n line9\n line10\n" >> file2.txt
printf "file 1\n line2\n line3\n line4\n line5\n line6\n line7\n" >> file3.txt
cat file1.txt
cat file2.txt
cat file3.txt
chmod 444 file2.txt
chmod g=r file3.txt
cat file2.txt file3.txt >> file1.txt
echo "do you want to delete file 2 and file 3?"
read input
if [ $input = "y" ]; then
	rm file2.txt file3.txt
	echo "file2 and file3 are deleted"
fi
cat file1.txt

