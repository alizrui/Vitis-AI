# Copyright 2019 Xilinx Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# PART OF THIS FILE AT ALL TIMES.

if [ ! -d "./snapshot/" ]; then
  mkdir snapshot 
fi 

CAFFE_ROOT=../../../caffe-xilinx
PRETRAIN_WEIGHTS=../../float/trainval.caffemodel
$CAFFE_ROOT/build/tools/caffe train -solver solver.prototxt -gpu 3 -weights $PRETRAIN_WEIGHTS
