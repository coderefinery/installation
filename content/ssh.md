(ssh)=

# SSH connection to GitHub

```{admonition} Watch this in video form

[This CodeRefinery video about ssh keys (7
min)](https://www.youtube.com/watch?v=XCDg1mtaA5I&list=PLpLblYHCzJACyKCfHnPwRruOxllNoHsEg)
shows how to set up SSH connection to GitHub.  We recommend you watch
this first to understand what is going in.
```

Using the SSH protocol, you can connect and authenticate to remote servers and
services. With SSH keys, you can connect to GitHub without supplying your
username or password at each visit.

This step was optional in the past but will be necessary because soon it will
not be possible to publish (git push) changes to GitHub with username and
password alone.

For the instructions, please follow [this
guide](https://help.github.com/articles/connecting-to-github-with-ssh/) to
connect to GitHub with SSH keys.  These same instructions work
with services other than Github as well (except the adding the key to
Github part).


## How to verify that it worked

Try this in your terminal shell:
```
ssh git@github.com
```

If you set up ssh keys correctly, you will see:
```
PTY allocation request failed on channel 0
Hi yourusername! You've successfully authenticated, but GitHub does not provide shell access.
Connection to github.com closed.
```

So although the result says "request failed", the important part is **"yourusername" and "You've successfully authenticated"**.
