#! /bin/bash
docker run -d  --net=host --restart unless-stopped  \
       -e HASURA_GRAPHQL_DATABASE_URL=$POSTGRES_MAIN_DB_URL \
       -e HASURA_GRAPHQL_ENABLE_CONSOLE=true \
       hasura/graphql-engine:v1.3.2
