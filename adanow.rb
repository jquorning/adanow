#!/usr/bin/env ruby
#
# license: MIT

doc_summary = <<DOC_SUMMARY
 > #{app} #{env} check
 > #{app} #{env} setup
 > #{app} #{install} GNAT        -- #{Install} the GNAT compiler and tools
 > #{app} #{install} GPRBuild    -- #{Install} the GPRBuild GNAT Project tools
 > #{app} #{install} GNATStudio  -- #{Install} the GNAT Studio IDE
 > #{app} #{install} Alire       -- #{Install} the Alire packaging tools
DOC_SUMMARY

def cmd_check
   # Check alr avaliability  
end

def show_versions
   system alr --version
   system gcc --version
   system gnatmake --version
   system gprbuild --version
end

def show_welcome_banner
   puts "Welcome to the world of Ada/SPARK programming."
   puts "More info https://ada-lang.io and https://alire.ada.dev."
   puts "Start with a fresh alire crate: $ alr init --bin my_crate"
end

def main
   install_alire
   # creat directory for alire
   # install alr at certain position
   # put license file somewhere
   # ensure alr is in PATH
   install_toolchain
   # run alr with install native toolchain command
   show_versions
   # show version of alr, gcc, gnatmake, gprbuild
   show_welcome_banner
   # show welcome text with url to how to get started
end

main
