module.exports = {
	development: {
		client: 'pg',
		connection: {
			database: 'cyrela',
			user: 'postgres',
			password: '123',
		},
		migrations: {
			tableName: 'knex_migrations',
			directory: `${__dirname}/app/database/migrations`,
		},
	},
}
