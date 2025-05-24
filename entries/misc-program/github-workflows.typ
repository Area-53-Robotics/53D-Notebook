#import "/template/template.typ": *

#show: create-entry.with(
  title: "GitHub Workflows",
  type: "program",
  date: datetime(year: 2024, month: 8, day: 3),
  attendance: ("Ishika", "Makhi", "Rory", "Eric"),
  designed: "Ishika",
  witnessed: "Ishika",
)

#to-do(
  date: datetime(year: 2024, month: 8, day: 3),
  monthly-schedule: "On",
  yearly-schedule: "Ahead",
  (
    (true, "Configure GitHub workflows for our program repositories", ("Ishika",)),
  )
)

While our team's builders were building the drivetrain, our programmers used the available time to streamline our usage of GitHub repositories. #glossary-footnote[Repository] We determined that we can do this by using GitHub workflows, which can be used to automate tasks after commits (changes) are made to a repository.

#admonition(type: "identify", title: "Sub-Identify: GitHub Workflows")[
  Some aspects of our GitHub repositories that we wanted to automate are:
  - Checking whether the new version of a program that has been committed to the repository is error-free
  - Automatically uploading the new version of the digital notebook to GitHub and to Discord when changes are made
  - Automatically performing spell checks on the notebook when changes are made
]

= Robot Code Compilation Workflow
A potential problem we wanted to avoid was that when a programmer makes a change to the robot program and pushes it to the repository, they may forget to check for compilation errors in the program. This can slow down work when another programmer downloads the changes to their computer and are not able to find the source of the error. This type of miscommunication can be especially dangerous during high stress situations such as competitions.

We solved this problem by creating a workflow that tests if the program compiles without errors. The workflow creates a Linux virtual machine that attempts to build the code in the ```53D_HighStakes``` repository.
- If the build succeeds, we will get a success message and no further steps are taken
- If the build fails, we can access the error messages through GitHub and appropriately fix the problem

Here is the final workflow code:

#colbreak()

#code-header[.github/workflows/pros-build.yml]
#raw(block: true, lang: "yml", read("github-workflows/pros-build.yml"))

When the workflow succeeds, we get a message in our Discord that looks like this:

#image("github-workflows/pros-build-message.png")

= Digital Notebook Compilation Workflow
One major disadvantage of writing our notebook using Typst #glossary-footnote[Typst] instead of doing it on a platform such as Google Slides is that the members on our team who do not have easy access to the notebook's GitHub repository cannot access the digital notebook on demand.

To solve this, we created a GitHub workflow that compiles the notebook when changes are made to it and uploads it to both GitHub and Discord. The notebook getting uploaded to GitHub and Discord gives us a few benefits:
- Discord is a cross-platform application, so the digital notebook can be accessed by anyone on our team, at any time, on most devices, including phones, tablets, and laptops.
- Team members can reference the notebook whenever they need to, such as being able to cross-reference the CAD designs when rebuilding a subsystem or replacing a part.
- We now have a contingency copy of the notebook saved to GitHub if anything were to happen to the printed physical version.

Here is the final workflow code:

#align(center)[*53D-High-Stakes-Notebook/.github/workflows/build.yml*]
#raw(block: true, lang: "yml", read("github-workflows/build.yml"))

When the workflow is completed, the notebook can be downloaded from our Discord by team members from a message that looks like this:

#image("github-workflows/notebook-build-message.png", width: 400pt)


= Digital Notebook Spell Check Workflow
The last problem that we addressed using GitHub workflows is spell checking the notebook. Because our notebook is written in Typst, a lot of the writing is done in VSCode,#glossary-footnote[Visual Studio Code] which does not have easy access to spell checks. To spell check changes made to the notebook, we used a spell check workflow action called Typos. #footnote[The Typos GitHub repository can be found at https://github.com/crate-ci/typos] Typos is far from perfect and leaves unaddressed mistakes sometimes, but it is better than having nothing.

#colbreak()

Here is the final workflow code:

#code-header(main: false)[53D-High-Stakes-Notebook/.github/workflows/typos.yml]
#raw(block: true, lang: "yml", read("/.github/workflows/typos.yml"))

When the workflow is completed, if there is are no detected spelling errors in the notebook, a workflow success message will be sent to our Discord that looks like this:

#image("github-workflows/notebook-spelling-message.png", width: 330pt)