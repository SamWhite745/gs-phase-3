require "task_list"

RSpec.describe TaskList do
  it "initially has an empty list" do
    task_list = TaskList.new
    expect(task_list.all).to eq []
  end

  it "is initially not all complete" do
    task_list = TaskList.new
    expect(task_list.all_complete?).to eq false
  end

  # Unit test `#all` and `#all_complete?` behaviour
  it "adds tasks and returns them all" do
    task_list = TaskList.new
    fake_task_1 = double :fake_task_1
    fake_task_2 = double :fake_task_2

    task_list.add(fake_task_1)
    task_list.add(fake_task_2)

    expect(task_list.all).to eq [fake_task_1,fake_task_2]
  end

  it "adds completed tasks and returns true with all_complete" do
    task_list = TaskList.new
    fake_task_1 = double :fake_task_1, complete?: true
    fake_task_2 = double :fake_task_2, complete?: true

    task_list.add(fake_task_1)
    task_list.add(fake_task_2)

    expect(task_list.all_complete?).to eq true
    fake_task_3 = double :fake_task_3, complete?: false
    task_list.add(fake_task_3)
    expect(task_list.all_complete?).to eq false

  end
end
