(ssh)=

# SSH or HTTPS connection to GitHub

## Why are we doing this?

We need to connect to Github (or whatever other repository we may be
using), and for that to work, we have to be able to identify
ourselves.  This is actually a pretty hard thing to do, and there are
two main options we have.


## What are the options?

`````{tabs}
````{group-tab} SSH
**This is recommend if you are on Linux or macOS (HTTPS also is
recommended on macOS)**.  (It does work on Windows, but since the
HTTPS method is included by default, you may as well use that
instead.)

[Secure SHell](https://en.wikipedia.org/wiki/Secure_Shell) is the
standard program for connecting to remote servers.  It's well worth
learning anyway.

These days, every major operating system has it built in, but it
requires more set up using "SSH keys" to use it for Github.  It's
really useful to set this up and get to know it well, even for things
other than git.
````

````{group-tab} HTTPS
**This is recommend if you are on Windows or macOS (SSH also is
recommended on macOS)**.

Web browsers use HTTPS (secure hypertext transfer protocol) to
communicate with web sites.  The thing is, it's less secure if only a
password is used, so Github doesn't allow normal passwords anymore.
With an extra tool, it becomes easy and secure, though.
````
`````

You should remember your choce for the lessons.



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
`````


(ssh-verification)=

## How to verify that it worked

``````{tabs}
`````{group-tab} SSH

Try this in your terminal shell:
````console
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
verification failed - this won't work with Github.)

Git Credential Manager will remember your login the first time you use
it on a repository you have access to.

````{admonition} Running on a remote server?
---
class: dropdown
---
If you are on a remote server and Git can't automatically start a web
browwser, you might get this prompt:

  ```
  Select an authentication method for 'https://github.com/':
  1. Device code (default)
  2. Personal access token
  ```
Select option 1 and do what it says.
````


`````
``````
