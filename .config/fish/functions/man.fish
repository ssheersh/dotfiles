function man
  if test (count $argv) -ge 1; and test $argv[1] = "-d"
    command man $argv[2..-1]
  else
    tldr $argv
  end
end

