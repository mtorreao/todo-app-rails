class TodoList < ApplicationRecord
  enable_cable_ready_updates
  has_many :todo_items, enable_cable_ready_updates: true, dependent: :destroy


  def completed_items
    todo_items.completed
  end

  def incomplete_items
    todo_items.incomplete
  end

  def todo_items_percent_completed
    return 0 if total_items.zero?

    ((total_completed.to_f * 100) / (total_items.to_f)).to_i
  end

  def total_completed
    @total_completed ||= todo_items.completed.count
  end

  def total_items
    @total_items ||= todo_items.count
  end

  def sorted_items
    todo_items.order(completed: :asc, description: :asc)
  end
end
