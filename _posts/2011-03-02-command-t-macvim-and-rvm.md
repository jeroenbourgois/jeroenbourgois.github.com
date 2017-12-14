---
layout: article
title: Command-t, MacVim and RVM
---

{{ page.title }}
================

<p>Yesterday, I really wanted to try out the Vim "command-t":https://wincent.com/products/command-t plugin to open files fast and smart. But you *need* a vim compiled with ruby support, which the default OSX vim lacks. A good option is to use "MacVim":http://code.google.com/p/macvim, but I ran into a problem, something like:

@command-t.vim could not load the C extension@

After some digging, I found that "RVM":http://rvm.beginrescueend.com was causing the problems. As I found on the CommandT forums, CommandT should be build <span class="label warning"><strong>against exactly the same ruby version</strong></span> as MacVim is build against (which is 1.8.7 for MacVim Version 7.3). So here is what I did:

<script src="https://gist.github.com/851620.js?file=macvim-ruby-rvm.sh"></script>
