�	��QI�0k@��QI�0k@!��QI�0k@	 _A�B�? _A�B�?! _A�B�?"e
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails$��QI�0k@��ͪ���?A�Q��'k@Yh��s��?*	�����,c@2U
Iterator::Model::ParallelMapV2�<,Ԛ�?!rU 	C@)�<,Ԛ�?1rU 	C@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat���x�&�?!T��ޜ�5@)6�;Nё�?1
W02@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate8gDio�?!������4@)��&��?1&rV
.@:Preprocessing2F
Iterator::Model����S�?!����ޛH@)������?1=�(znK&@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip�[ A�?!�|u`!dI@)��~j�t�?1"f2��@:Preprocessing2�
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice;�O��n�?!�-���w@);�O��n�?1�-���w@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensorǺ���v?!S���f4@)Ǻ���v?1S���f4@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap��B�iޡ?!'t\@�6@)Ǻ���f?1S���f4�?:Preprocessing:�
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
�Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
�Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
�Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
�Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)�
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis�
device�Your program is NOT input-bound because only 0.0% of the total step time sampled is waiting for input. Therefore, you should focus on reducing other time.no*no9 _A�B�?Iԗ���X@Zno#You may skip the rest of this page.B�
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown�
	��ͪ���?��ͪ���?!��ͪ���?      ��!       "      ��!       *      ��!       2	�Q��'k@�Q��'k@!�Q��'k@:      ��!       B      ��!       J	h��s��?h��s��?!h��s��?R      ��!       Z	h��s��?h��s��?!h��s��?b      ��!       JCPU_ONLYY _A�B�?b qԗ���X@Y      Y@q�ۓ����?"�
device�Your program is NOT input-bound because only 0.0% of the total step time sampled is waiting for input. Therefore, you should focus on reducing other time.b
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