require "task_formatter"

RSpec.describe TaskFormatter do
  it "initializes" do
    fake_task_1 = double :fake_task_1, title: "task title", complete?: false
    fake_task_2 = double :fake_task_2, title: "task title", complete?: true
    
    task_formatter_1 = TaskFormatter.new(fake_task_1)
    task_formatter_2 = TaskFormatter.new(fake_task_2)
    expect(task_formatter_1.format).to eq "[ ] task title"
    expect(task_formatter_2.format).to eq "[X] task title"
  end
end