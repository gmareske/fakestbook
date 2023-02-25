OUTPUT_DIR:=output
SONG_DIR:=songs
BOOK_TOPLEVEL:=book
SINGLE_TOPLEVEL:=single

# compiles a single song into a subdirectory of the output directory
$(OUTPUT_DIR)/$(SONG_DIR)/%.pdf:
	lilypond -lERROR -o $(basename $@) --evaluate='(define-public fb:single-file "$(SONG_DIR)/$(basename $(notdir $@)).ly")' $(SINGLE_TOPLEVEL).ly

# compile the whole book from the topleve
.PHONY: book
ifndef $(KEY)
book:
	lilypond -lERROR -o $(OUTPUT_DIR) $(BOOK_TOPLEVEL).ly 
endif
# clean up
.PHONY: clean
clean:
	rm  -rf $(OUTPUT_DIR)/*
	mkdir $(OUTPUT_DIR)/songs

