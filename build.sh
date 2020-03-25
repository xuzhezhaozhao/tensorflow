# build pkg
bazel build -c opt --copt=-mavx --copt=-mavx2 --copt=-mfma --copt=-mfpmath=both --copt=-msse4.2 --jobs 3 --local_ram_resources=4096 //tensorflow/tools/pip_package:build_pip_package
