#!/bin/bash

docker run \
--name labelme_trade_ai \
-p 8998:80 \
-p 8999:81 \
-p 8997:82 \
-v /LegendStart/LegendStartDataManagement/Temp:/DataHub/Temp \
-d \
--entrypoint "/bin/bash" \
-t labelme

# restart apache inside the container
docker exec labelme_trade_ai service apache2 restart
