local db = require('dashboard')
db.preview_file_height = 11
db.preview_file_width = 70
db.custom_center = {
  {
    icon = "  ",
    desc = "By default                                ",
    action = "NERDTreeToggle",
    shortcut = '<C-n>'
  },
  { icon = '  ',
    desc = 'Recently latest session                 ',
    shortcut = 'SPC s l',
    action = 'SessionLoad' },
  { icon = '  ',
    desc = 'Recently opened files                   ',
    shortcut = 'SPC f h' },
  { icon = '  ',
    desc = 'Find  File                              ',
    shortcut = 'SPC f f' },
  { icon = '  ',
    desc = 'File Browser                            ',
    shortcut = 'SPC f b' },
  { icon = '  ',
    desc = 'Find  word                              ',
    shortcut = 'SPC f w' },
  { icon = '  ',
    desc = 'Open Personal dotfiles                  ',
    shortcut = 'SPC f d' },
}
