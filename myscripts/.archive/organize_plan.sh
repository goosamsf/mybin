#!/bin/zsh

# Open dayterminal note and send outdated note to archive.
dt () {
  TODAY=$(date "+%Y%m%d")
  WEEKNUM=$(date +%W)
  MMDIR="/Users/jun/mybrain/7. mymanager"
  
  if [ -f $MMDIR/$TODAY.md ]
  then
    vim /Users/jun/mybrain/7.\ mymanager/$TODAY.md
  else
    cat /Users/jun/mybrain/5.\ etc/z.\ template/Daily\ Terminal.md > /Users/jun/mybrain/7.\ mymanager/$TODAY.md && echo Daily File Created
    [ -f /Users/jun/mybrain/7.\ mymanager/week$WEEKNUM.md ] || (cat /Users/jun/bin/templates/week > /Users/jun/mybrain/7.\ mymanager/week$WEEKNUM.md && echo Weekly File Created)
    for FILE in "$MMDIR"/*; do
      [ $FILE = $MMDIR/$TODAY.md ] && continue
      [ $FILE = $MMDIR/week$WEEKNUM.md ] && continue
      mv $FILE /Users/jun/mybrain/7.\ mymanager/.archive
      echo MOVE \"$FILE\" INTO archive
    done
    
  fi
}

wt (){
  WEEKNUM=$(date +%W)
  [ -f week$WEEKNUM.md ] && vim /Users/jun/mybrain/7.\ mymanager/week$WEEKNUM.md
  
}

