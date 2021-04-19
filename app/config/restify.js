import restify from 'restify'

import activities from '../api/routes/activities'

export default () => {
	const app = restify.createServer()

	app.use(restify.plugins.bodyParser({ mapParams: true }))

	activities(app)

	return app
}
