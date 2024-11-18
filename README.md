# ClickHouse Docker Setup

This setup provides a quick way to run a [ClickHouse](https://clickhouse.com/docs) server locally with Docker, including a Tabix web client to explore and interact with your ClickHouse data.

## What is ClickHouse?

ClickHouse is an open-source columnar database management system (DBMS) primarily designed for analytical queries. It is highly efficient for real-time analytics, processing queries on large volumes of data in a fraction of the time required by traditional database systems.

### Key Features of ClickHouse

- **Columnar Storage**: Stores data by columns, enabling high performance for analytical queries.
- **High Compression**: Optimized storage format leads to smaller storage requirements and faster query execution.
- **Distributed**: Designed for horizontal scalability, with sharding and replication support.
- **Real-Time Analytics**: Fast data ingestion with efficient, complex analytical queries.
- **SQL Support**: Compatible with standard SQL syntax, supporting complex SQL queries, joins, subqueries, etc.
- **High-Performance Queries**: Known for handling billions of rows and petabytes of data efficiently.

For a deeper dive, refer to the [official ClickHouse documentation](https://clickhouse.com/docs) and specifically the [ClickHouse Tutorial](https://clickhouse.com/docs/en/tutorial) for a comprehensive guide.

## Prerequisites

- [Docker](https://www.docker.com/get-started)
- [Docker Compose](https://docs.docker.com/compose/install/)

## Usage

This setup includes two services:
1. **ClickHouse Server**: The primary ClickHouse database instance.
2. **Tabix Web Client**: A web-based interface for querying and interacting with your ClickHouse data.

### Running the Setup

Use the provided `Makefile` to start and stop the services.

1. **To start the services:**
   ```bash
   make up
   ```

2. **To stop the services:**
   ```bash
    make down
   ```

3. **To remove all containers and volumes:**
   ```bash
    make clean
   ```

## Accessing the Services
* ClickHouse HTTP Interface: http://localhost:8123
* ClickHouse Native TCP Interface: Accessible on port 9000
Tabix Web Client: http://localhost:8080

## Configuration
The docker-compose.yml file includes basic configurations to get started with ClickHouse. These configurations can be modified based on your requirements:

* CLICKHOUSE_USER: Sets the ClickHouse user (default: default).
* CLICKHOUSE_DB: The default database (default: default).
* CLICKHOUSE_DEFAULT_ACCESS_MANAGEMENT: Enables access management (default: 1).
* CLICKHOUSE_SETTINGS__max_result_rows: Maximum result rows (default: 10000).
* CLICKHOUSE_TIMEOUT__max_execution_time: Max execution time (in seconds).

Refer to the [ClickHouse documentation](https://clickhouse.com/docs/en/operations/settings) for more detailed configuration options.
