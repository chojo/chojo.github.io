---
layout: post
title: The 7 Rules for Writing Software That Won’t Die When You Do
description: "Your software is your legacy. It’s up to you to decide how long that legacy lives for."
modified: 2015-02-24
tags: [ux]
image:
  feature: abstract-3.jpg
  credit: dargadgetz
  creditlink: http://www.dargadgetz.com/ios-7-abstract-wallpaper-pack-for-iphone-5-and-ipod-touch-retina/
comments: true
share: true  
---
### Life ends. But software doesn’t have to.
"Let me be perfectly clear, though. It is only rarely possible to follow all of these rules for any given project. I myself am guilty of not following all of them successfully. But the more rules you follow (read: preach), the longer your software will live. At the end of the day, every byte you write adds to the whole ecosystem, and as engineers, our goal should be to keep the software ecosystem as clean as possible."

How close can we get to the perfect godlike login experience in Discourse? That's a noble and worthy goal.
[Read the full article on Medium](https://medium.com/@karan/the-7-rules-for-writing-software-that-wont-die-when-you-do-38ef0a925650) 


### The 7 Rules

1. Modularize: 
Divide up your software across multiple files, or folders, or even projects. Bring all dependencies in one location, follow MVC or some variation.

2. Test: Here’s what will happen when you start testing your code — you’ll start to understand the complexity of your software. You’ll start to learn how to modularize your software into pieces that can be independently tested.

3. Continuous Integration: Continuous Integration (CI) is a development practice that requires developers to integrate code into a shared repository several times a day. Each check-in is then verified by an automated build, allowing teams to detect problems early.

4. Automate common tasks like: 
 * Automated testing (including creating mock servers and/or data, deleting temp files, etc),
 * Stage code to dev server,
 * Deploy to production.
 
5. Redundancy: Use multiple storages for your code like github, bitbucket, dropbox and other mirrors.

6. Commits:
  * Each commit should have a purpose. Is it fixing a bug, or adding a new feature, or removing an existing feature?
  * Only one change per commit. Commit when you solve issue #127, and only that issue.
  * Include issue number in the commit message.
  * Include a description of the change in commit description. This depends on the project contributing guidelines but usually you mention what was causing the bug, and how you fixed it, and how to test the change.
  * Write sensible commit message: fixed cache being reset on every insert caused by missed access after write. fixes #341
  
7. Plan
  * Have a plan ready for the worst case. What will you do when your traffic skyrockets? Where do you pull backups from when the system is down due to an unknown bug? Who would you call in the middle of the night when your server goes down?

  * Think this through. But don’t overthink it. Then automate steps that can be automated.

  * Now document it all. In detail. Make it so anyone acquiring your code also has the plan ready.

  * Not only will having a plan make you seem smarter, it will actually make you smarter.
  
End.

  There’s always a relevant xkcd: http://xkcd.com/844/

![flowchart of writing good code](https://d262ilb51hltx0.cloudfront.net/max/800/1*ldXJND38N7PUecQ-n6_qWQ.png)