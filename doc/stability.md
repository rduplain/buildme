# buildme - Stability

## Minimal Dependencies

* Start with POSIX (no later than 2008, SUSv4).
* Keep the project to a single download for all CPU architectures.
* Require Python only.
  - Well-known.
  - Readily installed.
  - Extensive standard library.
  - Increasingly making its way into the builds of many non-Python projects.


## Project Stability

* A README can always expect the latest `buildme` release to work as expected.
  - Every release is backward compatible; no exceptions.
  - Mainline version control only contains versioned releases.
  - Release as a single file with no requirements.
    + Beyond the interpreter, CPython.
    + If a release drops the CPython requirement, it will not introduce a new
      requirement in its place.
* [Semantic Versioning 1.0.0][semver] is enforced by `buildme`.
  - Major version is strictly enforced.
    + Minor version generally indicates fixes and improvements.
    + Patch version has little consequence and is optional.
  - A README can specify its minimum major version; `buildme` will stop
    execution upon parsing and before running the buil if it cannot meet the
    version requirement.
  - A backward-incompatible change is defined as:
    + A README cannot specify the same minimum major version as another and use
      _any_ feature that wasn't available to the other README.
    + A command-line flag never changes.
    + No exceptions.
* Use no feature newer than five and a half years old.
  - 2,000 days.
  - Interpret as "nothing after 2016" for as long as feasibly possible.

Whenever these cannot be met, start a new project.

[semver]: https://semver.org/spec/v1.0.0.html
