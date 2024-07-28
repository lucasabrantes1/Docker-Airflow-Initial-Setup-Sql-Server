# Step-by-Step Instructions
Navigate to the project directory:

```bash
  cd ~/www/bees-data-engineering-breweries-case2
```
## Start the Docker containers:

```bash
docker-compose up -d
```

## Verify that the containers are running:

```bash
docker ps
```
Ensure you see two containers: one for Airflow and one for SQL Server.

## Access the Airflow container:

```bash
docker exec -it bees-data-engineering-breweries-case-airflow-1 sh
```

### Create an Airflow user:
Inside the Airflow container, run the following command:

```bash
airflow users create \
  --username admin \
  --password admin \
  --firstname Admin \
  --lastname User \
  --role Admin \
  --email admin@example.com
```
This will create an admin user with the username admin and password admin.

### Exit the Airflow container:
```bash
exit
```
## Stop and remove the Docker containers:
you can stop and remove the containers:

```bash
docker-compose down
```
