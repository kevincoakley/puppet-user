# Class: user
# ===========================
#
# Creates users and adds SSH authorized keys
#
#
class user (
  $users               = {},
  $ssh_authorized_keys = {},
)
  {
    create_resources('user::create', $users)
    create_resources('user::ssh_authorized_key', $ssh_authorized_keys)
  }
