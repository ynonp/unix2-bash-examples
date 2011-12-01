BEGIN {
    OFS=""
}

{
    CMD=$1
    $1=""
    print "alias ",CMD,"=",$0
}
