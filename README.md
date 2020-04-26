# listfiles-crystal
Crystal practice using external files - List files in specified directory

Compile:
$ crystal build src/listfiles.cr

Running: 
$ ./listfiles -h
Usage: listfiles [arguments]
    -d PATH, --dir=PATH              Specifies the directory to list files
    -h, --help                       Show this help

$ ./listfiles 
#<Dir:/home/user/src/crystal/listfiles-crystal> contents:
  .git
  .gitignore
  LICENSE
  README.md
  lib
  src