require_relative "task"
require_relative "repository"
require_relative "view"
require_relative "controller"
require_relative "router"

# dishes = Task.new("Dishes")
# laundry = Task.new("Laundry")
# study = Task.new("Study")

repo = Repository.new
# view = View.new
controller = Controller.new(repo)
router = Router.new(controller)

# repo.create(dishes)
# repo.create(laundry)
# repo.create(study)

# p repo

# repo.destroy(2)

# ask repo to give me the tasks
# tasks =  repo.all
# view.display(tasks)

# p repo
# p dishes.mark_as_done!

# p dishes
# p laundry

# p laundry.done?

router.run
