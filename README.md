# Title
nvim-lightLGP - Light neovim distro that begins with Completion, Mason, Lazy.nvim plugin manager and more!

# Why?
Because I spent a lot of time learning vim under the powerful preconfiguration of LazyNeovim (not to be confused with the plugin manager).
As my comfort with neovim grew, my desire to tweak my configurations did as well.  LazyVim is such a huge and beautiful pile of plugins
but it can be overwhelming for a new learner to tweak to make their own.  This pain point eventually led me to the very light and easily
understandable Kickstart distro, that basically gives you a lot less and lets you add the bells and whistles you want.

This is my attempt at that after all the learning I gained 'half configuring' what Teej lays out for us.  I've borrowed a lot of his template,
most especially within the LSP.lua code.  Both Folke and Teej are legends in the eyes of not only the neovim plugin community, but programming
in general.  I'm standing on the shoulders of those two (and many more) giants.

Even building my own kit with Kickstart started to become laggy and unresponsive.  Bugs started cropping up.  My cursor began flickering a lot.  As
a OG windows user I started to feel like it was time to wipe it all and begin anew.  And that's what I did.  No template at all.  A raw, init.lua-less
clean slate where I hand wrote nearly every line of code.  Starting with the 3 simple requires in init.lua and branching to those 3 lua tables. Aka
vimopts.lua, keybinds.lua and lazy.lua.  From there the tree grew beautifully and I watched and documented very closely the keybinds added with each plugin
to ensure no overlap.  I tried keeping every aspect as lightweight as possible.  The exceptions to this were the LSP, and the lualine theme.  I wanted
to give you all a LITTLE bling to get started.  Of course it's easily commentable to go back to default.  Or, delete the plugin file, run (C)lean in Lazy and
VIOLA! Closer to your own distro!

# Installation

1) Try it before you 'buy' it!
* clone the repo into something adjacent to your current neovim config, aka:
```git clone https://github.com/BigJayToDaIzo/nvim-lightLGP ~/.config/nvim-lightLGP/```
`NVIM-APPNAME=nvim-lightLGP nvim`
> Watch as beautiful IDE unfolds

2) If/When you love it you can either back up your existing nvim/ folder, and clone this right in there instead
`mv ~/.config/nvim ~/.config/nvim-bak`
`git clone https://github.com/BigJayToDaIzo/nvim-lightLGP ~/.config/nvim`
`nvim`
> Watch as a beautiful IDE unfolds with your old config safely beside it


# Help

The help begins here, radiates into each and every lua file under the lua directory and from within those deep dives into the neovim documentation.
I wanted to lean HEAVILY into neovim docs to help you understand what is going on throughout this code.  So hopefully you too can begin from vanilla
and craft your very own masterpiece.  THIS is the ultimate goal.  A temporary stop to help you get work done faster, so that you can then build your
own if my codebase ever becomes laggy or confusing to you.

# Important links

The bulk of my inspiration came from the following:

Folke, may your LazyVim distro bring many more into the fold
Distro: https://github.com/LazyVim/LazyVim
Plugin Manager: https://github.com/folke/lazy.nvim

TJ Devries, may you read the friendly manual to any who will hear it

