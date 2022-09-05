# buildme - Problem & Solution

## Problem

Traditions in building software from scratch:

1. Require a toolchain.
2. Automate with custom scripts.
3. Stuff shell scripts into yet another markup language.

Each has its issues:

1. Does the OS package the toolchain?
   How many additional downloads are required?
   Are they versioned?
   Are they stable?
2. A Makefile and a shell script address each of these problems but for any
   nontrivial project becomes a collection of recipes and functions calling
   each other (cyclomatic complexity), with syntax issues and line noise
   compromising readability.
3. Shell inside markup has the same tangling problem as (2), now requiring some
   other tool (1) to run the build.

Cynically:

1. Semantic versioning is undefined when expecting programmers to have
   pre-existing, loosely defined, "latest and greatest" tools.
2. Reasoning about a make/shell build requires a distinct mindset from
   reasoning about the problem or the program.
3. The same reasoning problem (2), twice removed, pinned to yet-another tool
   (1), one that is often proprietary or is a cloud service without a local
   counterpart.


## Solution

Build instructions are everywhere. Projects, docs, and online articles step
through command-line examples and development environment details. These are
executable by an experienced human, and with just a bit of natural language
convention it could be executable by machine. The documentation is already in a
structured text format in many cases.

The `buildme` project introduces a document parser for markdown, looking for
pre-determined lead-in words (see "Core Mechanism" in the project
[README](../README.md#core-mechanism)), to indicate list items and code blocks
that contain build components.

Components parse into a hierarchical data model, which informs how to execute
the build.

Technically, this solution is defined by approach (3) in the _Problem_ section
above, but addresses its issues:

* READMEs conventionally provide instructions on how to start the build;
  parsing the README as a build definition makes use of a natural, preexisting
  activity.
* While markdown is markup, dropping a block of code into a README verbatim is
  straightforward whereas having to refactor a script line by line into a
  text-formatted data structure incurs cognitive overhead, doubly so when
  maintaining it over time.
* The tool running the build (`buildme`) is open-source, a single file, able to
  run locally, able to run in continuous integration (by virtue of being able
  to run locally), has minimal dependencies (already or easily installed), and
  encodes stability into its design.

Intermix approaches (1) and (2). Do some basic checks of the development
environment, download tools and data, and start the build using traditional
tools. The goal of `buildme` is to provide a means to bootstrap a project, to
get up and running faster, to maintain top-level integration in plain sight, to
achieve a workflow that takes a clean repository to a working build in just one
command.

Improve documentation along the way.
