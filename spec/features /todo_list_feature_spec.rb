require 'todolist'
require 'todo'

RSpec.describe 'User Stories' do 
  it 'allows user to add a todo' do 
  todolist = TodoList.new
  todo = Todo.new
    expect(todolist).to respond_to(:add_todo).with(1).argument
  end 
end 

