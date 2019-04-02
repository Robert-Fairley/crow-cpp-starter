OUTPUT_PATH="./bin"
INPUT_PATH="./src"
APPLICATION_NAME="litho"
INCLUDES=-I ./include -I/usr/local/include -I~/homebrew/cellar/boost/1.68.0_1/include
LINKS=-lboost_system

build:
	@echo "Compiling..."
	@make clean
	@mkdir $(OUTPUT_PATH)
	@g++ -std=c++11 $(INCLUDES) $(INPUT_PATH)/main.cpp -o $(OUTPUT_PATH)/$(APPLICATION_NAME)
	@echo "Done."
debug-build:
	@echo "Running debug compile (verbose)..."
	@make clean
	@mkdir $(OUTPUT_PATH)
	@g++ -std=c++11 $(INCLUDES) $(LINKS) $(INPUT_PATH)/main.cpp -o $(OUTPUT_PATH)/$(APPLICATION_NAME) -v
	@echo "Done."

clean:
	@rm -rf $(OUTPUT_PATH)
start:
	$(OUTPUT_PATH)/$(APPLICATION_NAME)

.PHONY: build debug-build clean start
