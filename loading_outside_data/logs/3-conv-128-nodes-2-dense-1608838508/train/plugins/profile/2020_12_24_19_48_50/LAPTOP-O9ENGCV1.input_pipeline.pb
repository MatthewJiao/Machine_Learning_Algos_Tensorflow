	�MbX�R@�MbX�R@!�MbX�R@	�l�Qc�?�l�Qc�?!�l�Qc�?"e
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails$�MbX�R@k�w��#�?A�<,��R@Y]�C���?*	gffff�V@2U
Iterator::Model::ParallelMapV28gDio�?!Rd5�A@)8gDio�?1Rd5�A@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat���Mb�?!��n��9@)n���?1�x�+˃5@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate��y�):�?!E4Z���3@)�?�߾�?1K�p��.@:Preprocessing2F
Iterator::Model�e��a��?!Jf,~QBH@)��@��ǈ?1�`igp�*@:Preprocessing2�
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice	�^)�p?!��� @)	�^)�p?1��� @:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip�c]�F�?!��Ӂ��I@)�q����o?1����@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor�q����o?!����@)�q����o?1����@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap+�����?!"<6Q�g5@)_�Q�[?1�}��w��?:Preprocessing:�
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
�Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
�Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
�Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
�Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)�
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis�
device�Your program is NOT input-bound because only 0.1% of the total step time sampled is waiting for input. Therefore, you should focus on reducing other time.no*no9�l�Qc�?Ie��+g�X@Zno#You may skip the rest of this page.B�
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown�
	k�w��#�?k�w��#�?!k�w��#�?      ��!       "      ��!       *      ��!       2	�<,��R@�<,��R@!�<,��R@:      ��!       B      ��!       J	]�C���?]�C���?!]�C���?R      ��!       Z	]�C���?]�C���?!]�C���?b      ��!       JCPU_ONLYY�l�Qc�?b qe��+g�X@