# KDash - A fast and simple dashboard for Kubernetes

```
 _  __ ___             _
| |/ /|   \  __ _  ___| |_
| ' < | |) |/ _` |(_-<| ' \
|_|\_\|___/ \__,_|/__/|_||_|
```

A simple terminal dashboard for Kubernetes built with Rust

**This repo holds choco files for for [KDash](https://github.com/kdash-rs/kdash)**

# Install

Choco package located [here](https://community.chocolatey.org/packages/kdash). Since you cannot upload a new package while a previous one is being validated, the newest version of a release may take a while to appear.

```bash
choco install kdash

# Version number may be required for newer releases, if available:
choco install kdash --version=0.0.6
```

# Test and Deploy

To test and deploy, see [here](https://chocolatey.org/courses/creating-chocolatey-packages/building-testing-and-pushing) for more info but the gist is, in an admin terminal:

```bash
choco pack
choco uninstall kdash          # Just to avoid having to force
choco install kdash -dv -s .
```

If successful:

```bash
choco push <PACKAGE_NAME>.nupkg -s https://push.chocolatey.org/
```

Visit [https://github.com/kdash-rs/kdash](https://github.com/kdash-rs/kdash) for more details
