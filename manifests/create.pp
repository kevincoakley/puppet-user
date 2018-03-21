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
  $ensure               = undef,
  $allowdupe            = undef,
  $attribute_membership = undef,
  $attributes           = undef,
  $auth_membership      = undef,
  $auths                = undef,
  $comment              = undef,
  $expiry               = undef,
  $forcelocal           = undef,
  $gid                  = undef,
  $groups               = undef,
  $home                 = "/home/${title}",
  $ia_load_module       = undef,
  $iterations           = undef,
  $key_membership       = undef,
  $keys                 = undef,
  $loginclass           = undef,
  $managehome           = undef,
  $membership           = undef,
  $password             = undef,
  $password_max_age     = undef,
  $password_min_age     = undef,
  $profile_membership   = undef,
  $profiles             = undef,
  $project              = undef,
  $provider             = undef,
  $purge_ssh_keys       = undef,
  $role_membership      = undef,
  $roles                = undef,
  $salt                 = undef,
  $shell                = undef,
  $system               = undef,
  $uid                  = undef,
) {

  realize(User[$title])

  @user { $title:
    ensure               => $ensure,
    allowdupe            => $allowdupe,
    attribute_membership => $attribute_membership,
    attributes           => $attributes,
    auth_membership      => $auth_membership,
    auths                => $auths,
    comment              => $comment,
    expiry               => $expiry,
    forcelocal           => $forcelocal,
    gid                  => $gid,
    groups               => $groups,
    home                 => $home,
    ia_load_module       => $ia_load_module,
    iterations           => $iterations,
    key_membership       => $key_membership,
    keys                 => $keys,
    loginclass           => $loginclass,
    managehome           => $managehome,
    membership           => $membership,
    password             => $password,
    password_max_age     => $password_max_age,
    password_min_age     => $password_min_age,
    profile_membership   => $profile_membership,
    profiles             => $profiles,
    project              => $project,
    provider             => $provider,
    purge_ssh_keys       => $purge_ssh_keys,
    role_membership      => $role_membership,
    roles                => $roles,
    salt                 => $salt,
    shell                => $shell,
    system               => $system,
    uid                  => $uid,
  }
}