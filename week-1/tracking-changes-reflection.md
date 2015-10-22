**How does tracking and adding changes make developers' lives easier?**

	It helps to know where and when changes were made in case there are bugs or problems with the code.
	This makes it easier to spot those problems and fix them.
	It also makes compiling group projects easier by knowing who changed and what changes were made to the project.

**What is a commit?**

	A commit is like a save point where all the changes to a given project are saved.
	You can go back to that stage of the project anytime if there is a problem or if any changes need to be made again.

**What are the best practices for commit messages?**

	Good commit messages need to have a short and specific heading, kind of like a subject line in an email.
	Your commit descriptions should also be in the present tense in order for others not to get confused with what you commit is actually doing.

**What does the HEAD^ argument mean?**

	The HEAD^ argument means the last commit that was made.

**What are the 3 stages of a git change and how do you move a file from one stage to the other?**

	The first stage is when you are working on the files and making your changes.
	The second stage is getting those changes ready to be commited.
	The third stage is committing all the changes you have made.
	To move them from one stage to the other requires you to make the changes and then "adding" them to be committed with the "git add command".
	That puts the changes on track to be committed.
	Then using the "git commit" command will commit those changes and saves them.
	You also have the option of putting a commit message with your commit to describe the changes made.

**Write a handy cheatsheet of the commands you need to commit your changes?**

	**-git status** To check current git status
	**-git checkout** To navigate through different branches
	**-git add** To add changes to be committed
	**-git commit** To commit the changes made

**What is a pull request and how do you create and merge one?**

	A pull request is taking the commits you have made and submitting them to github where you can see and compare the changes with the master.
	You can create a pull request by going to github and going to the branch and clicking pull request.
	You can them proceed to merge that branch and its changes with the master branch.

**Why are pull requests preferred when working with teams?**

	Pull requests are preferred because it makes it easier for your teammates to see the changes that you or they have made instead of merging the changes automatically with the master branch.