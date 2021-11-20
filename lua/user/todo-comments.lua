local M = {}

M.config = function()
  local status_ok, todos = pcall(require, "todo-comments")
  if not status_ok then
    return
  end
  todos.setup()
end

return M
