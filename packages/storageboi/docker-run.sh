#! /bin/bash
docker run -d  --net=host --restart unless-stopped  \
       -e HASURA_GRAPHQL_DATABASE_URL=$POSTGRES_MAIN_DB_URL \
       -e HASURA_GRAPHQL_ENABLE_CONSOLE=true \
       -e HASURA_GRAPHQL_ADMIN_SECRET=$HASURA_ADMIN_SECRET \
       hasura/graphql-engine:v1.3.2
