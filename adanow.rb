
#!/usr/bin/env ruby
#
# license: MIT

App     = "AdaNow"
app     = App.downcase
Install = "Install"
install = Install.downcase
Env     = "Environment"
env     = Env.downcase

CMD = [ :env, :inst ]
Cmd = [ :env => "Environment", :inst => "Install" ]

cmd = Cmd.each do | k, v |
   k.to_s.downcase
end

puts cmd

# environment = env

doc_tldr = <<DOC_TLDR
 > #{app} #{env} setup
 > #{app} #{install} all
or simply
 > #{app} setup
DOC_TLDR

doc_summary = <<DOC_SUMMARY
 > #{app} #{env} check
 > #{app} #{env} setup
 > #{app} #{install} GNAT        -- #{Install} the GNAT compiler and tools
 > #{app} #{install} GPRBuild    -- #{Install} the GPRBuild GNAT Project tools
 > #{app} #{install} GNATStudio  -- #{Install} the GNAT Studio IDE
 > #{app} #{install} Alire       -- #{Install} the Alire packaging tools
DOC_SUMMARY

puts ""
puts "#{App} -- The Homebrew Ada installer for macOS                      "
puts "--                                                                          "
puts ""
puts "tl;dr;                                                                      "
puts "----                                                                        "
puts doc_tldr
puts
puts "The not so short version"
puts "----"
puts doc_summary
puts
puts "Usage                                                                       "
puts "----                                                                        "
puts "   #{app} #{install} [ GNAT | GPRBuild | GNATStudio | Alire ]               "
