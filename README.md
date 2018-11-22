
# Steps for the fun

  

## Spin everything up

```bash
$ make up
```

## Initialise the replica set

```bash
$ make initReplSet
```

## Activate the replication

```bash
$ make stampede
```

## Seed the MongoDB

```bash
$ make seed
```

## Check the databases

Now visit http://localhost:8080 and http://localhost:8081, set the parameters to connect to both databases and compare them.

At mongoclient:
```json
{"address.building":"469"}
```

At PGAdmin:
```SQL
SELECT *
FROM "test"."restaurants" r
LEFT JOIN "test"."restaurants_address" add
ON r.did = add.did
WHERE add.building_s = '469'
```
