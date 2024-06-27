#! /bin/bash
if [ -f log.txt ]; then
	echo "rm old log"
	rm log.txt
fi

if [ -f ../bin/minicc ]; then
for i in 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
do  
	echo -n "S_KO $i :" > buffer.txt
	BUFFER=$(cat buffer.txt) 
	../bin/minicc Syntaxe/KO/test$i.c -s &> buffer.txt
	TEMP=$(echo $(cat buffer.txt)  | cut -d ":" -f 1)
	echo $BUFFER$TEMP >> log.txt

done
echo "test1 OK"

for i in 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
do 
	echo -n "S_OK $i :" > buffer.txt
	BUFFER=$(cat buffer.txt) 
	../bin/minicc Syntaxe/OK/test$i.c -s &> buffer.txt
	RESULT=$(cat buffer.txt)
	if [ -z "$RESULT" ]
	then
		echo -n "Test okay" > buffer.txt
		RESULT=$(cat buffer.txt) 
	else
		RESULT=$(cat buffer.txt)
	fi
	echo $BUFFER$RESULT >> log.txt
done
echo "test2 OK"

for i in 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25
do 
	echo -n "V_KO $i :" > buffer.txt
	BUFFER=$(cat buffer.txt) 
	../bin/minicc Verif/KO/test$i.c  &> buffer.txt
	TEMP=$(echo $(cat buffer.txt) | cut -d ":" -f 1)
	echo $BUFFER$TEMP >> log.txt
done
echo "test3 OK"

for i in 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20
do 
	echo -n "V_OK $i :" > buffer.txt
	BUFFER=$(cat buffer.txt) 
	../bin/minicc Verif/OK/test$i.c -s &> buffer.txt
	RESULT=$(cat buffer.txt) 
	if [ -z "$RESULT" ]
	then
		echo -n "Test okay" > buffer.txt
		RESULT=$(cat buffer.txt) 
	else
		RESULT=$(cat buffer.txt)
	fi
	echo $BUFFER$RESULT >> log.txt
done
echo "test4 OK"

for i in 1 2 3 4 5
do  
	echo -n "G_KO $i :" > buffer.txt
	BUFFER=$(cat buffer.txt) 
	../bin/minicc Gencode/KO/test$i.c &> buffer.txt
	java -jar ../tools/Mars_4_2.jar  out.s &> buffer.txt
	head -n 3 buffer.txt | tail -1 > buff.txt
	TEMP=$(cat buff.txt)
	echo $BUFFER$TEMP >> log.txt
done
echo "test5 OK"

for i in 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
do 
	echo -n "G_OK $i :" > buffer.txt
	BUFFER=$(cat buffer.txt) 
	../bin/minicc Gencode/OK/test$i.c &> buffer.txt
	java -jar ../tools/Mars_4_2.jar  out.s &> buffer.txt
	head -n 3 buffer.txt | tail -1 > buff.txt
	RESULT=$(cat buff.txt) 
	echo $BUFFER$RESULT >> log.txt
done
echo "test6 OK"

rm buff.txt

rm buffer.txt

echo "No test number outputed = No error found in code"
echo "See file \"log.txt\" to see the compiler output error"
diff -a log.txt  results_ref.txt > buffer.txt
BUFFER=$(cat buffer.txt) 
if [ -z "$BUFFER" ]
then
	echo -n "No error found in the compiler"
else
	diff -a log.txt  results_ref.txt
fi
else
	echo "Please create the binary before running tests"
	exit
fi
