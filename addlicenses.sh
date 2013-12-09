#!bin/sh
/usr/syno/pgsql/bin/psql -d surveillance -U admin -c "INSERT INTO licensekey (camera_count, key, serial) VALUES (10, 2, '');"
