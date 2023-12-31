ifeq ($(ZETTAI_INTERP),)
$(error ZETTAI_INTERP must be set)
endif

.PHONY: functest
functest:
	cram **/*.t
