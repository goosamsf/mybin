#!/bin/zsh

dt() {

  WEEKNUM=$(date +%U)
  DAYNUM=$(date +%u)
  FILENAME=WEEK$WEEKNUM.md
  MMDIR="/Users/jun/mybrain/7. mymanager"
  WEEKDAYS=("Mon" "Tue" "Wed" "Thu" "Fri" "Sat" "Sun")
  GOGO="${WEEKDAYS[$DAYNUM]}"

  if [ -f $MMDIR/$FILENAME ];then
    NUM=$(grep -n $GOGO $MMDIR/$FILENAME | awk -F ':' '{print $1}')  
    vim $MMDIR/$FILENAME +$NUM -c "normal zt" 
  else
    mv $MMDIR/*.md .archive
    echo FILE DOES NOT EXIST.
    touch $MMDIR/$FILENAME
    echo WEEK$WEEKNUM >> $MMDIR/$FILENAME
    printf "\n\n" >> $MMDIR/$FILENAME
    today=$(date +"%Y-%m-%d")

    for ((i = 0; i < 7; i++)); do
      next_date=$(date -v+"$((i+1))d" -j -f "%Y-%m-%d" "$today" +"%m-%d-%Y")
      echo "### ${WEEKDAYS[$i + 1]} : $next_date" >> $MMDIR/$FILENAME
      printf "- \n- \n- \n- \n- \n- \n- \n- \n- \n- \n" >>$MMDIR/$FILENAME
    done
    echo $FILENAME, CREATED.
    
  fi

}


