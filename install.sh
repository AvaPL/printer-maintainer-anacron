#!/usr/bin/env bash

PMHOME=$HOME/.printer-maintainer
mkdir $PMHOME
cp TestPage.pdf $PMHOME
printf "#!/bin/bash\n\nlp $PMHOME/TestPage.pdf" | sudo tee /etc/cron.weekly/printer-maintainer.sh > /dev/null
