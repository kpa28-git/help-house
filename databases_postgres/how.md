# Startup
## Starting Postgres (systemd service)
`$ sudo systemctl start postgresql.service`

## Starting Postgres (foreground)
`$ postgres -D <PGDATA>`

## Create a Database
`$ createdb <dbname>`

# PSQL Shell
## Execute sql script
`(psql)# \i <script>`

# Version Upgrades
## Major Version Upgrade
* This guide assumes the use of the freebsd postgres binary package, where the db is started manually instead of being enabled at boot.
* This steps may differ slightly from upgrading on other systems because some custom scripts are used from the freebsd package of postgres server. In particular the cluster location conventions may differ on other systems.
1. Stop the cluster: `sudo -iu postgres /usr/local/etc/rc.d/postgresql onestop`
2. Download current version binaries (freebsd.pkgs.org) or back them up before upgrading the package
3. Upgrade postgres server package to the new version
4. Point `postgresql_data` in rc.conf and `PGDATA` (if set in .profile or wherever) to the new cluster location, usually this will be the old cluster location with the new version suffix. ex (ver 10->ver 13): `<cluster_root>/db/postgres/data10` -> `<cluster_root>/db/postgres/data13`
5. Switch to the postgres user (`sudo -iu postgres`)
6. Initialize the new cluster: `/usr/local/etc/rc.d/postgresql oneinitdb -D <cluster_root>`
7. Check the upgrade: `pg_upgrade --check -b <old_binary_dir> -d <old_cluster_dir> -D <new_cluster_dir>`
8. Perform the upgrade: `pg_upgrade -b <old_binary_dir> -d <old_cluster_dir> -D <new_cluster_dir>`
9. Transfer config files from the old cluster to the new: `pg_hba.conf`, `postgresql.conf`, `pg_ident.conf`
10. Start the new cluster: `exit; sudo -iu postgres /usr/local/etc/rc.d/postgresql onestart`
11. (optional) Delete the old cluster directory
