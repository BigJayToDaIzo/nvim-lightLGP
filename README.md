# nvim-lightLGP
* Light neovim distro that puts YOU in at Command Central with Completion, Mason, Lazy.nvim plugin manager. We also give you Lua, Go and Python LSP, linting, formatting and more.
# Why Lua, Go and Python (LGP)?
* Lua and Python are deeply nested in the checkhealth process to keep Neovim operating smoothly.  Go is the language I'm currently building projects with and can test things like Debuggers, LSP engines and linting/parsing. Go is easily commentable.  I do not recommend commenting Lua or Python.

# Why a new distro though?
The ecosystem already has dozens of fabulous distros ready to go!  Why another? Because I did my best to keep things light, simple and MANAGEABLE going forward.  Plugins are largely set to use all defaults with help in the comments on where to get more info. I did my best to make sure you could easily remove and customize each, from the ground up so you fully understand the code that powers your IDE.

Because I spent a lot of time learning vim under the powerful, preconfigured LazyVim distro (not to be confused with the plugin manager) written by Folke. As my comfort with neovim grew, my desire to tweak my configurations did as well.  LazyVim is such a huge and beautiful pile of plugins but it can be overwhelming for a new learner to tweak to make their own.  This pain point eventually led me to the very light and easily understandable Kickstart distro that basically gives you a lot less and lets you add the bells and whistles you want.

Even building my own kit with Kickstart started to become laggy and unresponsive.  Bugs started cropping up. I was packing on new plugins willy nilly, not being mindful of how colluded my keymaps were becoming.  My cursor began flickering a lot.  As a OG windows user I started to feel like it was time to wipe it all and begin anew.  And that's what I did.  No template at all.  A raw, init.lua-less clean slate where I hand wrote nearly every line of code.  Starting with the 3 simple requires in `init.lua` and branching to those 3 lua tables. Aka `vimopts.lua`, `keybinds.lua` and `lazy.lua`.  From there the tree grew beautifully and I watched and documented very closely the keybinds added with each plugin to ensure no overlap.  I tried keeping every aspect as lightweight as possible.  The exceptions to this were the LSP, and the lualine theme.  I wanted to give you all a LITTLE bling to get started in terms of Lualine. In terms of LSP, that's a complex topic that requires we spend hours in the documentation of neovim AND the plugins we use.

This is my attempt at a simple, highly configurable soft place to land, after all the learning I gained tweaking LazyVim and 'half configuring' what Teej laid out for me.  I've borrowed a fair sum of his template, most especially within the LSP.lua code.  Both Folke and Teej are legends in the eyes of not only the neovim plugin community, but programming in general.  I'm standing on the shoulders of those two (and many more) giants.


# Installation

1) Try it before you 'buy' it!
---
* clone the repo into something adjacent to your current neovim config:
```
git clone https://github.com/BigJayToDaIzo/nvim-lightLGP ~/.config/nvim-lightLGP/
```
```
NVIM-APPNAME=nvim-lightLGP nvim
```
> Watch as a beautiful IDE unfolds with your old config safely beside it, `:q` to quit Lazy Manager. `<leader>sk` to search keybinds. Go wild. Hint: Leader is set to space out of the box, you can change this in `lua/config/vimopts.lua`. Don't resist, just join us at the Space Bar. We have cookies.

2) If/When you love it you can back up your existing nvim/ folder, and clone LGP right into `~/.config/nvim` instead.
---
```
mv ~/.config/nvim ~/.config/nvim-bak && rm -rf ~/.config/nvim
```
```
git clone https://github.com/BigJayToDaIzo/nvim-lightLGP ~/.config/nvim
```
```
nvim
```
> Watch as a beautiful IDE unfolds. `:q` to quit Lazy Manager. `<leader>sk` to search keybinds. Go wild.

3) If you did #1 and aren't feeling it, you simply delete the cloned repo and continue on your merry way.  No hard feelings I swear!
---
```
rm -rf ~/.config/nvim-lightLGP
```


# Help

The help begins here, radiates into each and every lua file under `~/.config/nvim` and from within those plugin comments you can deep dive into the neovim documentation.  I wanted to lean HEAVILY into neovim docs to help you understand what is going on throughout this code.  So hopefully you too can begin from vanilla and craft your very own masterpiece.  THIS is the ultimate goal.  A temporary stop to help you get work done faster, so that you can then build your own if my codebase, and your customization of it ever becomes stale, laggy or confusing to you.

# Important links

The bulk of my inspiration came from the following:

1 Folke, may your LazyVim distro bring many more into the fold
- Distro: https://github.com/LazyVim/LazyVim
- Plugin Manager: https://github.com/folke/lazy.nvim

2 TJ Devries, may you always read the friendly manual to any who will hear it

- Distro: https://github.com/nvim-lua/kickstart.nvim

