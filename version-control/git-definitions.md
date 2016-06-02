# Git Definitions

**Instructions:** Define each of the following Git concepts.

* What is version control?  Why is it useful?

    It is a system that keeps record of changes to files. This is super useful in a number of scenarios, including:
    * when more than one developers are working on the same project, version control allows a developer to create a new branch of the project and work on a feature there. Once done, the branch can be merged back into the master branch.
    * when you realise that a change may be causing a problem, you can roll it back, regardless of when it was done.

* What is a branch and why would you use one?

   You can at any time set up a new branch which takes a snapshot of the current project. This allows you to work on a feature in this branch, without having to make changes to the master code until you are certain that the feature works. Your changes can be merged back into the main branch when the work is done. Also, you or other developers can work on many branches in parallel.

* What is a commit? What makes a good commit message?

    A commit command records the changes you have made to the repository. Specifically, it records the changes you have already staged (by passing them to the index with git add command).

    A good commit message is a concise statement of what changes you have made, to help your collaborators and your future self to quickly understand what changes you have committed. It starts with verb in imperative tense, e.g., "fix" or "add" instead of "fixed" or "added". To keep it concise, you don't need to establish context. Don't add a punctuation mark at the end.

* What is a merge conflict?

    A merge conflict will occur when merging two branches that both have changes to the same lines. When executing the branch merge, git will notify you of the merge conflict and resolve it by including and highlighting both sets of changes.
