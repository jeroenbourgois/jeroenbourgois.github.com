---
layout: article
title: Behat and PHP 5.3.5
---

{{ page.title }}
================

Yesterday, I was trying to install "behat":http://behat.org/, a nice BDD framework for PHP. But although following the instructions on their site, I got a "behat command not found" error when trying to run it. So the actual executable could not be found. My system was looking in /usr/local/lib, but not finding a symlink to my homebrew folder for behat specifically. So I just created it myself, and it worked perfectlly :). Here is the symlink:

@ln -s /usr/local/Cellar/php/5.3.5/bin/behat /usr/local/bin/behat@

Hope I can help someone else who has the same problem!
