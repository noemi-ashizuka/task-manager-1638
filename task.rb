class Task
  attr_reader :description
  # state
  def initialize(description)
    @description = description # string
    @done = false
  end

  # behaviour
  def done?
    @done
  end

  def mark_as_done!
    @done = true
  end
end

# task.done?