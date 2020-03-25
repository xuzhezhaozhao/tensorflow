mkdir -p dist
mkdir -p dist/lib
mkdir -p dist/include

cp -r bazel-genfiles/tensorflow/libtensorflow_cc* dist/lib
find tensorflow/ -name '*.h' | xargs -i sh -c "mkdir -p dist/include/`dirname {}`; cp {} dist/include/`dirname {}`"
