# Typst TTRPG Templates

The repository contains templates for use with
[Typst](https://github.com/typst/typst) - an open source typesetting system. 

The templates are aimed at tabletop RPG adventure or content writers
who want to design good looking printables using a markup language
instead of design software.

If you found this helpful or used one of the templates, simply
give the repository a star if you'd like.

## Contained Within

Take a look at the [examples/out](./examples/out) folder to see how
the end results look.

### Layouts

1. Two sample trifold pamphlet layouts with typographic examples and tables.

### Modules

1. [Typographic utilities](./modules/typography/)
1. [Trifold building blocks](./modules/trifold.typ)
1. [RPG helpers](./modules/rpg.typ)

## Who is this for?

Typst is pretty powerful. It (and similar tools) can allow you to
achieve aestethically pleasing and consistent results quickly, however regular
graphics design software may be more appropriate if your project needs
sophisticated effects, or complex layering and layouts.

This is for you, if:

- You're more comfortable writing markup than using design software.
- You're fine with sacrificing control over the exact layout of the document,
in exchange for easily achieving a high level of consistency.
- You need to create multiple documents in the same style.
- You need to create the same document in different styles or formats.

E.g. one of the custom typography functions I've setup is `#hint`.
I use it to highlight things that are useful information for the
players or GM/DM. The hint will appear the same wherever it's used
(given the text isn't being modified by something else).

One day I decide to change the hint formatting from a simple underline to a
combination of uppercasing and a pink highlight. With typst this is a 5 second
job, no matter how many hints or documents I have. All the documents using the
same typographic settings file just need to be re-exported into your desired
format.

## Quickstart

This guide assumes you have installed typst on your machine, and you can run it
in the command line or terminal using `typst`.

Documentation on how to setup Typst on your
machine can be found on [their github page](https://github.com/typst/typst).

The typography files assume you have the specified fonts installed on your computer.
If you don't - compiling the files may fail.

If you're more technical, you can simply fork and clone the repository using git.
If you don't know what that means, you can download any of the files directly.

### Hints

- `typst --help` for general typst usage help.
- `typst compile --help` for extra compilation parameters.
- `<this is a placeholder>`, it's to indicate that instead of `<this>` you
should write something else.
- Typst can watch a file for edits, allowing you to have a real time preview of
your file in your reader of choice. Various text editors have plugins which can
be installed to enable preview within the editor.

### Creating your own adventure

Typst (.typ) files are plaintext files you can modify in any text editor or the
Typst web editor. They can then be rendered using a simple command.

1. Copy the template you would like to use. If using a filled template, get rid
of things you don't like.
1. Compile using `typst compile <filename>` which will render the file in PDF
format in the same directory as the Typst file, OR will return some errors.

Examples of more elaborate build commands can be seen in
the `justfile` file. That's how the sample documents are made!

### Changing the look of your adventure

Some of the examples start with:

```
#import "/modules/typography/scifi_compact.typ": typography, clue, hint

#show: typography
```

- The first line imports functions for use within the document.
- The second "runs" the typography function on the document, configuring how
the text, headings, tables etc. should look.

You can create a separate file you can use for your settings (by copying one of
the existing ones), or simply ignore the imports and configure things directly
in your adventure file.

Having a separate style or typography file makes it reusable accross different
projects without copy pasting, makes the adventure files less cluttered, and
keeps changes consistent accross multiple target files.
