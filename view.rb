class View
  def display(tasks)
    tasks.each_with_index do |task, index|
      puts "#{index + 1}) [#{task.done? ? "X" : " "}] #{task.description}"
    end
  end

  def ask_for_description
    puts "What's the task?"
    gets.chomp
  end

  def ask_for_index
    puts "What's the number?"
    gets.chomp.to_i - 1
  end
end
