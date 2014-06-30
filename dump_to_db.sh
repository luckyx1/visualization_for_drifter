#convert dumpfile into your db
file_path=drifter.dump
bash clean_local.sh
pg_restore --verbose --clean --no-acl --no-owner -h localhost -U Erick_laptop -d leaflet_development $file_path
