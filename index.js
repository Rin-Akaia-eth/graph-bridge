import { init } from "./lib/index.js";

module.context.use(
  "/gql",
  init().summary("GraphQL endpoint").description("GraphQL endpoint.")
);
