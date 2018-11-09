command: "ESC=`printf \"\e\"`; ps -A -o %mem | awk '{s+=$1} END {print \"\" s}'"

refreshFrequency: 30000 # ms

render: (output) ->
  "<div class='screen'><div class='bright1'><i class='fas fa-memory'></i>#{output}</div></div>"

style: """
  i{
    padding-right: 6px;
  }
"""
