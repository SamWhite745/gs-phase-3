class TaskFormatter
  def initialize(task)
    @task = task
  end

  def format
    @task.complete? ? "[X] #{@task.title}" : "[ ] #{@task.title}"
  end
end