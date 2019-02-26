require 'todo'

RSpec.describe Todo do 
  it 'takes text that needs doing' do
    todo = Todo.new('walk the dog') 
    expect(todo.message).to eq 'walk the dog'
  end 
end 