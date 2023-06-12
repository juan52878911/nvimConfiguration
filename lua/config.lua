vim.notify = require("notify")

-- Configuración de apariencia
vim.o.number = true -- Muestra números de línea
vim.o.relativenumber = true -- Muestra números de línea relativos
vim.o.cursorline = true -- Resalta la línea actual
vim.o.showmatch = true -- Muestra el paréntesis o corchete correspondiente
vim.o.list = true -- Muestra caracteres de espacio y tabulación
vim.o.listchars = "tab:▸ ,trail:·,extends:»,precedes:«" -- Caracteres especiales para espacios y tabulaciones
vim.o.foldcolumn = "1" -- Muestra una columna de plegado
-- vim.o.colorcolumn = "80" -- Muestra una línea vertical en la columna 80

-- Configuración de los espacios de tabulación
vim.o.tabstop = 4 -- Número de espacios por tabulación
vim.o.shiftwidth = 4 -- Número de espacios para la indentación
vim.o.expandtab = true -- Usa espacios en lugar de tabulaciones

-- Configuración de búsqueda y resaltado
vim.o.ignorecase = true -- Ignora mayúsculas y minúsculas en la búsqueda
vim.o.smartcase = true -- Cambia a búsqueda sensible a mayúsculas si se utiliza mayúscula
vim.o.hlsearch = true -- Resalta los resultados de búsqueda
vim.o.scrolloff = 8 -- Deja un margen de 8 lineas al scrollear

-- Backup
vim.o.backup = true
vim.o.backupdir = vim.fn.expand("~/.cache/nvim/backup")
