PNAME	:= ppmoctquant
GCC	:= gcc
CFLAGS	:= -Wall
LFLAGS	:= -lm

default: $(PNAME)

$(PNAME): src/$(PNAME).o
	$(GCC) $(CFLAGS) $^ -o $@ $(LFLAGS)

src/$(PNAME).o: src/$(PNAME).c
	$(GCC) -c $(CFLAGS)  $^ -o $@

clean:
	rm -f src/$(PNAME).o $(PNAME)

