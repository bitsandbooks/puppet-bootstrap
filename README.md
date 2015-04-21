# bootstrap

#### Table of Contents

1. [Overview](#overview)
2. [Module Description - What the module does and why it is useful](#module-description)
3. [Setup - The basics of getting started with bootstrap](#setup)
    * [What bootstrap affects](#what-bootstrap-affects)
    * [Setup requirements](#setup-requirements)
    * [Beginning with bootstrap](#beginning-with-bootstrap)
4. [Usage - Configuration options and additional functionality](#usage)
5. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
5. [Limitations - OS compatibility, etc.](#limitations)
6. [Development - Guide for contributing to the module](#development)

## Overview

Bootstrap is a foundational Puppet module. It gets an Ubuntu-based Linux server
up, running and ready for other Puppet manifests.

## Module Description

This module basically installs some essential software and sets up a couple of
files and folders we're going to use.

## Setup

### What bootstrap affects

* Packages installed: `aptitude`, `build-essential`, `dkms`, `fail2ban`, `gdebi-core`, `ntp`, `software-properties-common`, `vim`
* Add `puppet` group and give said group access to `/etc/puppet`.
* Sync Apt cache.

### Setup Requirements

You'll need to install [Puppet](//puppetlabs.com) in order to run this manifest.

### Beginning with bootstrap

Put the module in `/etc/puppet/modules`.

## Usage

Put the classes, types, and resources for customizing, configuring, and doing
the fancy stuff with your module here.

## Reference

Class `bootstrap` includes just a few things:

* Packages installed: `aptitude`, `build-essential`, `dkms`, `fail2ban`, `gdebi-core`, `ntp`, `software-properties-common`, `vim`
* Add `puppet` group and give said group access to `/etc/puppet`.
* Sync Apt cache.

## Limitations

This module has only been tested on Ubuntu-based systems. It should work with
any Debian-based Linux, but at the moment, it does not support other distros
(e.g., RHEL, CentOS, Arch, etc).

## Development

If you'd like to contribute, send a pull request on [Github](https://github.com/bitsandbooks/puppet-bootstrap).

## Contributors

* [Rob D.](https://github.com/bitsandbooks)
