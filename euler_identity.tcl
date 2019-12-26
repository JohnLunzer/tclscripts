set ns complex
catch {namespace delete $ns} ;# Start with a clean namespace

# Set up complex sandbox
namespace eval $ns {
    package require math::complexnumbers
    foreach n {+ exp complex real imag} {namespace import ::math::complexnumbers::$n}

    set pi [expr {acos(-1)}]

    set r [+ [exp [complex 0 $pi]] [complex 1 0]]
    puts "e**(pi*i) = [real $r]+[imag $r]i"
}
