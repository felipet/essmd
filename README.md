# ESS Markdown template for simple documents

Despite some fancy LaTeX [templates] already exists to write documents with an
ESS styling, sometimes I feel more comfortable just typing with the easy 
Markdown syntax. For those that just want to write something simple without not 
worry about the format, this is your template.

## How it works

Markdown is simple but it doesn't mean we are stucked in boring documents 
without format. This template makes use of **Pandoc** to build LaTeX which will 
generate the ending PDF file.

The file _template.tex_ provides the structure of the final documents, meanwhile
all the Markdown files provide the text of the document. Then, **Make** is used 
to ease the compilation.

## System requirements

In order to compile the sources **Pandoc** and **Make** are needed. LaTeX 
support is also needed. By default **XeLaTex** is set by default as LaTeX 
compiler, but it may be replaced if needed just modifying the _Makefile_.

For Ubuntu based distributions:
~~~
sudo apt install pandoc texlive-full
~~~

## Usage

A regular user should not need to modify the LaTeX template (hence know LaTeX).
Some important metadata is taken from the file _docinfo.txt_. Just go there 
and modify the content of the already defined variables.

Then write your Markdown source files and list them into the file _index.txt_. 
Only the source files included into this file will be used for the compilation.

Finally type **make** and enjoy!

## Contributions

Feel free to suggest improvements to the template.

- Felipe Torres González
- torresfelipex1@gmail.com
- felipe.torresgonzalez@esss.se


[templates]:https://github.com/icshwi/esstex
