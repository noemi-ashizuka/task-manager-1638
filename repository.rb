class Repository
  # attr_reader :tasks
  # state
  def initialize
    @tasks = []
  end

  # behaviour

  def all
    @tasks
  end

  def find(index)
    @tasks[index]
  end

  def create(task)
    @tasks << task
  end

  def destroy(index)
    @tasks.delete_at(index)
  end
end
