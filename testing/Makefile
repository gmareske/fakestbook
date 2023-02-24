OUTPUT_DIR:=output
SONG_DIR:=songs
BOOK_TOPLEVEL:=book
SINGLE_TOPLEVEL:=single

# compiles a single song into a subdirectory of the output directory
$(SONG_DIR)/%.ly:
	lilypond -lERROR -o $(OUTPUT_DIR)/$(SONG_DIR) $@ 

# compile the whole book from the topleve
.PHONY: book
book:
	lilypond -lERROR -o $(OUTPUT_DIR) $(BOOK_TOPLEVEL).ly 

# clean up
.PHONY: clean
clean:
	rm $(OUTPUT_DIR)/*
