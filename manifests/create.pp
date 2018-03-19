# Class: user::create
# ===========================
#
# Full description of class user here.
#
# Parameters
# ----------
#
# Document parameters here.
#
# * `sample parameter`
# Explanation of what this parameter affects and what it defaults to.
# e.g. "Specify one or more upstream ntp servers as an array."
#
# Variables
# ----------
#
# Here you should define a list of variables that this module would require.
#
# * `sample variable`
#  Explanation of how this variable affects the function of this class and if
#  it has a default. e.g. "The parameter enc_ntp_servers must be set by the
#  External Node Classifier as a comma separated list of hostnames." (Note,
#  global variables should be avoided in favor of class parameters as
#  of Puppet 2.6.)
#
# Examples
# --------
#
# @example
#    class { 'user':
#      servers => [ 'pool.ntp.org', 'ntp.local.company.com' ],
#    }
#
# Authors
# -------
#
# Author Name <author@domain.com>
#
# Copyright
# ---------
#
# Copyright 2018 Your name here, unless otherwise noted.
#
define user::create (
  $uid,
  $gid,
  $ensure               = present,
  $allowdupe            = false,
  $attribute_membership = minimum,
  $auth_membership      = minimum,
  $comment              = '',
  $expiry               = absent,
  $forcelocal           = false,
  $groups               = [],
  $home                 = "/home/${title}",
  $key_membership       = minimum,
  $managehome           = false,
  $membership           = minimum,
  $password             = 'x',
  $profile_membership   = minimum,
  $purge_ssh_keys       = false,
  $role_membership      = minimum,
  $shell                = '/bin/bash',
  $system               = false,
) {

  realize(User[$title])

  if $ensure == 'present' {
    file { [$home, "${home}/.ssh"]:
      ensure => 'directory',
      mode   => '0700',
      owner  => $title
    }
  }

  @user { $title:
    ensure               => $ensure,
    name                 => $title,
    allowdupe            => $allowdupe,
    attribute_membership => $attribute_membership,
    #    attributes            => $attributes,
    auth_membership      => $auth_membership,
    #    auths                 => $auths,
    comment              => $comment,
    expiry               => $expiry,
    forcelocal           => $forcelocal,
    gid                  => $gid,
    groups               => $groups,
    home                 => $home,
    #    ia_load_module        => $ia_load_module,
    #    iterations            => $iterations,
    key_membership       => $key_membership,
    #    keys                  => $keys,
    managehome           => $managehome,
    membership           => $membership,
    password             => $password,
    #    password_max_age      => $password_max_age,
    #    password_min_age      => $password_min_age,
    profile_membership   => $profile_membership,
    #    profiles              => $profiles,
    #    project               => $project,
    #    provider              => $provider,
    purge_ssh_keys       => $purge_ssh_keys,
    role_membership      => $role_membership,
    #    roles                 => $roles,
    #    salt                  => $salt,
    shell                => $shell,
    system               => $system,
    uid                  => $uid,
  }

}
