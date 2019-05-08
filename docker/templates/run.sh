#!/bin/bash

set -e

## Database restore
/flyway/flyway \
    -url=$(awk 'BEGIN {print ENVIRON["spring.datasource.url"]}') \
    -user=$(awk 'BEGIN {print ENVIRON["spring.datasource.username"]}') \
    -password=$(awk 'BEGIN {print ENVIRON["spring.datasource.password"]}') \
    migrate

catalina.sh run