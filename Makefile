# This Makefile is used to do i18n relevant chores.
# There are 3 targets(jobs definition) here:
#
# 1. sources.txt
#    When you run `make i18n/sources.txt` at your terminal,
#    the `grep` program will search Gettext related calling recursively under `lib` directory,
#    then sorts these matched file names and puts them to i18n/sources.txt,
#    i18n/sources.txt is required for the `xgettext` program.
#
# 2. messages.pot
#
#    This target extracts translatable strings from given input files(i18n/sources.txt for our case),
#    please learn more details from https://www.gnu.org/software/gettext/manual/html_node/xgettext-Invocation.html

# How to use them? First, run target `i18n/sources.txt`:
#
# ```sh
# make sources.txt
# ```
#
# then run targte `i18n/messages.pot`:
#
# ```sh
# make messsage.pot
# ```
#
# after that you should see `i18n/messages.pot` have been modified (Even have no `msgid` changed, the POT file's timestamp should be updated whatever.)

# By default, Makefile targets are "file targets" - they are used to build files (executable object files) from other files.
# However, sometimes you want your Makefile to run commands that do not represent physical files in the file system.
# For example, extract translatable string over and over. These special target are called "phony", and we explicitly declar with
# `.PHONY` target.
.PHONY: renovate sources.txt messages.pot clean

upstream_repo ?= "https://github.com/renovatebot/renovate.git"
ref ?= $(shell scripts/utils fetch_latest_renovate_release)

renovate:
	scripts/utils clone_renovate $(upstream_repo) $(ref)

sources.txt:
	scripts/utils update_source_txt

messages.pot:
	scripts/utils extract_translable_strings

clean:
	rm -rf renovate
