---
layout: article
title: Pharao, create .phar files like a King
---

{{ page.title }}
================

We have a small internal framework, which uses the "Zend":http://framework.zend.com/?src=hpbt framework amongst other stuff. We chose Zend because it is well documented and widespread, and also feature rich. The basic framework (here I mean ??our?? framework) only includes some components of the Zend framework, but when we took a look at the amount of single files, we saw they were plenty!
This has it's impact on *svn checkouts and commits* - time wise - rather than on disk usage.

Besides Zend there was also "Limonade PHP":http://www.limonade-php.net/, which was the basis of our ported version. Both are needed on load, but it would be easier if they could be combined into a single package. That's when @phar@ files come into place.

You can see them as a zip/tar/gzip archive that contains all of the library files. Because it was kind of a hassle to generate one, I had to find some bits and pieces on the net, so I thought I'd collect them into an executable.

You just do:
@pharao -s SOURCE_DIR -p PHARNAME.phar@

And the phar should be generated.

h2. Credits

Big credits to **Cal Evans and John Douglass** for all the code!

h2. Code

All is on "GitHub":https://github.com/jeroenbourgois/pharao and ready to be improved!
