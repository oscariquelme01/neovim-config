local status_ok, telescope = pcall(require, "telescope")
if not status_ok then
    return
end


telescope.setup {
    pickers = {
        find_files = {
            hidden = true
            }
        },
    defaults = {
            file_ignore_patterns = {".git/", ".cache", "%.o", "%.a", "%.out", "%.class", "%.pdf", "%.mvk", "%.mp4", "%.zip", ".vscode/"},
        }
    }
