class TodoItem < ApplicationRecord
  enable_cable_ready_updates
  belongs_to :todo_list

  def mark_complete
    update(completed: true)
  end

  def mark_incomplete
    update(completed: false)
  end

  scope :completed, -> do
    where(completed: true)
  end

  scope :incomplete, -> do
    where(completed: false)
  end
end
