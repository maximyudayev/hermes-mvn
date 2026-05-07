@echo on
call .venv\Scripts\activate
call hermes-cli -o .\data --config_file .\examples\mvn.yml --experiment project=Test type=Mvn trial=0
