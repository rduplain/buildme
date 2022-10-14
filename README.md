# buildme - Use README.md as a literate build tool.

```
Write project README,
use a bit of convention,
run a stable build.
```

## Usage

Download (or vendor) `buildme` with a project having a compatible README,
then `chmod a+x` and add to PATH or call with `path/to/buildme`:

```
buildme README.md
```

Point the `buildme` program at one or more markdown files (they do not have to
be README, and only trusted files). Beyond what's specified in the project
build, the only requirement is Python 3.6+ (2016).

When developing a README, use `buildme --annotate README.md` or `buildme
--export README.md` to review the document structure. The _literate_ approach
will ignore plain language in the document, and it is useful to confirm that
everything parses correctly before running the build.


## Automated Bootstrap

Required:

* `curl`
* `git`
* `python3`

Run:

```sh
Q=https://raw.githubusercontent.com/rduplain/qwerty.sh/v0.8/qwerty.sh
alias qwerty.sh="curl --proto '=https' --tlsv1.2 -sSf $Q | Q=$Q sh -s -"

qwerty.sh --chmod=a+x -o bin https://github.com/rduplain/buildme.git buildme

./bin/buildme README.md
```

<!-- creates: bin/buildme -->


## Core Mechanism

Most of the build components parsed by `buildme` are found in code blocks in a
markdown document or as items in list (ordered, unordered). In order to
identify _which_ elements to use, `buildme` looks for pre-determined
**lead-in** language. For example, a code block prefixed with "Run ...:" (with
various aliases available) is picked up as a build step.

    Run:

    ```
    echo This gets run by `buildme`.
    ```

The line just before the code block identifies it as a script. It starts with a
known lead-in word and ends with a colon, with zero or more words in between.

Other elements like prerequisites (programs required on the PATH), repositories
to clone, or web downloads are formatted as lists.

    Require:

    * `python3`

    Clone:

    * git@github.com:rduplain/buildme.git

    Download:

    * https://raw.githubusercontent.com/.../buildme (SHA256: ...)



## Documentation

* [Problem & Solution](doc/problem.md)
* [Stability](doc/stability.md)


---

Copyright (c) 2022, Rom DuPlain.
BSD 2-Clause License.
