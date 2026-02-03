return {
  -- 1. Instalar el tema Dracula
  {
    "Mofiqul/dracula.nvim",
    priority = 1000,
    opts = {
      transparent_bg = true, -- Cambia a false si quieres el fondo gris original
      italic_comment = true, -- Comentarios en cursiva (se ve genial)
      -- Puedes personalizar colores específicos aquí si quisieras
    },
  },

  -- 2. Decirle a LazyVim que use Dracula por defecto
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "dracula",
    },
  },
}
