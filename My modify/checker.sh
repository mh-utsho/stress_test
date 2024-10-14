# Compile the files and directly place executables in FOLD
#This is my code 
g++ Mycode.cpp -o FOLD/runn
#this is bruteForce code
g++ brute.cpp -o FOLD/bruteForce


g++ randomGe.cpp -o FOLD/randomGe

for ((i = 1; ; ++i)); do
    ./FOLD/randomGe $i > FOLD/InputFile
    ./FOLD/runn < FOLD/InputFile > FOLD/OutputFile
    ./FOLD/bruteForce < FOLD/InputFile > FOLD/bruteOutput
    
    # Compare OutputFile and bruteOutput
    diff -w FOLD/OutputFile FOLD/bruteOutput || break
    echo "Passed test: " $i
done

echo -e "\nWA on the following test:"
cat FOLD/InputFile
echo "Your answer is:"
cat FOLD/OutputFile
echo "Correct answer is:"
cat FOLD/bruteOutput
