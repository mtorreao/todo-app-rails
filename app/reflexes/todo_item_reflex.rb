# frozen_string_literal: true

class TodoItemReflex < ApplicationReflex
  def toggle
    todo_item = TodoItem.find(element.dataset[:id])
    todo_item.completed? ? todo_item.mark_incomplete : todo_item.mark_complete
    morph "#todo_list_items", TodoListsController.render(partial: "todo_list_items", locals: { todo_list: todo_item.todo_list })
  end

  def delete
    todo_item = TodoItem.find(element.dataset[:id])
    todo_item.destroy
    morph "#todo_list_items", TodoListsController.render(partial: "todo_list_items", locals: { todo_list: todo_item.todo_list })
  end
end
