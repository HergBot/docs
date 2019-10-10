# GitHub Labels
For development I have come up with a series of custom labels that will be used to track issues. These labels come in two categories:

### 1. States
This will determine the state in the development process the issue is in. This state will change over time as the issue is worked on. This is useful because it will allow you to filter based on state to see what issues are currently in a particular state. This will be helpful when you are looking to do a certain type of work. For example,
- You can filter on "needs info" if you want to send out a bunch of emails to clients to gather information
- You can filter on "analysis" if you want to do some design work

Label | Description | Colour
--- | --- | ---
abandoned | This issue has been abandoned and is no longer applicable. | #000000 (Black)
analysis |This is where issues start. They need to be flushed out and need complete instructions/info before moving on. This state should have no outside interference. | #FFFF00 (Yellow)
blocked | This is when an issue is blocked internally by another issue or decision. This state may mean it will go back into planning or move on to ready once it is unblocked. | #696969 (Grey)
needs info | This is when an issue needs information from an external source. This state may mean it will go back into planning or move on to ready once the information is obtained. | #C1133E (Light Maroon)
ready | This issue is complete and ready for development. | #008000 (Green)
development | This issue is in active development. | #0000FF (Blue)
review | This issue is completed and needs to be tested/reviewed before being released. This will be useful when features are being merged into develop and then we can quickly check what will be merged to master in a PR. | #5119E7 (Purple)
done | This issues is completed and has been released. | #FFFFFF (White)


### 2. Types
This will determine the type of an issue. This will not change over time (unless it is mislabeled). This is useful because it allows you to categorize issues based on type of work. This will also be helpful when you are looking to do a particular type of work. For example,
- You can filter on "task" if you are looking to do something other than development
- You can filter on "bug" if you are looking to crush some bugs quickly

Label | Description | Colour
--- | --- | ---
bug | A bug found in an existing part of the project. | #FF0000 (Red)
feature | A new addition to the project that requires programming/design. | #00FF00 (Lime)
refactor | A change to an existing, functional part of the project to improve it. | #00FFFF (Light Blue)
task | A task that needs to be completed outside of programming/design. | #FF8800 (Orange)
documentation | A piece of documentation that needs to be written. | #FF00FF (Pink)



