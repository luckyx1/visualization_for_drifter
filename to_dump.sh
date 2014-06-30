#makes a dump file, please rename the .dump file(with like timestatmp)
rm drifter.dump
pg_dump -Fc --no-acl --no-owner -h localhost -U Erick_laptop mydbleaf > drifter.dump
