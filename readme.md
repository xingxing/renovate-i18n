# Renovate I18n

Let's users use Renovate in the language they love, by prower of [GNU gettext](https://www.gnu.org/software/gettext/).

### A Brief of GNU gettext

GNU gettext offers to programmers, translators, and even users, a well integrated set of tools and documentation. Specifically, the GNU gettext utilities are a set of tools that provides a framework to help other GNU packages produce multi-lingual messages.

For more info, please take a look at [GNU gettext utilities](https://www.gnu.org/software/gettext/manual/gettext.html)

#### What are Gettext (PO, POT, MO) files?

POT(short for Portable Object Templelate) files are the template files for PO files. They will have all the translation strings left empty. A POT file is essentially PO file emptied from its translations, with just the original strings.

PO(short for Portable Object) files are the files which contain the actual translations. Each language will have its own PO file.

MO(short for Machine Object) files are are meant to be read by programs, and are binary in nature. But we decided not using this format in Renovate, because they are non-portable.

#### GNU gettext Utilities Need to Care

#### [xgettext](https://www.gnu.org/software/gettext/manual/gettext.html#xgettext-Invocation)

We have marked translatable strings with `gettext` keywords (a series function, e.g. `getttext`, `ngettext`, `pgettext` etc.) in [Renovate](renovatebot/renovate). So we can scan and extract translatable strings from given source files(listed on source.txt for our case), and update the POT file `messages.pot`, by the way, "messages" is the default domain we used.

We can run `gettext` via our Makefile.

```sh
make messages.pot
```

#### [msginit](https://www.gnu.org/software/gettext/manual/gettext.html#msginit-Invocation)

You are ready to translate your own edition when you have the POT file (`messages.pot` for this repository).

The `msginit` program creates a new PO file, initializing the meta information with values from the user's environment.

The translation job should be decentralized, you deserve a edition you like.

Check my [demonstrational repository](https://github.com/xingxing/renovate-i18n-zh-cn) for zh_CN.

#### [msgfmt](https://www.gnu.org/software/gettext/manual/gettext.html#msgfmt-Invocation)

The `msgfmt` programs generates a binary message (MO files) catalog from a textual translation description.

We can use this file to check POT and PO whether is well-format.
