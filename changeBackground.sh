#! /bin/bash
# feh --bg-max $(find ~/.kass/backgrounds -type f | fzf)

if [ "$1" == "0" ]
then
    if [ -f ~/.kass/backgrounds/anime1.jpg ]
    then
        feh --bg-scale ~/.kass/backgrounds/anime1.jpg
    elif [ -f ~/.kass/backgrounds/anime1.png ]
    then
        feh --bg-scale ~/.kass/backgrounds/anime1.png
    fi
fi

declare -i imageNumber=$(cat ~/.fehbg | head -2 | tail -1 | tr -d -c 0-9) 
imageNumber=$((imageNumber+$1))

declare -i numberOfImages=$(ls ~/.kass/backgrounds/  -1 | wc -l)

if [ $imageNumber -gt $numberOfImages ]
then
    imageNumber=1
elif [ $imageNumber -lt 1 ]
then
    imageNumber=$numberOfImages
fi

if [ -f ~/.kass/backgrounds/anime${imageNumber}.jpg ]
then
    feh --bg-scale ~/.kass/backgrounds/anime${imageNumber}.jpg
elif [ -f ~/.kass/backgrounds/anime${imageNumber}.png ]
then
    feh --bg-scale ~/.kass/backgrounds/anime${imageNumber}.png
fi
