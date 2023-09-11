(ssh)=

# SSH connection to GitHub

```{admonition} Watch this in video form

[This CodeRefinery video about ssh keys (7
min)](https://www.youtube.com/watch?v=XCDg1mtaA5I&list=PLpLblYHCzJACyKCfHnPwRruOxllNoHsEg)
shows how to set up SSH connection to GitHub.
If you are new to SSH keys, We recommend you watch
this first to understand what is going on.
```

Using the SSH protocol, you can connect and authenticate to remote servers and
services. With Git, it allows you to connect to remote servers to push and pull
code. This step was optional in the past but is required now. The GitHub
username and password is not enough anymore to publish (git push) changes to
GitHub.


## Instructions

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


(ssh-verification)=

## How to verify that it worked

Try this in your terminal shell:
```console
$ ssh -T git@github.com
```

If you set up ssh keys correctly, you will see:
```
Hi yourusername! You've successfully authenticated, but GitHub does not provide shell access.
```

If it says **"You've successfully authenticated"**
then it works and your SSH keys are properly set up with GitHub.

You possibly see this warning (the IP and the fingerprint may look differently):
```console
$ ssh -T git@github.com

The authenticity of host 'github.com (140.82.121.4)' can't be established.
ED25519 key fingerprint is SHA256:+DiY3wvvV6TuJJhbpZisF/zLDA0zPMSvHdkr4UvCOqU.
This key is not known by any other names
Are you sure you want to continue connecting (yes/no/[fingerprint])?
```

Before typing "yes", verify that the fingerprint is [one of
these](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/githubs-ssh-key-fingerprints).

What this means: SSH is a secure protocol to send data between two computers
but the very first time you ever connect to the remote host, SSH asks if this
is really the host/server we meant to talk to and to verify that nobody is
trying to impersonate the other host.  Once we validate the connection, SSH
will remember that we trust that host and not ask this question again.
