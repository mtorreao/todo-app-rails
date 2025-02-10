import ApplicationController from "controllers/application_controller"

export default class extends ApplicationController {
  connect () {
    super.connect()
  }

  increment(event) {
    event.preventDefault()
    this.stimulate('TodoItem#increment', 1)
  }
}
