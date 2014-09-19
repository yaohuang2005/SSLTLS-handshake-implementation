CC			= g++
CFLAGS		= -c -g  -Wall
LDFLAGS		= -lpthread -lpcap -lm

SOURCES 	= $(wildcard *.cpp)
INCLUDES	= -I.

OBJECTS		= $(SOURCES:.cpp=.o)
TARGET		= sslclient

all: $(SOURCES) $(TARGET)

$(TARGET): $(OBJECTS) 
	$(CC) $(LDFLAGS) $(OBJECTS) -o $@

.cpp.o:
	$(CC) $(CFLAGS) $(INCLUDES) $< -o $@

clean:
	rm -rf $(OBJECTS) $(TARGET)

#SOURCES		= main.cpp thread.cpp
# cXX=clang++
# CXXFLAGS=-g -std=c++11 -Wall -pedantic
# BIN=prog

# SRC=$(wildcard *.cpp)
# OBJ=$(SRC:%.cpp=%.o)

# all:  $(OBJ)
#	$(CXX) -o $(BIN) $^

# %.o: %.c
#	$(CXX) %@ -c $<

# clean:
#	rm -f *.o
#   rm $(BIN)
