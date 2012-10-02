#!/bin/bash

source .hsenv_protocol-buffers/bin/activate

hprotoc -I ./google-proto-files/src/ -d ./ ./google-proto-files/src/google/protobuf/*.proto

sed s/Text\.DescriptorProtos/DescriptorProtos/ UnittestProto.hs > UnittestProto.hs1
mv UnittestProto.hs1 UnittestProto.hs

cabal install quickcheck

ghc --make Main.hs
