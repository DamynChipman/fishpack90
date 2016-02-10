
include make.inc

all: libfish testfish

libfish:
	mkdir -p ./lib
	mkdir -p ./objs
	( cd ./src; $(MAKE) clean; $(MAKE) )

testfish:
	( cd ./test; $(MAKE) clean; $(MAKE) )

install:
	cp ./lib/libfish90.a $(EXTERNAL_LIB_DIRECTORY)
	cp -r ../fishpack90 $(BIN_DIRECTORY)

clean:
	( cd ./src; $(MAKE) clean; cd ../test; $(MAKE) clean )
