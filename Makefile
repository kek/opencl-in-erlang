all: complex6_nif.so complex6.beam

complex6_nif.so: complex6.c complex6_nif.c
	gcc -o complex6_nif.so -fpic -shared complex6.c complex6_nif.c

complex6.beam: complex6.erl
	erlc complex6.erl

.PHONY: clean

clean:
	rm complex6_nif.so complex6.beam

.PHONY: run

run: all
	erl -pa . -eval 'complex6:f().'
