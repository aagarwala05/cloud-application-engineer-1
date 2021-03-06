## How to complete assignments ##
 * Fork this repository to your GitHub account
 * Clone the repo to your local machine
 * Set up tracking with this repo as upstream
 * Code!
 * Commit changes
 * Push to *your* repository


## When should I commit? ##
If you are stuck, complete a question, or reach a major stopping point!


## How to fork a repository ##
  -> Click 'Fork' button on this pages' upper right
  -> Select your GitHub username


## How to clone this repo ##
<pre>
$ cd directory/i/want/it/to/live/in
$ git clone git@github.com:your_username/cloud-application-engineer-1.git
</pre>


## How to setup tracking ##

Add sunnycloud as the upstream repo
<pre>
$ git remote add upstream git@github.com:sunnycloud/cloud-application-engineer-1.git
</pre>

Grab the latest code from sunnycloud:
<pre>
$ git fetch upstream
</pre>

Bring your fork up to date:
<pre>
$ git rebase upstream/master
</pre>


## To complete assignments: ##

Navigate to the assignment directory
<pre>
$ cd cloud-application-engineer-1/assignments/NUM/
</pre>

Here you'll see the directories broken down by language, depending on the assignemnt:
<pre>
$ ls -alt
drwxr-xr-x 4 kila staff 136 Jun  6 11:23 .
-rw-r--r-- 1 kila staff 531 Jun  6 12:47 ps01.txt
drwxr-xr-x 2 kila staff  68 Jun  6 11:23 scheme
drwxr-xr-x 2 kila staff  68 Jun  6 11:23 ruby
drwxr-xr-x 3 kila staff 102 Jun  6 11:23 ..
</pre>

Problems are found in psNUM.txt

Navigate to the correct directory/sub-directory and...code!

Once finished:

Sanity Check -- are you on the right branch? Are the modified files what you
expect?
<pre>
$ git status
</pre>

Add all modified or new files in the current directory and below
<pre>
$ git add .
</pre>

Commit your changes with a commit message covering your changes
<pre>
$ git commit -m 'Completed PS01#01'
</pre>

Push to origin on branch master
<pre>
$ git push origin master
</pre>


## For rails projects ##
<pre>
$ cd rails_project_name
</pre>

Trust the containing .rvmrc file
You may have to install a new version of ruby:
<pre>
$ rvm install 1.9.2-p180
</pre>
Refresh current directory so rvm can do its thing
<pre>
$ cd .
</pre>

We may be using an already-specified gemset -- this is a sanity check
<pre>
$ gem list
</pre>

If not, and only rake is intalled, install bundler
<pre>
$ gem install bundler --no-ri --no-rdoc
</pre>

Install gems specified in Gemfile
<pre>
$ bundle install
</pre>


## How to run a rails project on your local machine ##

<pre>
$ rails s
</pre>

Navigate to http://localhost:3000 !


## How to install mit-scheme on ubuntu 10.04 ##

<pre>
$ sudo apt-get update
$ sudo apt-get upgrade
$ sudo apt-get install build-essential m4
</pre>

Download the correct pre-compiled binary for your operating system from:
http://www.gnu.org/software/mit-scheme/

and follow the installation instructions (shown here for unix x86-64):
http://www.gnu.org/software/mit-scheme/documentation/mit-scheme-user/Unix-Installation.html

In case the link becomes broken, the steps are:

<pre>
$ tar xzf mit-scheme-VERSION.tar.gz
$ cd mit-scheme-VERSION/src
$ ./configure
$ make compile-microcode
$ make install
</pre>

Note: you may have to run
<pre>
$ sudo make install
</pre>
if you get permission denied errors

then clean up the mess:
<pre>
$ cd ../..
$ rm -rf mit-scheme-VERSION
</pre>

## How to get mit-scheme to play nice with emacs ##

Open emacs and in the minibuffer:

<pre>
M-x customize-group scheme
</pre>

and change:
<pre>
Scheme Program Name: scheme
</pre>
to
<pre>
Scheme Program Name: mit-scheme
</pre>

This will insert elisp code into your .emacs file setting this change. We need
to reload this file so that emacs is aware of our changes:
<pre>
M-x load-file RET ~/.emacs RET
</pre>