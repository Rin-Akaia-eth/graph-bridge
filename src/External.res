@val @scope(("module", "context", "collection"))
external collection: string => unit = "collection"

@module
external gqlLib: Obj.t = "graphql"

type gqlSchema

@module("graphql")
external schemaBuild: string => gqlSchema = "buildSchema"

type rootValue = {hello: unit => string}

@module("graphql")
external graphql: (gqlSchema, string, rootValue) => Promise.t<'result> = "graphql"

@module("@arangodb")
external db: Obj.t = "db"

type foxxGraphqlRouterParams = {
  schema: gqlSchema,
  graphiql: bool,
  graphql: Obj.t,
}

@module("@arangodb/foxx/graphql")
external createGraphqlRouter: foxxGraphqlRouterParams => unit = "createGraphqlRouter"
