## TLDR
You can just run 

```
docker-compose up -d
```

## Sample LDAP Server
This is a sample LDAP server with many users for testing.
It was taken from the docker config provided by [this](https://hub.docker.com/r/bitnami/openldap/)

You can use the `createcerts.sh` script to create new certificates.

## Config
- bind_credential: Use anonymous
- bind_dn: Use anonymous
- bind_type: :anon
- certificate: Use **openldapCA.crt**
- host: "localhost"
- is_guid: false
- port: 1636
- rdn_attribute: "cn"
- search_scope: :subtree
- ssl: true
- user_object_classes: "inetOrgPerson,posixAccount,shadowAccount"
- username_attribute: "uid"
- users_dn: "dc=example,dc=org"
- uuid_attribute: "entryUUID"
- verify_hostname: false
