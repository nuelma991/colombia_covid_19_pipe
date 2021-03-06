#!/bin/bash

#
# Run colombia_covid_19_pipe.py Python script
#

# Go to source code
cd ./src
# Run Python script
echo "Running Colombia Covid19 Pipeline ..."
python3 colombia_covid_19_pipe.py
# Check any error
if [ $? -eq 0 ]; then
    # Go back to main directory
    cd ../
    # Finish without error
    echo "Finished !"
    echo "Pipeline output is generated within ./output directory."
    echo ""
    # Success
    exit 0
else
    # Go back to main directory
    cd ../
    # Finish with error
    echo "Finish with errors ! FAIL"
    echo ""
    # Fail
    exit -1
fi
