
include make.inc

#EXTERNAL_LIB_DIRECTORY = /usr/local/lib
EXTERNAL_LIB_DIRECTORY = /usr/local/lib64

BIN_DIRECTORY = /usr/local/bin

install:
	cp ./lib/libfish90.a $(EXTERNAL_LIB_DIRECTORY)
	cp -r ../fishpack90 $(BIN_DIRECTORY)

all: libfish testfish

libfish:
	mkdir -p ./lib
	mkdir -p ./objs
	( cd ./src; $(MAKE) clean; $(MAKE) )

testfish:
	( cd ./test; $(MAKE) clean; $(MAKE) )

clean:
	( cd ./src; $(MAKE) clean; cd ../test; $(MAKE) clean )
