�	�L�J�]@�L�J�]@!�L�J�]@	��p����?��p����?!��p����?"e
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails$�L�J�]@d�]K��?AX�2ı�]@YjM�S�?*	fffffF]@2U
Iterator::Model::ParallelMapV2	��g��?!��O��@@)	��g��?1��O��@@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate o�ŏ�?!2�Z�J=@)S�!�uq�?1eF
���6@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat䃞ͪϕ?!�T�j�02@)�Q���?1�_�p��-@:Preprocessing2F
Iterator::Model�&1��?!���E@)��@��ǈ?1z�)[��$@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip]�C���?!��G9L@)	�^)ˀ?1pe��@:Preprocessing2�
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice���Q�~?!7�<�@)���Q�~?17�<�@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensorŏ1w-!o?!�%A���	@)ŏ1w-!o?1�%A���	@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap46<��?!*�X�]A?@)HP�s�b?1x�i�m�?:Preprocessing:�
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
�Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
�Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
�Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
�Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)�
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis�
device�Your program is NOT input-bound because only 0.1% of the total step time sampled is waiting for input. Therefore, you should focus on reducing other time.no*no9��p����?Iɣ�H��X@Zno#You may skip the rest of this page.B�
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown�
	d�]K��?d�]K��?!d�]K��?      ��!       "      ��!       *      ��!       2	X�2ı�]@X�2ı�]@!X�2ı�]@:      ��!       B      ��!       J	jM�S�?jM�S�?!jM�S�?R      ��!       Z	jM�S�?jM�S�?!jM�S�?b      ��!       JCPU_ONLYY��p����?b qɣ�H��X@Y      Y@qvh��˭@"�
device�Your program is NOT input-bound because only 0.1% of the total step time sampled is waiting for input. Therefore, you should focus on reducing other time.b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"T
Rtensorflow_stats (identify the time-consuming operations executed on the CPU_ONLY)"Z
Xtrace_viewer (look at the activities on the timeline of each CPU_ONLY in the trace view)*�
�<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2M
=type.googleapis.com/tensorflow.profiler.GenericRecommendation
nono2no:
Refer to the TF2 Profiler FAQ2"CPU: B 