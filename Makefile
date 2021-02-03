

#	Variables related to the compiler
CC := g++
C_FLAGS := -Wall -pedantic --std=c++11


#	Variables for the executable name
EXE_NAME = lab2
EXE_PATH := ./$(EXE_NAME)


#	Default recipe
default:	$(EXE_PATH)
	echo Running main executable: $(EXE_NAME) \
	&& echo \
	&& echo "##################################################" \
	&& echo "##################################################" \
	&& echo "##################################################" \
	&& echo \
	&& $(EXE_PATH)


#	Recipe to generate the main executable
$(EXE_PATH):	main.cpp
	echo Building main executable: $@ \
	&& $(CC) $(C_FLAGS) main.cpp -o $@ \
	&& echo Granting execute permissions to the main executable \
	&& chmod +x $@


#	Clean the work area
clean:
	-echo Cleaning \
	&& rm $(EXE_PATH)


