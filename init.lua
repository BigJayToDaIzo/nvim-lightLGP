-- NOTE: Where it all begins.
-- 1) Load basic vim options prior to ANYTHING else
require("config.vimopts")
-- 2) Set non plugin specific keymaps
require("config.keymaps")
-- 3) Load Lazy Plugin Manager
require("config.lazy")
