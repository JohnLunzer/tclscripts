array set yesno {1 Yes 0 No}

set test {
    {}
    {   }
    {2}
    {333}
    {.55}
    {tttTTT}
    {4444 444k}
    {jjjjjjj}
}

foreach {str} $test {    
    set strlist [split $str {}];
    set res [expr {1 == [llength [lsort -unique $strlist]]}]
    puts [format "Tested: %11s . All same? %s" "'$str'" $yesno($res)]
}
