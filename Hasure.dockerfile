FROM hasura/graphql-engine:v2.0.0-alpha.7 as base

# Load env from local container rather then Hasura CDN
ENV HASURA_GRAPHQL_CONSOLE_ASSETS_DIR=/srv/console-assets
ENV HASURA_GRAPHQL_MIGRATIONS_DIR=/hasura-migrations
ENV HASURA_GRAPHQL_METADATA_DIR=/hasura-metadata

# Although not recommended, running this is super helpful
ENV HASURA_GRAPHQL_ENABLE_CONSOLE=true

CMD graphql-engine \
    --database-url $DATABASE_URL \
    serve \
    --server-port $PORT
