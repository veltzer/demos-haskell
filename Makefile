# parameters
SRC:=$(shell find . -name "*.hs")
ELF:=$(addsuffix .elf,$(basename $(SRC)))
ALL:=$(ELF)

.PHONY: all
all: $(ALL)
	@true

.PHONY: debug
debug:
	$(info SRC is $(SRC))
	$(info OBJ is $(OBJ))
	$(info ELF is $(ELF))
.PHONY: clean
clean:
	@rm -rf $(ALL)

# rules
$(ELF): %.elf: %.hs
	$(info doing [$@])
	@ghc -v0 -o $@ $<
