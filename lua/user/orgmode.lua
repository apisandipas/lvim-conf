
local M = {}

M.config = function()
  local status_ok, orgmode = pcall(require, "orgmode")
  if not status_ok then
    return
  end

  orgmode.setup({
    org_agenda_file = {'~/Dropbox/org/*'},
    org_default_notes_file = '~/Dropbox/org/notes.org',
  })

end

return M

