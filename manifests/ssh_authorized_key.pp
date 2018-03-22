# Class: user::ssh_authorized_key
# ===========================
#
# Adds SSH authorized keys using the ssh_authorized_key resource
#
# Parameters
# ----------
#
# See https://puppet.com/docs/puppet/5.5/types/ssh_authorized_key.html
#
#
define user::ssh_authorized_key (
  $ensure   = undef,
  $key      = undef,
  $options  = undef,
  $provider = undef,
  $target   = undef,
  $type     = 'ssh-rsa',
  $user     = $title,
) {

  realize( Ssh_Authorized_Key[$title] )

  @ssh_authorized_key { $title:
    ensure   => $ensure,
    key      => $key,
    options  => $options,
    provider => $provider,
    target   => $target,
    type     => $type,
    user     => $user,
    require  => User[$user],
  }
}