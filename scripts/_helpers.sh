#
# Yunohost helpers
#

ynh_die() {
  echo "$1" 1>&2
  exit "${2:-1}"
}

ynh_user_exists() {
    sudo yunohost user info $admin
}

ynh_system_user_exists() {
    getent passwd "$1" &>/dev/null
}

ynh_app_setting_get() {
    sudo yunohost app setting "$1" "$2"
}

ynh_app_setting_set() {
    sudo yunohost app setting "$1" "$2" -v "$3"
}

ynh_app_setting_delete() {
    sudo yunohost app setting -d "$1" "$2"
}

ynh_string_random() {
    dd if=/dev/urandom bs=1 count=200 2> /dev/null \
      | tr -c -d '[A-Za-z0-9]' \
      | sed -n 's/\(.\{'"${1:-24}"'\}\).*/\1/p'
}

MYSQL_ROOT_PWD_FILE=/etc/yunohost/mysql

ynh_mysql_create_db() {
    db=$1

    sql="CREATE DATABASE ${db};"

    # grant all privilegies to user
    if [[ $# -gt 1 ]]; then
        sql+=" GRANT ALL PRIVILEGES ON ${db}.* TO '${2}'@'localhost'"
        [[ -n ${3:-} ]] && sql+=" IDENTIFIED BY '${3}'"
        sql+=" WITH GRANT OPTION;"
    fi

    ynh_mysql_execute_as_root "$sql"
}

ynh_mysql_drop_db() {
    ynh_mysql_execute_as_root "DROP DATABASE ${1};"
}

ynh_mysql_drop_user() {
    ynh_mysql_execute_as_root "DROP USER '${1}'@'localhost';"
}

ynh_mysql_execute_as_root() {
    ynh_mysql_connect_as "root" "$(sudo cat $MYSQL_ROOT_PWD_FILE)" \
        "${2:-}" <<< "$1"
}

ynh_mysql_connect_as() {
    mysql -u "$1" --password="$2" -B "${3:-}"
}


ynh_package_install() {
    ynh_apt -o Dpkg::Options::=--force-confdef \
            -o Dpkg::Options::=--force-confold install $@
}

ynh_apt() {
    DEBIAN_FRONTEND=noninteractive sudo apt-get -y -qq $@
}
