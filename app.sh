#!/bin/bash

# __title__= "TMaskCheckSHA"
# __author__ = "biuro@tmask.pl"
# __copyright__ = "Copyright (C) 2022 TMask.pl"
# __license__ = "MIT License"
# __version__ = "1.0"

if [ "$(shasum app.sh | awk '{print $1}')" == "$(grep 'app.sh' sha | awk '{print $1}')" ]
then
    echo "OK"
else
    echo "ERROR - software was change"
fi

# shasum app.sh > sha
# 395c1c55c333367848a57bdbfd9de161bfd77d5c  app.sh
