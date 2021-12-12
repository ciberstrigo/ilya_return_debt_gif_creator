#!/bin/bash
message="ИЛЮХА ВЕРНИ ДОЛГ"
font_size=50
edging=1

render () {
        #params
        source=$1
        destination=$2
        #end params
        convert $source  \
        \-font ./Impact.ttf -pointsize $font_size -gravity South \
        -fill black \
        -annotate +0+"$(expr 2 + $edging)" "${message}" \
        -annotate +0+"$(expr 2 - $edging)" "${message}" \
        -annotate -$edging+0 "${message}" \
        -annotate +$edging+0 "${message}" \
        -fill white -annotate +0+2 "${message}" \
        $destination
}
