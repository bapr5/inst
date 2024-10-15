#!/bin/bash
generate_random() {
    local multiplier=$1
    echo $((23 + multiplier * RANDOM / 32768))
}

#str1=$(generate_random 3)&
#str1=$(generate_random 3)&
#str2=$(generate_random 3)&
#str3=$(generate_random 3)&
#str4=$(generate_random 3)&
#str5=$(generate_random 3)&
#str6=$(generate_random 17)&
#str7=$(generate_random 3)&
#str8=$(generate_random 3)

# url="file://$(pwd)/site/index.html"


# firefox "$url" 

random_values=$(generate_random 3)

for i in {1..6}; do
    random_value=$(generate_random 3)
    random_values+="&$random_value"
done

last_value=$(generate_random 17)
random_values+="&$last_value"

url="http://127.0.0.1:1337/index.html?$random_values"

flatpak run org.mozilla.firefox "$url" #FLATPAK MOMENT