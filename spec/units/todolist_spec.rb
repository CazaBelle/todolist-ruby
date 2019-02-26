require 'todolist'
require 'mocktodo'

RSpec.describe TodoList do 
  let(:todolist){ TodoList.new }
  let(:mocktodo){ MockTodo.new("walk the dog")}
  
  it 'can add a todo' do 
    expect(todolist).to respond_to(:add_todo).with(1).argument 
  end 

  it 'can store a todo' do 
   todolist.todos.push(mocktodo)
    expect(todolist.todos).to eq [mocktodo]
  end 

end 