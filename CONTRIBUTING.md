How to contribute to the micromap package
================================

### Bugs or Questions?

* Submit an issue on [the Issues page](https://github.com/USEPA/R-micromap-package-development/issues)

### Contributions
Please use these workflows for contributing to the micromap package.

If you are contributing for the **first time**:

* Fork this repo to your Github account
* Clone your version on your account down to your machine from your account, e.g,. `git clone https://github.com/<yourgithubusername>/R-micromap-package-development.git`
* All changes and pull requests should be made on the development branch. Setup tracking for the remote development branch on your account with `git branch development origin/development`.
* Progress upstream shoalso be tracked (i.e., on our version of `R-micromap-package-development` at `USEPA/R-micromap-package-development`) by doing `git remote add upstream https://github.com/USEPA/R-micromap-package-development.git`. 
* Checkout the development branch on your local machine with `git checkout development`.  The master branch will be stable until a new version is pushed to CRAN.
* Make any changes or additions on your local version to the development branch.  If you are adding a new function, or changing functionality of a function, include new tests, and make sure those pass before submitting the pull request (PR).
* Push up to your account using `git push origin development`.
* Submit a pull request to the development branch at `USEPA/R-micromap-package-development`

If you have **already contributed**:

* Checkout the development branch on your local machine with `git checkout development`
* Before making changes make sure to pull changes from the development branch upstream by doing either `git fetch upstream development` then merge later or `git pull upstream development` to fetch and merge in one step.
* Make any changes or additions on your local version to the development branch.  If you are adding a new function, or changing functionality of a function, include new tests, and make sure those pass before submitting the pull request (PR).
* Push up to your account using `git push origin development`.
* Submit a pull request to the development branch at `USEPA/R-micromap-package-development`

###Note
Contents of this file were blatantly copied from the EPA [R-User-Group](https://github.com/USEPA/R-User-Group), which were in turn blatantly copied from [rOpenSci](https://github.com/rOpenSci) and @sckott.