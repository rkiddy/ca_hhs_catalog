
uuid1="7a456555-87b9-4830-817c-72d72e628745"
uuid2="9964e86b-8796-4f59-8880-c5f736763e7b"

/bin/rm -f *zip *zip.[0-9]*

wget "https://data.chhs.ca.gov/dataset/$uuid1/resource/$uuid2/download/statewide-death-profiles-8eleum.zip"

/bin/rm -f *csv *json

unzip statewide-death-profiles-8eleum.zip

SQLALCHEMY_SILENCE_UBER_WARNING=1 ./venv/bin/python deaths.py
