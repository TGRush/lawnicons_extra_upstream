#!/bin/sh
# Welcome to the most retarded script in existence which I only wrote as I'm too lazy to sort out issues myself rE
awk -v n=1 'NR==FNR{total=NR;next} FNR==total-n+1{exit} 1' app/src/main/res/xml/grayscale_icon_map.xml app/src/main/res/xml/grayscale_icon_map.xml >> temp.txt && mv temp.txt app/src/main/res/xml/grayscale_icon_map.xml
cat patches.xml >> app/src/main/res/xml/grayscale_icon_map.xml
echo "added strings to grayscale_icon_map.xml"
echo "adding VectorGraphics or whatever they're called..."
git clone https://github.com/TGRush/lawnicons_extra_upstream.git -b Vectors app/src/main/res/drawable/vectors
mv "app/src/main/res/drawable/vectors/*" "app/src/main/res/drawable/"
rm -rf app/src/main/res/drawable/vectors
echo "try building now :)"
