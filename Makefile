###################################################################
### Working with variables

# define a variable
DATE_MAKEFILE := $(shell date)

# access environment variables
environment:
	@echo $(USER) $(CFLAGS)

# use variables
variables:
	@echo "Full date: ${DATE_MAKEFILE}"
	@echo "Day:       $(shell echo ${DATE_MAKEFILE} | cut -c 1-3)"


###################################################################
### Defining targets

# run some shell command in a makefile target
run-shell:
	@echo $(shell head -2 README.md)

# target with argument
# to call this target: `make`with-arg ARGS="arg1"` 
with-arg:
	@echo $(ARGS)


###################################################################
### Using a bash function

# define a bash function
define bash_function
	echo " --> do something interesting here"
endef

# export the function 
export bash_function

# target with calls the bash function
set-env:
	@bash -c "$$bash_function";	


###################################################################
## Compiling

compile:
	gcc -o executable main.c