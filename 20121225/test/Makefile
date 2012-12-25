BIN = test_list
OBJS = test_list.o
CXXFLAGS = -Wall -g -I../src
LDFLAGS = ../src/list.o

.PHONY: all test clean

all:test

test: $(BIN)
	./$(BIN)

$(BIN): $(OBJS)
	g++ $(CFLAGS) $(LDFLAGS) -o $@ $^

%.o: %.cpp
	g++ $(CXXFLAGS) -c -o $@ $<	

test_driver.cpp: test_list.cpp mk_test_driver.sh
	sh ./mk_test_driver.sh $< > $@

test_list.o: test_driver.cpp

clean:
	rm -f *.o $(BIN) test_driver.cpp
