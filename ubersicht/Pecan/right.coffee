command: "date +\"%H%:%M\""

refreshFrequency: 60000 # ms

style:"""
  i{
    padding-right: 2px;
  }
"""

render: (output) ->
  "<div class='screen'><div class='right'><i class='far fa-clock'></i>#{output}</div></div>"