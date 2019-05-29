#!/usr/bin/env bash
while getopts t:p:s: option
do
case "${option}"
in
t) TEXT=${OPTARG};;
p) PREFIX=${OPTARG};;
s) SET=${OPTARG};;
esac
done

PROCESSED_TEXT=$(printf "$PREFIX$TEXT")

# $(expr 30 \* 2)

# 160/1024* 20
# 156.25/1000 * 
# 154/1024

TEXT_SCALE_RATIO=0.2
TEXT_KERNING_PROPORTION=-0.01953125
TEXT_BOTTOM_OFFSET=0.098


echo $PROCESSED_TEXT

SCALE_FACTOR=20
magick convert -size $SCALE_FACTORx$SCALE_FACTOR -page +0+0 ./raw/${SET}/icon_20pt.png -background transparent -fill '#515151' -font './assets/font.ttf' -gravity south -pointsize $(bc <<< "var=$SCALE_FACTOR;var*=$TEXT_SCALE_RATIO;var") -kerning $(bc <<< "var=$SCALE_FACTOR;var*=$TEXT_KERNING_PROPORTION;var") -draw "text 0,$(bc <<< "var=$SCALE_FACTOR;var*=$TEXT_BOTTOM_OFFSET;var") ${PROCESSED_TEXT}" -layers flatten icon_20pt.png
SCALE_FACTOR=40
magick convert -size $SCALE_FACTORx$SCALE_FACTOR -page +0+0 ./raw/${SET}/icon_20pt@2x.png -background transparent -fill '#515151' -font './assets/font.ttf' -gravity south -pointsize $(bc <<< "var=$SCALE_FACTOR;var*=$TEXT_SCALE_RATIO;var") -kerning $(bc <<< "var=$SCALE_FACTOR;var*=$TEXT_KERNING_PROPORTION;var") -draw "text 0,$(bc <<< "var=$SCALE_FACTOR;var*=$TEXT_BOTTOM_OFFSET;var") ${PROCESSED_TEXT}" -layers flatten icon_20pt@2x.png
SCALE_FACTOR=60
magick convert -size $SCALE_FACTORx$SCALE_FACTOR -page +0+0 ./raw/${SET}/icon_20pt@3x.png -background transparent -fill '#515151' -font './assets/font.ttf' -gravity south -pointsize $(bc <<< "var=$SCALE_FACTOR;var*=$TEXT_SCALE_RATIO;var") -kerning $(bc <<< "var=$SCALE_FACTOR;var*=$TEXT_KERNING_PROPORTION;var") -draw "text 0,$(bc <<< "var=$SCALE_FACTOR;var*=$TEXT_BOTTOM_OFFSET;var") ${PROCESSED_TEXT}" -layers flatten icon_20pt@3x.png
SCALE_FACTOR=29
magick convert -size $SCALE_FACTORx$SCALE_FACTOR -page +0+0 ./raw/${SET}/icon_29pt.png -background transparent -fill '#515151' -font './assets/font.ttf' -gravity south -pointsize $(bc <<< "var=$SCALE_FACTOR;var*=$TEXT_SCALE_RATIO;var") -kerning $(bc <<< "var=$SCALE_FACTOR;var*=$TEXT_KERNING_PROPORTION;var") -draw "text 0,$(bc <<< "var=$SCALE_FACTOR;var*=$TEXT_BOTTOM_OFFSET;var") ${PROCESSED_TEXT}" -layers flatten icon_29pt.png
SCALE_FACTOR=58
magick convert -size $SCALE_FACTORx$SCALE_FACTOR -page +0+0 ./raw/${SET}/icon_29pt@2x.png -background transparent -fill '#515151' -font './assets/font.ttf' -gravity south -pointsize $(bc <<< "var=$SCALE_FACTOR;var*=$TEXT_SCALE_RATIO;var") -kerning $(bc <<< "var=$SCALE_FACTOR;var*=$TEXT_KERNING_PROPORTION;var") -draw "text 0,$(bc <<< "var=$SCALE_FACTOR;var*=$TEXT_BOTTOM_OFFSET;var") ${PROCESSED_TEXT}" -layers flatten icon_29pt@2x.png
SCALE_FACTOR=87
magick convert -size $SCALE_FACTORx$SCALE_FACTOR -page +0+0 ./raw/${SET}/icon_29pt@3x.png -background transparent -fill '#515151' -font './assets/font.ttf' -gravity south -pointsize $(bc <<< "var=$SCALE_FACTOR;var*=$TEXT_SCALE_RATIO;var") -kerning $(bc <<< "var=$SCALE_FACTOR;var*=$TEXT_KERNING_PROPORTION;var") -draw "text 0,$(bc <<< "var=$SCALE_FACTOR;var*=$TEXT_BOTTOM_OFFSET;var") ${PROCESSED_TEXT}" -layers flatten icon_29pt@3x.png
SCALE_FACTOR=40
magick convert -size $SCALE_FACTORx$SCALE_FACTOR -page +0+0 ./raw/${SET}/icon_40pt.png -background transparent -fill '#515151' -font './assets/font.ttf' -gravity south -pointsize $(bc <<< "var=$SCALE_FACTOR;var*=$TEXT_SCALE_RATIO;var") -kerning $(bc <<< "var=$SCALE_FACTOR;var*=$TEXT_KERNING_PROPORTION;var") -draw "text 0,$(bc <<< "var=$SCALE_FACTOR;var*=$TEXT_BOTTOM_OFFSET;var") ${PROCESSED_TEXT}" -layers flatten icon_40pt.png
SCALE_FACTOR=80
magick convert -size $SCALE_FACTORx$SCALE_FACTOR -page +0+0 ./raw/${SET}/icon_40pt@2x.png -background transparent -fill '#515151' -font './assets/font.ttf' -gravity south -pointsize $(bc <<< "var=$SCALE_FACTOR;var*=$TEXT_SCALE_RATIO;var") -kerning $(bc <<< "var=$SCALE_FACTOR;var*=$TEXT_KERNING_PROPORTION;var") -draw "text 0,$(bc <<< "var=$SCALE_FACTOR;var*=$TEXT_BOTTOM_OFFSET;var") ${PROCESSED_TEXT}" -layers flatten icon_40pt@2x.png
SCALE_FACTOR=120
magick convert -size $SCALE_FACTORx$SCALE_FACTOR -page +0+0 ./raw/${SET}/icon_40pt@3x.png -background transparent -fill '#515151' -font './assets/font.ttf' -gravity south -pointsize $(bc <<< "var=$SCALE_FACTOR;var*=$TEXT_SCALE_RATIO;var") -kerning $(bc <<< "var=$SCALE_FACTOR;var*=$TEXT_KERNING_PROPORTION;var") -draw "text 0,$(bc <<< "var=$SCALE_FACTOR;var*=$TEXT_BOTTOM_OFFSET;var") ${PROCESSED_TEXT}" -layers flatten icon_40pt@3x.png
SCALE_FACTOR=120
magick convert -size $SCALE_FACTORx$SCALE_FACTOR -page +0+0 ./raw/${SET}/icon_60pt@2x.png -background transparent -fill '#515151' -font './assets/font.ttf' -gravity south -pointsize $(bc <<< "var=$SCALE_FACTOR;var*=$TEXT_SCALE_RATIO;var") -kerning $(bc <<< "var=$SCALE_FACTOR;var*=$TEXT_KERNING_PROPORTION;var") -draw "text 0,$(bc <<< "var=$SCALE_FACTOR;var*=$TEXT_BOTTOM_OFFSET;var") ${PROCESSED_TEXT}" -layers flatten icon_60pt@2x.png
SCALE_FACTOR=180
magick convert -size $SCALE_FACTORx$SCALE_FACTOR -page +0+0 ./raw/${SET}/icon_60pt@3x.png -background transparent -fill '#515151' -font './assets/font.ttf' -gravity south -pointsize $(bc <<< "var=$SCALE_FACTOR;var*=$TEXT_SCALE_RATIO;var") -kerning $(bc <<< "var=$SCALE_FACTOR;var*=$TEXT_KERNING_PROPORTION;var") -draw "text 0,$(bc <<< "var=$SCALE_FACTOR;var*=$TEXT_BOTTOM_OFFSET;var") ${PROCESSED_TEXT}" -layers flatten icon_60pt@3x.png
SCALE_FACTOR=76
magick convert -size $SCALE_FACTORx$SCALE_FACTOR -page +0+0 ./raw/${SET}/icon_76pt.png -background transparent -fill '#515151' -font './assets/font.ttf' -gravity south -pointsize $(bc <<< "var=$SCALE_FACTOR;var*=$TEXT_SCALE_RATIO;var") -kerning $(bc <<< "var=$SCALE_FACTOR;var*=$TEXT_KERNING_PROPORTION;var") -draw "text 0,$(bc <<< "var=$SCALE_FACTOR;var*=$TEXT_BOTTOM_OFFSET;var") ${PROCESSED_TEXT}" -layers flatten icon_76pt.png
SCALE_FACTOR=152
magick convert -size $SCALE_FACTORx$SCALE_FACTOR -page +0+0 ./raw/${SET}/icon_76pt@2x.png -background transparent -fill '#515151' -font './assets/font.ttf' -gravity south -pointsize $(bc <<< "var=$SCALE_FACTOR;var*=$TEXT_SCALE_RATIO;var") -kerning $(bc <<< "var=$SCALE_FACTOR;var*=$TEXT_KERNING_PROPORTION;var") -draw "text 0,$(bc <<< "var=$SCALE_FACTOR;var*=$TEXT_BOTTOM_OFFSET;var") ${PROCESSED_TEXT}" -layers flatten icon_76pt@2x.png
SCALE_FACTOR=167
magick convert -size $SCALE_FACTORx$SCALE_FACTOR -page +0+0 ./raw/${SET}/icon_83.5@2x.png -background transparent -fill '#515151' -font './assets/font.ttf' -gravity south -pointsize $(bc <<< "var=$SCALE_FACTOR;var*=$TEXT_SCALE_RATIO;var") -kerning $(bc <<< "var=$SCALE_FACTOR;var*=$TEXT_KERNING_PROPORTION;var") -draw "text 0,$(bc <<< "var=$SCALE_FACTOR;var*=$TEXT_BOTTOM_OFFSET;var") ${PROCESSED_TEXT}" -layers flatten icon_83.5@2x.png
SCALE_FACTOR=1024
magick convert -size $SCALE_FACTORx$SCALE_FACTOR -page +0+0 ./raw/${SET}/Icon.png -background transparent -fill '#515151' -font './assets/font.ttf' -gravity south -pointsize $(bc <<< "var=$SCALE_FACTOR;var*=$TEXT_SCALE_RATIO;var") -kerning $(bc <<< "var=$SCALE_FACTOR;var*=$TEXT_KERNING_PROPORTION;var") -draw "text 0,$(bc <<< "var=$SCALE_FACTOR;var*=$TEXT_BOTTOM_OFFSET;var") ${PROCESSED_TEXT}" -layers flatten Icon.png 

mv icon_20pt.png ./processed/AppIcon.appiconset
mv icon_20pt@2x.png ./processed/AppIcon.appiconset
mv icon_20pt@3x.png ./processed/AppIcon.appiconset
mv icon_29pt.png ./processed/AppIcon.appiconset
mv icon_29pt@2x.png ./processed/AppIcon.appiconset
mv icon_29pt@3x.png ./processed/AppIcon.appiconset
mv icon_40pt.png ./processed/AppIcon.appiconset
mv icon_40pt@2x.png ./processed/AppIcon.appiconset
mv icon_40pt@3x.png ./processed/AppIcon.appiconset
mv icon_60pt@2x.png ./processed/AppIcon.appiconset
mv icon_60pt@3x.png ./processed/AppIcon.appiconset
mv icon_76pt.png ./processed/AppIcon.appiconset
mv icon_76pt@2x.png ./processed/AppIcon.appiconset
mv icon_83.5@2x.png ./processed/AppIcon.appiconset
mv Icon.png ./processed/AppIcon.appiconset
