mkdir -p dist
mkdir -p dist/lib
mkdir -p dist/include

cp -Lf bazel-bin/tensorflow/libtensorflow_cc.so dist/lib
cp -Lf bazel-bin/tensorflow/libtensorflow_framework.so dist/lib
find tensorflow/ -name '*.h' | xargs -i sh -c 'mkdir -p dist/include/`dirname {}`; cp {} dist/include/`dirname {}`'
