OUTDIR=.
WORKDIR="${OUTDIR}/tmp"
LOGO=logo.png
LOGO_WIDTH=$(identify $LOGO | cut -d " " -f 3 | cut -d x -f 1)
LOGO_HEIGHT=$(identify $LOGO | cut -d " " -f 3 | cut -d x -f 2)
THROBBER=spinner.gif
THROBBER_WIDTH=$(identify $THROBBER | head -1 | cut -d " " -f 3 | cut -d x -f 1)
THROBBER_HEIGHT=$(identify $THROBBER | head -1 | cut -d " " -f 3 | cut -d x -f 2)
convert -alpha remove -background "#000000"	$LOGO "${OUTDIR}"/logo.rgb
convert -alpha remove -background "#000000" $THROBBER "${OUTDIR}"/throbber%02d.rgb
./bootsplash-packer \
--bg_red 0x00 \
--bg_green 0x00 \
--bg_blue 0x00 \
--frame_ms 48 \
--picture \
--pic_width $LOGO_WIDTH \
--pic_height $LOGO_HEIGHT \
--pic_position 0 \
--blob "${OUTDIR}"/logo.rgb \
--picture \
--pic_width $THROBBER_WIDTH \
--pic_height $THROBBER_HEIGHT \
--pic_position 0x05 \
--pic_position_offset 200 \
--pic_anim_type 1 \
--pic_anim_loop 0 \
--blob "${WORKDIR}"/throbber00.rgb \
--blob "${WORKDIR}"/throbber01.rgb \
--blob "${WORKDIR}"/throbber02.rgb \
--blob "${WORKDIR}"/throbber03.rgb \
--blob "${WORKDIR}"/throbber04.rgb \
--blob "${WORKDIR}"/throbber05.rgb \
--blob "${WORKDIR}"/throbber06.rgb \
--blob "${WORKDIR}"/throbber07.rgb \
--blob "${WORKDIR}"/throbber08.rgb \
--blob "${WORKDIR}"/throbber09.rgb \
--blob "${WORKDIR}"/throbber10.rgb \
--blob "${WORKDIR}"/throbber11.rgb \
--blob "${WORKDIR}"/throbber12.rgb \
--blob "${WORKDIR}"/throbber13.rgb \
--blob "${WORKDIR}"/throbber14.rgb \
--blob "${WORKDIR}"/throbber15.rgb \
--blob "${WORKDIR}"/throbber16.rgb \
--blob "${WORKDIR}"/throbber17.rgb \
--blob "${WORKDIR}"/throbber18.rgb \
--blob "${WORKDIR}"/throbber19.rgb \
--blob "${WORKDIR}"/throbber20.rgb \
--blob "${WORKDIR}"/throbber21.rgb \
--blob "${WORKDIR}"/throbber22.rgb \
--blob "${WORKDIR}"/throbber23.rgb \
--blob "${WORKDIR}"/throbber24.rgb \
--blob "${WORKDIR}"/throbber25.rgb \
--blob "${WORKDIR}"/throbber26.rgb \
--blob "${WORKDIR}"/throbber27.rgb \
--blob "${WORKDIR}"/throbber28.rgb \
--blob "${WORKDIR}"/throbber29.rgb \
--blob "${WORKDIR}"/throbber30.rgb \
--blob "${WORKDIR}"/throbber31.rgb \
--blob "${WORKDIR}"/throbber32.rgb \
--blob "${WORKDIR}"/throbber33.rgb \
--blob "${WORKDIR}"/throbber34.rgb \
--blob "${WORKDIR}"/throbber35.rgb \
--blob "${WORKDIR}"/throbber36.rgb \
--blob "${WORKDIR}"/throbber37.rgb \
--blob "${WORKDIR}"/throbber38.rgb \
--blob "${WORKDIR}"/throbber39.rgb \
--blob "${WORKDIR}"/throbber40.rgb \
--blob "${WORKDIR}"/throbber41.rgb \
--blob "${WORKDIR}"/throbber42.rgb \
--blob "${WORKDIR}"/throbber43.rgb \
--blob "${WORKDIR}"/throbber44.rgb \
--blob "${WORKDIR}"/throbber45.rgb \
--blob "${WORKDIR}"/throbber46.rgb \
--blob "${WORKDIR}"/throbber47.rgb \
--blob "${WORKDIR}"/throbber48.rgb \
--blob "${WORKDIR}"/throbber49.rgb \
--blob "${WORKDIR}"/throbber50.rgb \
--blob "${WORKDIR}"/throbber51.rgb \
--blob "${WORKDIR}"/throbber52.rgb \
--blob "${WORKDIR}"/throbber53.rgb \
--blob "${WORKDIR}"/throbber54.rgb \
--blob "${WORKDIR}"/throbber55.rgb \
--blob "${WORKDIR}"/throbber56.rgb \
--blob "${WORKDIR}"/throbber57.rgb \
--blob "${WORKDIR}"/throbber58.rgb \
--blob "${WORKDIR}"/throbber59.rgb \
--blob "${WORKDIR}"/throbber60.rgb \
--blob "${WORKDIR}"/throbber61.rgb \
--blob "${WORKDIR}"/throbber62.rgb \
--blob "${WORKDIR}"/throbber63.rgb \
--blob "${WORKDIR}"/throbber64.rgb \
--blob "${WORKDIR}"/throbber65.rgb \
--blob "${WORKDIR}"/throbber66.rgb \
--blob "${WORKDIR}"/throbber67.rgb \
--blob "${WORKDIR}"/throbber68.rgb \
--blob "${WORKDIR}"/throbber69.rgb \
--blob "${WORKDIR}"/throbber70.rgb \
--blob "${WORKDIR}"/throbber71.rgb \
--blob "${WORKDIR}"/throbber72.rgb \
--blob "${WORKDIR}"/throbber73.rgb \
--blob "${WORKDIR}"/throbber74.rgb \
bootsplash.armbian
