	5�8EGRG@5�8EGRG@!5�8EGRG@	�CB��?�CB��?!�CB��?"e
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails$5�8EGRG@�~�:p��?A��e��)G@Y�V�/�'�?*	gffff�_@2U
Iterator::Model::ParallelMapV2j�t��?!�,��r�@@)j�t��?1�,��r�@@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat�St$���?! J�:@)�!��u��?10����/6@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate-C��6�?!$DBA$4@)�St$���?1 J�*@:Preprocessing2F
Iterator::Model�u����?!��o���F@)2�%䃎?1r?#�3r'@:Preprocessing2�
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice;�O��n�?!T�/��R@);�O��n�?1T�/��R@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zipe�X��?!9�3 9K@)ŏ1w-!?1�װ~�@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor{�G�zt?!x_���x@){�G�zt?1x_���x@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap�ZӼ��?!X��e8X6@)Ǻ���f?1�����@:Preprocessing:�
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
�Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
�Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
�Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
�Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)�
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis�
device�Your program is NOT input-bound because only 0.3% of the total step time sampled is waiting for input. Therefore, you should focus on reducing other time.no*no9�CB��?I���M�X@Zno#You may skip the rest of this page.B�
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown�
	�~�:p��?�~�:p��?!�~�:p��?      ��!       "      ��!       *      ��!       2	��e��)G@��e��)G@!��e��)G@:      ��!       B      ��!       J	�V�/�'�?�V�/�'�?!�V�/�'�?R      ��!       Z	�V�/�'�?�V�/�'�?!�V�/�'�?b      ��!       JCPU_ONLYY�CB��?b q���M�X@