## Resubmission 

This is a resubmission for version 1.9.4 that includes an update to the CRS strings of stale sp data objects, as prompted by a recent email from Roger Bivand (sp maintainer). The micromap maintainer email contact was also updated from <marcusb@sccwrp.org> to <mbeck@tbep.org>.  The individual is the same, but the old email is no longer accessible (message forwarding only).  

## Test environments
* OS X (on travis-ci), R 4.0.2
* local Windows 7 install, R 4.0.2
* Windows install (on AppVeyor), R 4.0.2 Patched (2020-08-24 r79080)
* Win-builder [http://win-builder.r-project.org/](http://win-builder.r-project.org/) (devel and release)

## R CMD check results
There were no ERRORs or WARNINGs.  

There was one NOTE:

* checking CRAN incoming feasibility ... NOTE
Maintainer: 'Marcus W. Beck <mbeck@tbep.org>'

New maintainer:
  Marcus W. Beck <mbeck@tbep.org>
Old maintainer(s):
  Marcus W. Beck <marcusb@sccwrp.org>
  
We are changing the email for the maintainer, see the submission comments.

## Downstream dependencies
None.