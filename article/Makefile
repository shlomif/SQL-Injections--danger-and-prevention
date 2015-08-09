FILE = sql-injections.html

SRC_FILE = $(FILE).wml
WML_FLAGS += -I$${HOME}/apps/wml/shlomif-html-article-template/
WML_FLAGS += --passoption=2,-X3074 --passoption=3,-w

all: $(FILE)

$(FILE) : $(FILE).before postproc.pl
	perl postproc.pl -o $@ $<

$(FILE).before : $(SRC_FILE)
	wml $(WML_FLAGS) -o $@ $<

EXTRA_FILES = TODO DONE

DEST_URL = $${HOMEPAGE_SSH_PATH}/sql-injections-Mj67yyUUobgrew/

upload: $(FILE)
	rsync --rsh=ssh -v --progress -a $(FILE) $(EXTRA_FILES) $(DEST_URL)

upload_src: $(SRC_FILE)
	rsync --rsh=ssh -v --progress -a $(SRC_FILE) $(EXTRA_FILES) $(DEST_URL)

