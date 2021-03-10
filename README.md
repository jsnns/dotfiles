# Command Documentation

# Project Management

Manages projects in ~/Projects

`mk <dir_name>`

Create directory and enter it

`@go <project_path>`

Change working directory to ~/Projects/<project_path>

`@push <project_path> <branch_name>`

Push specified branch to origin

`@new <project_path>`

Create a new project at the specified path

### Opts

`--gitlab <project_path>`

Attempts to clone repository from git@gitlab.com:`<project_path>`

`--github <project_path>`

Attempts to clone repository from git@github.com:`<project_path>`

# Utilities

`dotbash <file_name>`

Opens dotfile for editing

`run <path>`

Executes `run` executable in specified path

`runable <command>`

Makes current directory execute `<command>` when run with `run <path>`

`labs`

Launches jupyter labs instance