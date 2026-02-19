(ssh)=

# SSH or HTTPS connection to GitHub from terminal

## Why are we doing this?

We need to connect to GitHub (or whatever other repository we may be
using), and for that to work, we have to be able to identify
ourselves. This is actually a pretty hard thing to do, and there are
two main options **when authenticating from a terminal**.

You do not need to configure the below if you are using {ref}`vscode`.


## What are the options?

`````{tabs}
````{group-tab} SSH
**This is recommend if you are on Linux or macOS**
(it does work on Windows, but since the
HTTPS method is included by default, you may as well use that
instead).

[Secure Shell (SSH)](https://en.wikipedia.org/wiki/Secure_Shell) is the
standard program for connecting to remote servers.  It's well worth
learning anyway.

These days, every major operating system has it built in, but it
requires more set up using "SSH keys" to use it for GitHub.  It's
really useful to set this up and get to know it well, even for things
other than git.
````

````{group-tab} HTTPS
**This is recommend if you are on Windows or macOS**.

Web browsers use HTTPS (secure hypertext transfer protocol) to
communicate with web sites. It's less secure if only a
password is used, so GitHub doesn't allow normal passwords anymore.
With an extra tool, it becomes easy and secure, though.
````

````{group-tab} VS Code
**If you use VS Code**.

If you use VS Code, authentication to GitHub happens automatically via
if you use **HTTPS**.
````

````{group-tab} RStudio
**If you use RStudio**

If you use RStudio, authentication can happen either via HTTPS or SSH. Here, the RStudio instructions cover using **HTTPS**.

````

`````

You should remember your choice for the lessons.



## Instructions

Based on your decision above, try to set it up.  You can try the other
one if your first choice doesn't work.  There's nothing wrong with
doing both of them.

