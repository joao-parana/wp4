cat $1.xml |  sed  "s/wp:/wp__M__/g" | sed "s/dc:/dc__M__/g"  | sed "s/excerpt:/excerpt__M__/g"  | sed "s/content:/content__M__/g" > $1-01.xml

