# ContactManagerBackend

To start the app:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.create && mix ecto.migrate`
  * Start Phoenix endpoint with `mix phoenix.server`

To add a record:

```sh
curl -X POST -H "Content-Type: application/json" -d '{ "contact": { "first_name": "Bill", "last_name": "Washington", "email":"washb@gmail.com", "phone": "205.555.1152" } }' http://localhost:4000/contacts
```

To see 'em:
```sh
curl -H "Content-Type: application/json" http://localhost:4000/contacts
```
