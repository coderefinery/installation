CodeRefinery workshop software installation instructions
========================================================

In CodeRefinery workshops, we will use a number of tools and services. For the
best learning outcome, please make sure that you have all the required software
available in the computer that you will use during the workshop.


.. note::

   If you are using a university-managed computer from the following universities, please follow specific instructions:

   - `Aalto University <https://scicomp.aalto.fi/aalto/coderefinery-setup/>`__


Requirements table
------------------

First, go through all the items in the check list below. If you are in doubt or
your answer is "no", then follow the guideline shown in a linked page for each.

.. list-table::
   :header-rows: 1

   * * What?
     * Importance?
     * Week?
     * Verification
   * * :ref:`Terminal and git <shell-and-git>` installed
     * **required**
     * 1
     * ↓ same
   * * :ref:`git basic configuration <git-configuration>` (name,
       email, basic editor)
     * **required**
     * 1
     * :ref:`link <shell-and-git-verification>`
   * * :ref:`GitHub account <github>`
     * **required** (or :ref:`alternative <github-alternative>`)
     * 1 (day-3)
     * :ref:`link <github-verification>`
   * * :ref:`SSH connection to Github <ssh>`
     * **required**
     * 1 (day-3)
     * :ref:`link <ssh-verification>`
   * * :ref:`Other editor of your choice <editors>`
     * optional (:ref:`at least Nano required, which is covered under
       "Terminal and git <nano-configuration>`")
     * 1
     * ↓ same
   * * Other editor working with git from command line (see
       previous line)
     * optional
     * 1
     * :ref:`link <editors-verification>`
   * * :ref:`Visual diff tools <visual-diff-tools>`
     * extra
     * 1
     * :ref:`link <visual-diff-tools-verification>`
   * * :ref:`Python (we suggest via miniconda) <conda>`, less than 3
       years old
     * required (can use existing)
     * 2
     * ↓ same
   * * :ref:`CodeRefinery conda environment <conda-environment>` with
       our environment.yml
     * **required (for exercises to work)**
     * 2
     * :ref:`link <conda-environment-verification>`
   * * :ref:`Terminal + conda work together <setting-conda-path>`
     * required
     * 2
     * :ref:`link <setting-conda-path-verification>`


.. admonition:: Great!

   Now you are ready for the workshop!



Overall verification
--------------------

We also provide a verification script that you can run to
check that you have everything set up correctly.
Please **activate the Conda environment** with ``conda activate``
(or however you do it on your computer, see
:doc:`conda-environment`) before running the verification script.

Try whichever of these works on your computer:

.. tabs::

   .. tab:: ``curl`` method

      If you have the command ``curl`` available, you can run the following command:

      .. code-block:: console

	 $ curl --proto '=https' --tlsv1.2 -sSf https://raw.githubusercontent.com/coderefinery/installation/main/verify/verify-installation.sh | bash

   .. tab:: ``wget`` method

      If you have the command ``wget`` available, you can run the following command:

      .. code-block:: console

	 $ wget -qO- https://raw.githubusercontent.com/coderefinery/installation/main/verify/verify-installation.sh | bash

   .. tab:: manual download

      You can also run it without ``wget`` or ``curl`` by `downloading the script
      <https://raw.githubusercontent.com/coderefinery/installation/main/verify/verify-installation.sh>`__
      (right click and "Save as...") and then running it with ``bash
      verify-installation.sh`` inside your terminal.

Running the script will print a summary of what you have installed:

.. code-block:: console

   $ bash verify-installation.sh

   --------------------------------------------------------------------------------------------------
   For week one of the CodeRefinery workshop you will need Git installed and your SSH keys configured
   Checking Git and SSH keys:
     - [x] git version 2.38.3 found, good to go
     - [x] SSH keys seem to be setup correctly, good to go

   ---------------------------------------------------------------------------------------------------
   For week two of the CodeRefinery workshop you will need a relatively new version of conda installed
   as well as a coderefinery conda environment:
     - [x] $(conda --version) found"
           if your conda version is rather old (~ version 4.8.0 and older), please consider updating to avoid possible issues
     - [x] coderefinery conda environment found, good to go"



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
  :hidden:
  :caption: Instructions

  shell-and-git
  github
  ssh
  conda
  conda-environment
  editors
  difftools

.. toctree::
  :maxdepth: 1
  :hidden:
  :caption: Notes

  motivation
  removing-accounts

.. toctree::
  :maxdepth: 1
  :hidden:
  :caption: Reference

  license


How to contribute improvements/suggestions
------------------------------------------

Corrections and contributions to `the repository <https://github.com/coderefinery/installation>`__ are most welcome.
