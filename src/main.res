let init = () =>
  External.createGraphqlRouter({
    schema: Schema.content,
    graphiql: true,
    graphql: External.gqlLib,
  })
