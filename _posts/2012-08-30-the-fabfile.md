---
layout: article
title: The Fabfile
---

{{ page.title }}
================

Since a couple of projects I have been using a neat little tool to manage my deployments: "Fabric":http://docs.fabfile.org/en/1.4.3/index.html
As the site states, Fabric is:

> Fabric is a Python (2.5 or higher) library and command-line tool for streamlining the use of SSH for application deployment or systems administration tasks.

It really does it's job well, and with minimal setup effort. So now all I do is @fab deploy and my remote server pulls the latest version from my bitbucket git repo, restarts the upstart task and voila: new version online!

I think I should investigate Fabric a bit more, as I feel it has more power than just a mere deploy. Great stuff!
