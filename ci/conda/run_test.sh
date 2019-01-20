cd ../work/test
if [ $(uname) == Darwin ]; then
    valgrind python run_tests.py
    valgrind python core_webgl_unittest.py
else
    python run_tests.py
    python core_webgl_unittest.py
fi
