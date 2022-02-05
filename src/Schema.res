let content = External.schemaBuild(`
	schema {
		query: Query
		mutation: Mutation
		subscription: Subscription
	}

	# The query type, represents all of the entry points into our object graph
	type Query {
		hero(episode: Episode): Character
		reviews(episode: Episode!): [Review]
		character(id: ID!): Character
		human(id: ID!): Human
	}

	# The mutation type, represents all updates we can make to our data
	type Mutation {
		createReview(episode: Episode, review: ReviewInput!): Review
	}

	# The subscription type, represents all subscriptions we can make to our data
	type Subscription {
		reviewAdded(episode: Episode): Review
	}
`)
