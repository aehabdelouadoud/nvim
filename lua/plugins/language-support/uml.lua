return {
  'SebastiaanBooman/botanist.nvim',
  opts = {
    -- Required settings
    -- When to re-generate (overwrite) the diagram file. choose between:
    -- save
    -- change (currently broken)
    -- disabled
    auto_refresh_event = 'save',
    -- Whether to automatically start a feh process when a PlantUML buffer is opened.
    start_image_viewer_on_buf_enter = true,
    -- Whether to automatically kill a feh process when a PlantUML buffer or neovim is closed. Only kills a feh process if it exists.
    kill_image_viewer_on_buf_leave = true,
    -- Options for the output image
    image = {
      -- Toggle darkmode
      darkmode = false,
      -- Choose between png or svg
      format = 'png',
    },
    -- Optional settings
    -- Used for the refocus_terminal.sh script to refocus to the previously active terminal. If omitted, no attempt is made to refocus the terminal
    terminal_emulator = 'Alacritty', -- change to the emulator you are using for neovim
    -- If omitted, a Plant UML .jar file is expected to be available through $PATH
    plant_uml_jar_path = '$HOME/src/plantuml/build/libs/plantuml-1.2025.1beta3.jar',
  },
}
