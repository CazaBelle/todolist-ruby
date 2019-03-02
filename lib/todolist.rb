require 'pry'_

class TodoList 
attr_reader :todos

  def initialize 
    @todos = []
  end

  def add_todo(message, todo = Todo)
    @todos.push(todo.new(message))
  end 

  def print_todos
   result = @todos.map{ |todo| todo.message }
   result.join("\n")
  end
end

