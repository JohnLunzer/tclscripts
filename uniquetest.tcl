proc uniqueList2 {list} {
  foreach item $list {
    dict set uniq $item ""
  }
  dict keys $uniq
}

proc uniqueList3 {list} {
  set new {}
  foreach item $list {
    if {$item ni $new} {
      lappend new $item
    }
  }
  return $new
}

proc uniqueList_keys {list} {
    dict keys $list
}

set test [lrepeat 1000 {*}[split "this is my test data" ""]]; return -level 0
set test2 [concat {*}[lmap i $test {list $i {}}]]
set n 100
puts [time {puts [llength [uniqueList2 $test]]} $n]
puts [time {puts [llength [uniqueList3 $test]]} $n]
puts [time {puts [llength [uniqueList_keys $test]]} $n]
