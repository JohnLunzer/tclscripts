set str {abcdeef}
set strlist [split $str {}];

set res [expr {[llength [lsort $strlist]] == [llength [lsort -unique $strlist]]}]
