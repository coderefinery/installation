CodeRefinery workshop software installation instructions
========================================================

In CodeRefinery workshops, we will use a number of tools and services. For the
best learning outcome, please make sure that you have all the required software
available in the computer that you will use during the workshop.


.. note::

   If you are using a university-managed computer from the following universities, please follow specific instructions:

   - `Aalto University <https://scicomp.aalto.fi/aalto/coderefinery-setup/>`__


Step 1: Go through the checklist and make sure all items are ready
------------------------------------------------------------------
First, go through all the items in the check list below. If you are in doubt or
your answer is "no", then follow the guideline shown in a linked page for each.
If your answers are all "yes", then go to :ref:`conda-environment`.

.. keypoints:: Checklist

  *I have ...*

  - Shell terminal (Bash or Zsh) and Git configured (user name, email, and editor) and verified
    (:ref:`instructions <shell-and-git>`)
  - Relatively new version of Miniconda3 (less than 3 years old)
    (:ref:`instructions <conda>`)
  - Terminal shell (Git Bash on Windows, Bash or Zsh on macOS and Linux) from
    which I can use ``conda`` (try typing ``conda --version``). Note that the
    Anaconda terminal is not enough since it does not provide the "Nano" editor
    and some commands may be different
    (:ref:`instructions <setting-conda-path>`)
  - GitHub account, best with 2-factor authentication (2FA) activated. 2FA is not
    strictly needed for the course but highly recommended to keep your account
    secure
    (:ref:`instructions <github>`)
  - SSH connection to GitHub established and verified
    (:ref:`instructions <ssh>`)


Step 2: Create a Conda environment for CodeRefinery workshop
------------------------------------------------------------

**All participants** need to create a Conda environment using the provided
``environment.yml`` (:ref:`instructions <conda-environment>`).
This environment will provide all dependencies that we will need during the
workshop.


If you encounter any problems
-----------------------------

- Ask a friend/colleague/local IT support.  These are standard tools
  which many people can help with (and don't be afraid to ask - it's
  an unfortunate fact that software installation and configuration is
  hard).

- We will have 2 drop-in installation-help sessions. Please try by yourself
  first, but if you cannot solve problems, join in the sessions. Schedule is
  shown in the workshop website.
- Ask in the ``#help`` stream on the `CodeRefinery Zulipchat <https://coderefinery.zulipchat.com>`__.
  You can also send
  an email to support@coderefinery.org to ask questions.  Please
  describe the problem concretely as well as your operating system.


.. toctree::
  :maxdepth: 1
  :caption: Instructions

  shell-and-git
  github
  ssh
  conda
  conda-environment
  zoom
  editors
  difftools
  motivation
  removing-accounts


.. toctree::
   :maxdepth: 1
   :caption: Reference

   license


How to contribute improvements/suggestions
------------------------------------------

Corrections and contributions to `the repository <https://github.com/coderefinery/installation>`__ are most welcome.
