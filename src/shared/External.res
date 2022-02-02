type gqlSchemaParams = {query: string}

type gqlSchema

type foxxGraphqlRouterParams = {
  schema: gqlSchema,
  graphiql: bool,
  graphql: Obj.t,
}

@module("@arangodb/foxx/graphql")
external createGraphqlRouter: foxxGraphqlRouterParams => unit = "createGraphqlRouter"

@module
external gqlLib: Obj.t = "graphql"

@module("graphql")
external gqlSchemaConstructor: gqlSchemaParams => gqlSchema = "GraphQLSchema"

@module("graphql")
external graphql: (gqlSchema, string, 'rootValue) => Promise.t<'result> = "graphql"