`````{tabs}
````{group-tab} SSH

```{admonition} Watch this in video form
[This CodeRefinery video about ssh keys (7
min)](https://www.youtube.com/watch?v=XCDg1mtaA5I&list=PLpLblYHCzJACyKCfHnPwRruOxllNoHsEg)
shows how to set up SSH connection to GitHub.
If you are new to SSH keys, We recommend you watch
this first to understand what is going on.
```

For the instructions, please follow [this
guide from GitHub](https://help.github.com/articles/connecting-to-github-with-ssh/) to
connect to GitHub with SSH keys.  These same instructions work
with services other than GitHub as well (except the adding the key to
GitHub part).

* If you think you might already have SSH keys, start with [Checking
  for existing SSH
  keys](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/checking-for-existing-ssh-keys)
* Then start with [Generating a new SSH key and adding it to the
  ssh-agent](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)
* Then [Adding a new SSH key to your GitHub
  account](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account)
* Then [Testing your SSH
  connection](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/testing-your-ssh-connection)
  (note that this is the same as the verification steps below)
* If on Windows, [Working with SSH key
  passphrases](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/working-with-ssh-key-passphrases)
  is optional but can save you from retyping the passphrase so many times.


````
````{group-tab} HTTPS
We use [Git Credential
Manager](https://github.com/git-ecosystem/git-credential-manager) to
make HTTPS easy.

**Windows**: Git Credential Manager should have been installed as part
of Git for Windows installation.  If not, go back to the git
installation and make sure it is selected.

**macOS**: Follow the [macOS installation
instructions](https://github.com/git-ecosystem/git-credential-manager/blob/release/docs/install.md#macos)
for Git Credential Manager.

**Linux**: The [Linux install
instructions](https://github.com/git-ecosystem/git-credential-manager/blob/release/docs/install.md#linux)
for Git Credential Manager work, but have to make one extra
configuration step compared to other operating systems (since Linux
has more options like connecting remotely to it to do work).  SSH is
so natural on Linux you may as well do that.
````

````{group-tab} VS Code

No further setup is needed.  VS Code prompts you to automatically
handles the authentication when needed.
````

````{group-tab} RStudio

First, install the R package `usethis` if it isn't already installed:

```r
install.packages("usethis")
```

Next, we set a user name and email to be used with Git by running this command in R:

```r
usethis::use_git_config(user.name = "Firstname Lastname", user.email = "name@organization.org")
```

If you are unsure which email to use, use the one that you have registered at
GitHub with.

**This name and email will be public on GitHub when you make
contributions, including in this course.**  If you prefer to not use a real email address but still want to make sure that
GitHub counts your contributions, you can use
`yourusername@users.noreply.github.com` (replace `yourusername`). This is important since your Git commits use this information.


Then, let's create a Github token for HTTPS:

```r
usethis::create_github_token()
```

This will open a Github web page. Give the token a name, for example related to the project you are working on,
and set the expiration date as you wish. In the section for scopes, the defaults are OK in most cases. 
Generate the token. **Important: save the generated token on the clipboard or in a file, or keep the web page open.** The token can't be retrieved later and will be needed in the next step.

To give the token to RStudio, run in R:

```r
gitcreds::gitcreds_set()
```

Paste the token when prompted. Now you are ready to use Git with RStudio.

If the token expires or gets lost, create a new one the same way.

*Reference and more details on connecting RStudio, Git and Github: [Happy Git and Github for the useR](https://happygitwithr.com/)*

````

`````


## How to verify that it worked

``````{tabs}
`````{group-tab} SSH

Try this in your terminal shell:
```console
$ ssh -T git@github.com
```

If you set up ssh keys correctly, you will see:
```
Hi yourusername! You've successfully authenticated, but GitHub does not provide shell access.
````

If it says **"You've successfully authenticated"**
then it works and your SSH keys are properly set up with GitHub.

You possibly see this warning (the IP and the fingerprint may look differently):
````console
$ ssh -T git@github.com

The authenticity of host 'github.com (140.82.121.4)' can't be established.
ED25519 key fingerprint is SHA256:+DiY3wvvV6TuJJhbpZisF/zLDA0zPMSvHdkr4UvCOqU.
This key is not known by any other names
Are you sure you want to continue connecting (yes/no/[fingerprint])?
````

Before typing "yes", verify that the fingerprint is [one of
these](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/githubs-ssh-key-fingerprints).

What this means: SSH is a secure protocol to send data between two computers
but the very first time you ever connect to the remote host, SSH asks if this
is really the host/server we meant to talk to and to verify that nobody is
trying to impersonate the other host.  Once we validate the connection, SSH
will remember that we trust that host and not ask this question again.
`````

`````{group-tab} HTTPS

It's hard to test this, but here is what we recommend:

**Linux/macOS**: Start your terminal application (wherever you have
Git).

**Windows**: start Git Bash.

Run the following command:

````console
$ git clone https://github.com/rkdarst/private-example.git
````

It should open a web browser window and ask "Authorize Git Credential
Manager"?  This means that the program running on your computer will
have access to GitHub as you.  **Click "Authorize git-ecosystem"** and
close the tab when it asks you to.

This is private so **it will say the repository is not found, but
that's OK.** If it sent you to your web browser, that means the
authentication worked! This is what it looks like if **the
verification was successful:**

````{code-block} console
---
emphasize-lines: 3
---

$ git clone https://github.com/rkdarst/private-example.git
Cloning into 'private-example'...
info: please complete authentication in your browser...
remote: Repository not found.
fatal: repository 'https://github.com/rkdarst/private-example.git/' not found
````

(If it asks you for a username and password in the terminal, then the
verification failed - this won't work with GitHub.)

Git Credential Manager will remember your login the first time you use
it on a repository you have access to.

````{admonition} Running on a remote server?
---
class: dropdown
---
If you are on a remote server and Git can't automatically start a web
browser, you might get this prompt:

  ```
  Select an authentication method for 'https://github.com/':
  1. Device code (default)
  2. Personal access token
  ```
Select option 1 and do what it says.
````

`````
`````{group-tab} VS Code
No further checking is needed (we hope).
`````

`````{group-tab} RStudio

In the RStudio console panel, click the Terminal tab.

Run the following command:

````console
$ git clone https://github.com/rkdarst/private-example.git
````

This is private so **it will say the repository is not found, but
that's OK.** This is what the output looks like if **the
authentication was successful:**

````{code-block} console
---
emphasize-lines: 3
---

$ git clone https://github.com/rkdarst/private-example.git
Cloning into 'private-example'...
remote: Repository not found.
fatal: repository 'https://github.com/rkdarst/private-example.git/' not found
````

If authentification was not successful, you will see this:

````{code-block} console
---
emphasize-lines: 3
---
git clone https://github.com/rkdarst/private-example.git
Cloning into 'private-example'...
remote: Invalid username or token. Password authentication is not supported for Git operations.
fatal: Authentication failed for 'https://github.com/rkdarst/private-example.git/'
````

In this case, go back to the previous step and make sure you have created a token and 
passed it to RStudio.

`````
``````
