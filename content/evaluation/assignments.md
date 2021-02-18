---
title: "Assignments"
---

This page is your hub for information related to course assignments. 

## Schedule

The table below gives deadlines for assignments. Links to the assignments will
appear after the assignment is posted.

|  Assignment   | Topic                       |
|---------------|-----------------------------|
| [Assignment 01](/evaluation/hw01/hw01) | Github, Markdown |
| [Assignment 02](/evaluation/hw02/hw02) | _dplyr_, _ggplot2_ |
| [Assignment 03](/evaluation/hw02/hw03) | Green behavior and personality report |

<!--
| Assignment | Data exploration report     |
| Assignment | Wrangle those data!         |
| Assignment | Project organization        |
| Assignment    | Factors and plotting        | 
| Assignment    | Modeling fitting, _purrr_   | 
| Assignment    | Simulating data             | 
| Assignment    | Weird data structures       | 
| Assignment    | Prepare and clean a dataset | 
-->

When a new assignment is posted, I'll give a message in Teams as well.

All assignments are due by 23:59 Monday. 
[Peer code reviews](/evaluation/peer-review) are then due by 23:59 Tuesday. 
Final revisions to assignments are due by 23:59 Wednesday. 

You don't necessarily need to have completed the assignment by the Monday due date, but this will limit your ability to benefit from your peer reviews. 
Please respect your peers' time by providing them as complete a product as possible to review. 


## Setting up your homework repository

You will each create a single homework repository using GitHub Classroom where you will submit each of your assignments for the semester.

To create the repository, follow [this link](https://classroom.github.com/a/bUKffmtV) and follow the instructions. 
Your homework repository will be created for you in the [usf-progdata](https://github.com/usf-progdata/) Organization under the name `hw-<your username>`. 
You only have to do this once.

FYI: This repository is public.


## Working on your homework

When you begin working on an assignment, create a new [branch](https://help.github.com/en/github/collaborating-with-issues-and-pull-requests/creating-and-deleting-branches-within-your-repository) in your homework repository. 
Give this branch a useful name (e.g., `hw01`). 
Work on drafts of your assignments in this branch. 
This will help to facilitate peer code review (see below).

As you work on your assignment, you should commit and push your progress to GitHub. As a word of advice:

**Commit your work often!**

**Commit your work often!**

**Commit your work often!**

Very often, I see folks wait until they finish an assignment or big chunk of work to commit and push to GitHub. This is a very bad idea because if you make a change that breaks something, you won't be able to go back and isolate when the breakage happened. That's the value of **version control**.
   
   
## Submitting your homework

### Monday submission

First you are going to make your assignment available for peer review:

1. Commit and push your work to your GitHub homework repository.
2. Create a [pull request](https://help.github.com/en/github/collaborating-with-issues-and-pull-requests/creating-a-pull-request) from your homework branch to the `master` or `main` branch in your homework repo.
3. Request code reviews from your two assigned reviews by adding tagging their usernames with `@`.
4. Your classmates will review your code. 
5. After they have reviewed your code, make any additional changes in response to their reviews or otherwise.
6. Once you have completed your revisions, [merge](https://help.github.com/en/github/collaborating-with-issues-and-pull-requests/merging-a-pull-request) your pull request back into your `master` branch.
   
### Wednesday submission

1. Merge your homework branch back into your `master` branch if you haven't already.
2. In Teams, submit a link to your repository.

## Grading

I will review each assignment on GitHub and provide you comments. 

## Tidy submission

Before submitting your work, make sure it's tidy:

- After the first assignment, each assignment should be self-contained in a folder within your homework 
  repo.
- Your work must be reproducible from beginning to end. That is, I must be able
  to run all code error-free and reproduce the output files. 
- Your scripts must not contain code that _installs_ packages (this is not good 
  practice anyway).
    - Note that this is different from loading packages with the `library()` function, which is good and necessary!
- All RMarkdown files are `knit`ted to a readable output. This means knitting to `github_document` (and optionally HTML).
    - Later on in the semester, we will also knit to HTML and set up a webpage for them.
    
    

<!--

In addition, you should link to the HTML files in the README file for the week's assignment folder (see 
  the section on "Viewing and linking to HTML files").
  
## Viewing and linking to HTML files

Viewing an HTML file on GitHub only shows you the HTML code, not the rendered 
script. You'll need to provide a link to a rendered, viewable version of each 
HTML file you produce. Here's how you do that using [GitHub Pages](https://pages.github.com/):

1. Enable "GitHub pages" on your repo:
    - Go to "Settings" on your repo and stay on the default "Options" tab.
    - Scroll down to the "GitHub Pages" section.
    - Under "Source", click the "None" drop-down button, and select the branch 
      you want to turn into a website (probably "master").
      
2. Also under the "GitHub Pages" section, you'll find your website URL. Make 
   note of this URL.
   - This URL will show a rendered version of your repo's README, but this is not 
	   important.
   - Just by enabling GitHub Pages, your HTML files are now viewable rendered by 
     your browser. Technically, you just turned your GitHub repo into a website. 
     The only trick is _navigating_ to that HTML page, since there's no default 
     _interface_ to your website.

3. Obtain the URL to HTML file on your repo:
   - Start with your GitHub Pages URL that you made note of in Step 2. This points to the root of your repository. 
   - Get the path to an HTML file you want to view. It should be something like 
     `/path/to/file.html` (in this case, `file.html` lives in the `to` folder, 
     which lives in the `path` folder in the root of your repo). 
   - Append the path to the HTML file to the end of your GitHub Pages URL. Try 
     the URL to see that it works.
     
4. Make it easy for a visitor to your repo to find the rendered HTML file! Add a 
   link to the rendered HTML file somewhere in your repo, probably in a `README` 
   file in your homework folder.
   
-->
