cd ../work/test
export MMGT_OPT=2
python run_tests.py
python core_webgl_unittest.py
export MMGT_OPT=1
python run_tests.py
export MMGT_OPT=0
python run_tests.py
