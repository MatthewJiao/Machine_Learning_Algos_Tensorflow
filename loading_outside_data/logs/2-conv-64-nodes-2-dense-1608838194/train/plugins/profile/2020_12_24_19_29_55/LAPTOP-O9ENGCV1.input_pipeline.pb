	B>�٬FR@B>�٬FR@!B>�٬FR@	��V��?��V��?!��V��?"e
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails$B>�٬FR@W[����?A����7R@Y	�c�Z�?*	     `Z@2U
Iterator::Model::ParallelMapV2��B�iޡ?!�iP�@@)��B�iޡ?1�iP�@@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeatz6�>W�?!�����N9@)�I+��?1ҁ�|c�4@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate䃞ͪϕ?!���04@)2�%䃎?1��X?,@:Preprocessing2F
Iterator::Model��	h"l�?!:�oL�F@)-C��6�?1��p�C(@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip��j+���?!�a��dK@)�<,Ԛ�}?1b��d�@:Preprocessing2�
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice-C��6z?!��p�C@)-C��6z?1��p�C@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensorU���N@s?!���N��@)U���N@s?1���N��@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMaptF��_�?!v��v*�6@){�G�zd?1�&��@:Preprocessing:�
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
�Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
�Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
�Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
�Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)�
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis�
device�Your program is NOT input-bound because only 0.1% of the total step time sampled is waiting for input. Therefore, you should focus on reducing other time.no*no9��V��?I�I���X@Zno#You may skip the rest of this page.B�
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown�
	W[����?W[����?!W[����?      ��!       "      ��!       *      ��!       2	����7R@����7R@!����7R@:      ��!       B      ��!       J		�c�Z�?	�c�Z�?!	�c�Z�?R      ��!       Z		�c�Z�?	�c�Z�?!	�c�Z�?b      ��!       JCPU_ONLYY��V��?b q�I���X@