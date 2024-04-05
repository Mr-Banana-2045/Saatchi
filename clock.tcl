set morning "06:00"
set endmor "12:00"                                                                                                                   set afternoon "13:00"
set endaf "18:00"
set night "19:00"
set endni "00:00"

set ms [clock format [clock seconds] -format "%H:%M"]
set output_text [clock scan $ms -format "%H:%M"]

for {set h 0} {$h <= 0} {incr h} {
    if {$output_text >= [clock scan $morning -format "%H:%M"] && $output_text <= [clock scan $endmor -format "%H:%M"]} {
      puts "good night $ms"
  } elseif {$output_text >= [clock scan $afternoon -format "%H:%M"] && $output_text <= [clock scan $endaf -format "%H:%M"]} {
      puts "good afternoon $ms"
  } elseif {$output_text >= [clock scan $night -format "%H:%M"] && $output_text <= [clock scan $endni -format "%H:%M"]} {
      puts "good morning $ms"
  }
}
