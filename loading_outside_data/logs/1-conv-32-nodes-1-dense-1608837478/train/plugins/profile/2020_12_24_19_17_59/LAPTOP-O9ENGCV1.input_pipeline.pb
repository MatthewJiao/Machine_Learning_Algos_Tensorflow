	xz�,C�9@xz�,C�9@!xz�,C�9@	��O!��?��O!��?!��O!��?"e
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails$xz�,C�9@$���~��?A[B>��|9@Y5�8EGr�?*	������Z@2U
Iterator::Model::ParallelMapV2��JY�8�?!�$��p4D@)��JY�8�?1�$��p4D@:Preprocessing2F
Iterator::Model��?�߮?!�&��L@)X�5�;N�?1�p]�x/@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat��A�f�?!9���u3@)L7�A`�?1%�G��.@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate��ׁsF�?!��*��o2@)y�&1��?1�?��*@:Preprocessing2�
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice�����w?!��;��@)�����w?1��;��@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip�H�}�?!c��fh�E@)HP�s�r?1����!@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor/n��r?!�x{�(c@)/n��r?1�x{�(c@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap��_vO�?!Fu�4@)��H�}]?1]Ų����?:Preprocessing:�
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
�Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
�Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
�Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
�Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)�
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis�
device�Your program is NOT input-bound because only 0.4% of the total step time sampled is waiting for input. Therefore, you should focus on reducing other time.no*no9��O!��?I-��G�X@Zno#You may skip the rest of this page.B�
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown�
	$���~��?$���~��?!$���~��?      ��!       "      ��!       *      ��!       2	[B>��|9@[B>��|9@![B>��|9@:      ��!       B      ��!       J	5�8EGr�?5�8EGr�?!5�8EGr�?R      ��!       Z	5�8EGr�?5�8EGr�?!5�8EGr�?b      ��!       JCPU_ONLYY��O!��?b q-��G�X@