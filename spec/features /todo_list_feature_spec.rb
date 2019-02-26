require 'todolist'
require 'todo'

RSpec.describe 'User Stories' do 
  let(:todolist){ TodoList.new }
  let(:todo){ Todo.new }
  
  
  it 'allows user to add a todo' do 
    expect(todolist).to respond_to(:add_todo).with(1).arguments
  end
  
  it 'stores todos' do 
    todolist.add_todo("TestTodo")
    expect(todolist.todos.length).to eq(1)
  end 

  it 'prints a list of todos' do 
    3.times { todolist.add_todo('TestTodo') }
    expect(todolist.print_todos).to eq "TestTodo\nTestTodo\nTestTodo"
  end
end 

