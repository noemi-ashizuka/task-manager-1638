class Controller
  # state
  def initialize(repository)
    @repository = repository
    @view = View.new
  end

  # behaviour
  def list
    display_tasks
  end

  def add
    # Ask the view to ask the user what's the task
    description = @view.ask_for_description # string
    # The view gives me back the user input (gets.chomp)
    # create an instance with the user input
    task = Task.new(description)
    # create/save the task in the repository
    @repository.create(task)
  end

  def mark_as_done
    # display the tasks to the user
    display_tasks
    # Ask the view to ask the user which index to mark
    index = @view.ask_for_index
    # find the specific task in the repository using the index
    task = @repository.find(index) # instance of a task
    # mark the task as done
    task.mark_as_done!
  end

  def remove
    # display the tasks to the user
    display_tasks
    # Ask the view to ask the user which index to mark
    index = @view.ask_for_index
    @repository.destroy(index)
  end

  private

  def display_tasks
    # get all the tasks from the repository
    tasks =  @repository.all
    # give the tasks to the view to display
    @view.display(tasks)
  end
end
