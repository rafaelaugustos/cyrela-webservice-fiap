import activitiesController from '../controllers/activities'

const activities = (app) => {
	const controller = activitiesController()

	app.get('/activities', controller.getActivities)
	app.get('/activity/:id', controller.getActivity)
	app.post('/activity', controller.createActivity)
}

export default activities
