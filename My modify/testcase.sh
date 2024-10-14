# Compile the files and directly place executables in FOLD
g++ A.cpp -o FOLD/Aout
g++ randomGe.cpp -o FOLD/randomGeT

# Run the test cases inside FOLD
for ((i = 1; i < 11; ++i)); do
    # Generate InputFile and OutputFile inside FOLD
    ./FOLD/randomGeT $i > FOLD/InputFileT
    ./FOLD/Aout < FOLD/InputFileT > FOLD/OutputFileT
    
    # Print input and output details
    echo "Input case no :" $i
    cat FOLD/InputFileT
    echo "-------------"
    cat FOLD/OutputFileT
    echo -e "\n___________________________________________________________________________"
done
