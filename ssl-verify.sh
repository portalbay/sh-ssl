while read -r line;  do

        echo "checkin $line .. " 
        curl_output=$(curl $line -vI --stderr - --insecure | grep "expire date"  )
        echo $curl_output

done < servers.list

