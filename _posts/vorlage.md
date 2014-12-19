---
layout: post
title: Install Node and NPM without sudo
description: "Use one of these techniques to install node and npm without having
to sudo."
modified: 2014-11-22
tags: [Linux]
image:
  feature: abstract-5.jpg
  credit: dargadgetz
  creditlink: http://www.dargadgetz.com/ios-7-abstract-wallpaper-pack-for-iphone-5-and-ipod-touch-retina/
comments: true
share: true  
---

Recently i stuck at an error:"npm ERR! Error: EACCES, mkdir..." and after many
attempts to fix this bug i decided to install node and npm new. This time
without having to sudo:
[Node.js installation](https://gist.github.com/isaacs/579814) 

I use zsh and had to make small modifications for the second one (only-git-all-the-way.sh) :
{% highlight ruby %}

echo 'export PATH=$HOME/node/:$PATH' >> ~/.zshrc.local
. ~/.zshrc.local


{% endhighlight %}

