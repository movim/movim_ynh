#
# Common variables
#

# Git repository of Movim
GIT_REPO="https://github.com/movim/movim"

# Commit to checkout
HEAD_COMMIT="b7347ca7f1e95192a89fb4d922603b8daf4f8e5a"

# Source code destination directory
DESTDIR="/var/www/movim"

# App package root directory should be the parent folder
PKGDIR=$(cd ../; pwd)

#
# Common helpers
#

# Execute a command as movim user in the destination directory
# usage: exec_cmd COMMAND [ARG ...]
exec_cmd() {
  (cd "$DESTDIR" \
   && sudo sudo -u movim "$@")
}

# Apply the SSO patch to Movim source code
# usage: apply_sso_patch
apply_sso_patch() {
  local patch_path="/tmp/sso-logout.patch"
  cp -f "${PKGDIR}/patches/sso-logout.patch" "$patch_path"
  exec_cmd git apply "$patch_path"
  rm -f "$patch_path"
}
