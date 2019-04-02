OUTPUT_PATH="./bin"
DEBUG_OUTPUT_PATH="./debug"
INPUT_PATH="./src"
APPLICATION_NAME="crow-server"
INCLUDES=-I ./include -I/usr/local/include -I~/homebrew/cellar/boost/1.68.0_1/include
LINKS=-lboost_system

build:
	@echo "Compiling..."
	@make clean
	@mkdir $(OUTPUT_PATH)
	@g++ -std=c++11 $(INCLUDES) $(LINKS) $(INPUT_PATH)/main.cpp -o $(OUTPUT_PATH)/$(APPLICATION_NAME)
	@echo "Done."
debug-build:
	@echo "Running debug compile (verbose)."
	@echo "Outputing logs to "$(DEBUG_OUTPUT_PATH)"/build-log.txt"
	@make clean
	@mkdir $(DEBUG_OUTPUT_PATH)
	@g++ -std=c++11 $(INCLUDES) $(LINKS) $(INPUT_PATH)/main.cpp -o $(DEBUG_OUTPUT_PATH)/$(APPLICATION_NAME) -v 2> $(DEBUG_OUTPUT_PATH)/build_log.txt
	@echo "Done."
clean:
	@rm -rf $(OUTPUT_PATH) $(DEBUG_OUTPUT_PATH)
start:
	$(OUTPUT_PATH)/$(APPLICATION_NAME)
debug-start:
	$(DEBUG_OUTPUT_PATH)/$(APPLICATION_NAME)

.PHONY: build debug-build clean start debug-start
