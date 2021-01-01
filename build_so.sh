# build libtensorflow_cc.so
# mkl need test
bazel build -c opt \
    -c opt \
    --cxxopt="-D_GLIBCXX_USE_CXX11_ABI=0" \
    --copt=-mavx \
    --copt=-mavx2 \
    --copt=-mfma \
    --copt=-mfpmath=both \
    --copt=-msse4.2 \
    --jobs 3 \
    --local_ram_resources=2048 \
    --define=tensorflow_mkldnn_contraction_kernel=0 \
    //tensorflow:libtensorflow_cc.so
