build:
	mkdir build
	cobc CPF.cbl -o ./build/CPF.so -O2
	cobc TEST.cbl -o ./build/TEST.so -O2
run:
	cobcrun -M ./build/ TEST

clean:
	rm -r ./build
