	w-!��C@w-!��C@!w-!��C@	U����?U����?!U����?"e
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails$w-!��C@*:��H�?AM�J��C@Y������?*	23333sV@2U
Iterator::Model::ParallelMapV22U0*��?!���L�{A@)2U0*��?1���L�{A@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat'�����?!|(���7@)������?1�=�
3@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate�l����?!=�
-�4@)�(��0�?1N�{��d+@:Preprocessing2F
Iterator::Model/�$��?!aֈ�bG@)�g��s��?1n�@��'@:Preprocessing2�
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlicea��+ey?!Z�3��@)a��+ey?1Z�3��@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip�b�=y�?!�)w�\�J@)Ǻ���v?1��� ��@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor"��u��q?!h��;W'@)"��u��q?1h��;W'@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap��_�L�?!T���)7@)HP�s�b?1��..o}@:Preprocessing:�
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
�Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
�Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
�Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
�Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)�
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis�
device�Your program is NOT input-bound because only 0.2% of the total step time sampled is waiting for input. Therefore, you should focus on reducing other time.no*no9T����?I1?&u��X@Zno#You may skip the rest of this page.B�
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown�
	*:��H�?*:��H�?!*:��H�?      ��!       "      ��!       *      ��!       2	M�J��C@M�J��C@!M�J��C@:      ��!       B      ��!       J	������?������?!������?R      ��!       Z	������?������?!������?b      ��!       JCPU_ONLYYT����?b q1?&u��X@