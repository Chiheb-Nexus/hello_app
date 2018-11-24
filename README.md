# Example of using Python/Django & Docker & docker-compose
You need to add a folder under `conf` called `dev` in where you create a file called `.env` in where you add something like this:

```bash
DEBUG=true
SECRET_KEY=2fm3t#3i!6u0&_752y0n$ks+g-0g(6^d6*bc&@7c2o3i78eios
POSTGRES_DB=database1
POSTGRES_USER=database1_user
POSTGRES_PASSWORD=database1_password
HOST=database1
PORT=5432
```
