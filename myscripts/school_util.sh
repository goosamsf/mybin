#!/bin/zsh

#list zoom links
zoom () {
  OPENTARGET=$(cat /Users/jun/bin/links/zoom  | fzf | awk '{print $1}')
  case $OPENTARGET in
    OS_Professor)
      open https://canvas.calpoly.edu/courses/116675/modules/items/3307442
      ;;
    OS_TA_LUCAS)
      ;;
    ART_Lecture)
      open https://calpoly.zoom.us/j/82386401518
      ;;
  esac
}

#go to canvas 
sch() {
  OPENTARGET=$(cat /Users/jun/bin/links/canvas | fzf )
  case $OPENTARGET in
    ART_101)
      open https://canvas.calpoly.edu/courses/119481
      ;;
    CSC_453)
      open https://canvas.calpoly.edu/courses/116675
      ;;
    CSC_569)
      open https://canvas.calpoly.edu/courses/116774/modules
      ;;
    SENIOR)
      vim /Users/jun/school/SeniorProject/sp.md
      ;;
  esac
}

