╝Г

Сх
B
AssignVariableOp
resource
value"dtype"
dtypetypeѕ
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
Џ
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
ѓ
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(ѕ

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetypeѕ
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0ѕ
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0ѕ
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
Й
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ѕ
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
ќ
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ѕ"serve*2.4.02v2.4.0-rc4-71-g582c8d236cb8рк
ё
conv2d_58/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*!
shared_nameconv2d_58/kernel
}
$conv2d_58/kernel/Read/ReadVariableOpReadVariableOpconv2d_58/kernel*&
_output_shapes
:@*
dtype0
t
conv2d_58/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_58/bias
m
"conv2d_58/bias/Read/ReadVariableOpReadVariableOpconv2d_58/bias*
_output_shapes
:@*
dtype0
ё
conv2d_59/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*!
shared_nameconv2d_59/kernel
}
$conv2d_59/kernel/Read/ReadVariableOpReadVariableOpconv2d_59/kernel*&
_output_shapes
:@@*
dtype0
t
conv2d_59/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_59/bias
m
"conv2d_59/bias/Read/ReadVariableOpReadVariableOpconv2d_59/bias*
_output_shapes
:@*
dtype0
ё
conv2d_60/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*!
shared_nameconv2d_60/kernel
}
$conv2d_60/kernel/Read/ReadVariableOpReadVariableOpconv2d_60/kernel*&
_output_shapes
:@@*
dtype0
t
conv2d_60/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_60/bias
m
"conv2d_60/bias/Read/ReadVariableOpReadVariableOpconv2d_60/bias*
_output_shapes
:@*
dtype0
{
dense_56/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ђ* 
shared_namedense_56/kernel
t
#dense_56/kernel/Read/ReadVariableOpReadVariableOpdense_56/kernel*
_output_shapes
:	ђ*
dtype0
r
dense_56/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_56/bias
k
!dense_56/bias/Read/ReadVariableOpReadVariableOpdense_56/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
њ
Adam/conv2d_58/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*(
shared_nameAdam/conv2d_58/kernel/m
І
+Adam/conv2d_58/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_58/kernel/m*&
_output_shapes
:@*
dtype0
ѓ
Adam/conv2d_58/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_58/bias/m
{
)Adam/conv2d_58/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_58/bias/m*
_output_shapes
:@*
dtype0
њ
Adam/conv2d_59/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameAdam/conv2d_59/kernel/m
І
+Adam/conv2d_59/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_59/kernel/m*&
_output_shapes
:@@*
dtype0
ѓ
Adam/conv2d_59/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_59/bias/m
{
)Adam/conv2d_59/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_59/bias/m*
_output_shapes
:@*
dtype0
њ
Adam/conv2d_60/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameAdam/conv2d_60/kernel/m
І
+Adam/conv2d_60/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_60/kernel/m*&
_output_shapes
:@@*
dtype0
ѓ
Adam/conv2d_60/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_60/bias/m
{
)Adam/conv2d_60/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_60/bias/m*
_output_shapes
:@*
dtype0
Ѕ
Adam/dense_56/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ђ*'
shared_nameAdam/dense_56/kernel/m
ѓ
*Adam/dense_56/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_56/kernel/m*
_output_shapes
:	ђ*
dtype0
ђ
Adam/dense_56/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_56/bias/m
y
(Adam/dense_56/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_56/bias/m*
_output_shapes
:*
dtype0
њ
Adam/conv2d_58/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*(
shared_nameAdam/conv2d_58/kernel/v
І
+Adam/conv2d_58/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_58/kernel/v*&
_output_shapes
:@*
dtype0
ѓ
Adam/conv2d_58/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_58/bias/v
{
)Adam/conv2d_58/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_58/bias/v*
_output_shapes
:@*
dtype0
њ
Adam/conv2d_59/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameAdam/conv2d_59/kernel/v
І
+Adam/conv2d_59/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_59/kernel/v*&
_output_shapes
:@@*
dtype0
ѓ
Adam/conv2d_59/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_59/bias/v
{
)Adam/conv2d_59/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_59/bias/v*
_output_shapes
:@*
dtype0
њ
Adam/conv2d_60/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameAdam/conv2d_60/kernel/v
І
+Adam/conv2d_60/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_60/kernel/v*&
_output_shapes
:@@*
dtype0
ѓ
Adam/conv2d_60/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_60/bias/v
{
)Adam/conv2d_60/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_60/bias/v*
_output_shapes
:@*
dtype0
Ѕ
Adam/dense_56/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ђ*'
shared_nameAdam/dense_56/kernel/v
ѓ
*Adam/dense_56/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_56/kernel/v*
_output_shapes
:	ђ*
dtype0
ђ
Adam/dense_56/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_56/bias/v
y
(Adam/dense_56/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_56/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
єA
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*┴@
valueи@B┤@ BГ@
э
layer_with_weights-0
layer-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer-4
layer-5
layer_with_weights-2
layer-6
layer-7
	layer-8

layer-9
layer_with_weights-3
layer-10
layer-11
	optimizer
trainable_variables
regularization_losses
	variables
	keras_api

signatures
h

kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
R
trainable_variables
regularization_losses
	variables
	keras_api
R
trainable_variables
regularization_losses
	variables
 	keras_api
h

!kernel
"bias
#trainable_variables
$regularization_losses
%	variables
&	keras_api
R
'trainable_variables
(regularization_losses
)	variables
*	keras_api
R
+trainable_variables
,regularization_losses
-	variables
.	keras_api
h

/kernel
0bias
1trainable_variables
2regularization_losses
3	variables
4	keras_api
R
5trainable_variables
6regularization_losses
7	variables
8	keras_api
R
9trainable_variables
:regularization_losses
;	variables
<	keras_api
R
=trainable_variables
>regularization_losses
?	variables
@	keras_api
h

Akernel
Bbias
Ctrainable_variables
Dregularization_losses
E	variables
F	keras_api
R
Gtrainable_variables
Hregularization_losses
I	variables
J	keras_api
Я
Kiter

Lbeta_1

Mbeta_2
	Ndecay
Olearning_ratemюmЮ!mъ"mЪ/mа0mАAmбBmБvцvЦ!vд"vД/vе0vЕAvфBvФ
8
0
1
!2
"3
/4
05
A6
B7
 
8
0
1
!2
"3
/4
05
A6
B7
Г
Player_metrics
trainable_variables
Qlayer_regularization_losses

Rlayers
regularization_losses
Smetrics
	variables
Tnon_trainable_variables
 
\Z
VARIABLE_VALUEconv2d_58/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_58/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
Г
Ulayer_metrics
trainable_variables
Vlayer_regularization_losses

Wlayers
regularization_losses
Xmetrics
	variables
Ynon_trainable_variables
 
 
 
Г
Zlayer_metrics
trainable_variables
[layer_regularization_losses

\layers
regularization_losses
]metrics
	variables
^non_trainable_variables
 
 
 
Г
_layer_metrics
trainable_variables
`layer_regularization_losses

alayers
regularization_losses
bmetrics
	variables
cnon_trainable_variables
\Z
VARIABLE_VALUEconv2d_59/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_59/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

!0
"1
 

!0
"1
Г
dlayer_metrics
#trainable_variables
elayer_regularization_losses

flayers
$regularization_losses
gmetrics
%	variables
hnon_trainable_variables
 
 
 
Г
ilayer_metrics
'trainable_variables
jlayer_regularization_losses

klayers
(regularization_losses
lmetrics
)	variables
mnon_trainable_variables
 
 
 
Г
nlayer_metrics
+trainable_variables
olayer_regularization_losses

players
,regularization_losses
qmetrics
-	variables
rnon_trainable_variables
\Z
VARIABLE_VALUEconv2d_60/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_60/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

/0
01
 

/0
01
Г
slayer_metrics
1trainable_variables
tlayer_regularization_losses

ulayers
2regularization_losses
vmetrics
3	variables
wnon_trainable_variables
 
 
 
Г
xlayer_metrics
5trainable_variables
ylayer_regularization_losses

zlayers
6regularization_losses
{metrics
7	variables
|non_trainable_variables
 
 
 
»
}layer_metrics
9trainable_variables
~layer_regularization_losses

layers
:regularization_losses
ђmetrics
;	variables
Ђnon_trainable_variables
 
 
 
▓
ѓlayer_metrics
=trainable_variables
 Ѓlayer_regularization_losses
ёlayers
>regularization_losses
Ёmetrics
?	variables
єnon_trainable_variables
[Y
VARIABLE_VALUEdense_56/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_56/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

A0
B1
 

A0
B1
▓
Єlayer_metrics
Ctrainable_variables
 ѕlayer_regularization_losses
Ѕlayers
Dregularization_losses
іmetrics
E	variables
Іnon_trainable_variables
 
 
 
▓
їlayer_metrics
Gtrainable_variables
 Їlayer_regularization_losses
јlayers
Hregularization_losses
Јmetrics
I	variables
љnon_trainable_variables
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
 
 
V
0
1
2
3
4
5
6
7
	8

9
10
11

Љ0
њ1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
8

Њtotal

ћcount
Ћ	variables
ќ	keras_api
I

Ќtotal

ўcount
Ў
_fn_kwargs
џ	variables
Џ	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

Њ0
ћ1

Ћ	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

Ќ0
ў1

џ	variables
}
VARIABLE_VALUEAdam/conv2d_58/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_58/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_59/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_59/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_60/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_60/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_56/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_56/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_58/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_58/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_59/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_59/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_60/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_60/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_56/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_56/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
њ
serving_default_conv2d_58_inputPlaceholder*/
_output_shapes
:         22*
dtype0*$
shape:         22
¤
StatefulPartitionedCallStatefulPartitionedCallserving_default_conv2d_58_inputconv2d_58/kernelconv2d_58/biasconv2d_59/kernelconv2d_59/biasconv2d_60/kernelconv2d_60/biasdense_56/kerneldense_56/bias*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         **
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8ѓ *,
f'R%
#__inference_signature_wrapper_95751
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
Х
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$conv2d_58/kernel/Read/ReadVariableOp"conv2d_58/bias/Read/ReadVariableOp$conv2d_59/kernel/Read/ReadVariableOp"conv2d_59/bias/Read/ReadVariableOp$conv2d_60/kernel/Read/ReadVariableOp"conv2d_60/bias/Read/ReadVariableOp#dense_56/kernel/Read/ReadVariableOp!dense_56/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp+Adam/conv2d_58/kernel/m/Read/ReadVariableOp)Adam/conv2d_58/bias/m/Read/ReadVariableOp+Adam/conv2d_59/kernel/m/Read/ReadVariableOp)Adam/conv2d_59/bias/m/Read/ReadVariableOp+Adam/conv2d_60/kernel/m/Read/ReadVariableOp)Adam/conv2d_60/bias/m/Read/ReadVariableOp*Adam/dense_56/kernel/m/Read/ReadVariableOp(Adam/dense_56/bias/m/Read/ReadVariableOp+Adam/conv2d_58/kernel/v/Read/ReadVariableOp)Adam/conv2d_58/bias/v/Read/ReadVariableOp+Adam/conv2d_59/kernel/v/Read/ReadVariableOp)Adam/conv2d_59/bias/v/Read/ReadVariableOp+Adam/conv2d_60/kernel/v/Read/ReadVariableOp)Adam/conv2d_60/bias/v/Read/ReadVariableOp*Adam/dense_56/kernel/v/Read/ReadVariableOp(Adam/dense_56/bias/v/Read/ReadVariableOpConst*.
Tin'
%2#	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *'
f"R 
__inference__traced_save_96116
Ю
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_58/kernelconv2d_58/biasconv2d_59/kernelconv2d_59/biasconv2d_60/kernelconv2d_60/biasdense_56/kerneldense_56/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/conv2d_58/kernel/mAdam/conv2d_58/bias/mAdam/conv2d_59/kernel/mAdam/conv2d_59/bias/mAdam/conv2d_60/kernel/mAdam/conv2d_60/bias/mAdam/dense_56/kernel/mAdam/dense_56/bias/mAdam/conv2d_58/kernel/vAdam/conv2d_58/bias/vAdam/conv2d_59/kernel/vAdam/conv2d_59/bias/vAdam/conv2d_60/kernel/vAdam/conv2d_60/bias/vAdam/dense_56/kernel/vAdam/dense_56/bias/v*-
Tin&
$2"*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ **
f%R#
!__inference__traced_restore_96225ёГ
х
▄
-__inference_sequential_29_layer_call_fn_95867

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
identityѕбStatefulPartitionedCallк
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         **
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8ѓ *Q
fLRJ
H__inference_sequential_29_layer_call_and_return_conditional_losses_957012
StatefulPartitionedCallј
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*N
_input_shapes=
;:         22::::::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         22
 
_user_specified_nameinputs
ѕ1
в
H__inference_sequential_29_layer_call_and_return_conditional_losses_95825

inputs,
(conv2d_58_conv2d_readvariableop_resource-
)conv2d_58_biasadd_readvariableop_resource,
(conv2d_59_conv2d_readvariableop_resource-
)conv2d_59_biasadd_readvariableop_resource,
(conv2d_60_conv2d_readvariableop_resource-
)conv2d_60_biasadd_readvariableop_resource+
'dense_56_matmul_readvariableop_resource,
(dense_56_biasadd_readvariableop_resource
identityѕб conv2d_58/BiasAdd/ReadVariableOpбconv2d_58/Conv2D/ReadVariableOpб conv2d_59/BiasAdd/ReadVariableOpбconv2d_59/Conv2D/ReadVariableOpб conv2d_60/BiasAdd/ReadVariableOpбconv2d_60/Conv2D/ReadVariableOpбdense_56/BiasAdd/ReadVariableOpбdense_56/MatMul/ReadVariableOp│
conv2d_58/Conv2D/ReadVariableOpReadVariableOp(conv2d_58_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02!
conv2d_58/Conv2D/ReadVariableOp┬
conv2d_58/Conv2DConv2Dinputs'conv2d_58/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         00@*
paddingVALID*
strides
2
conv2d_58/Conv2Dф
 conv2d_58/BiasAdd/ReadVariableOpReadVariableOp)conv2d_58_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_58/BiasAdd/ReadVariableOp░
conv2d_58/BiasAddBiasAddconv2d_58/Conv2D:output:0(conv2d_58/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         00@2
conv2d_58/BiasAddѕ
activation_114/ReluReluconv2d_58/BiasAdd:output:0*
T0*/
_output_shapes
:         00@2
activation_114/Relu¤
max_pooling2d_58/MaxPoolMaxPool!activation_114/Relu:activations:0*/
_output_shapes
:         @*
ksize
*
paddingVALID*
strides
2
max_pooling2d_58/MaxPool│
conv2d_59/Conv2D/ReadVariableOpReadVariableOp(conv2d_59_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02!
conv2d_59/Conv2D/ReadVariableOpП
conv2d_59/Conv2DConv2D!max_pooling2d_58/MaxPool:output:0'conv2d_59/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingVALID*
strides
2
conv2d_59/Conv2Dф
 conv2d_59/BiasAdd/ReadVariableOpReadVariableOp)conv2d_59_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_59/BiasAdd/ReadVariableOp░
conv2d_59/BiasAddBiasAddconv2d_59/Conv2D:output:0(conv2d_59/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @2
conv2d_59/BiasAddѕ
activation_115/ReluReluconv2d_59/BiasAdd:output:0*
T0*/
_output_shapes
:         @2
activation_115/Relu¤
max_pooling2d_59/MaxPoolMaxPool!activation_115/Relu:activations:0*/
_output_shapes
:         @*
ksize
*
paddingVALID*
strides
2
max_pooling2d_59/MaxPool│
conv2d_60/Conv2D/ReadVariableOpReadVariableOp(conv2d_60_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02!
conv2d_60/Conv2D/ReadVariableOpП
conv2d_60/Conv2DConv2D!max_pooling2d_59/MaxPool:output:0'conv2d_60/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         		@*
paddingVALID*
strides
2
conv2d_60/Conv2Dф
 conv2d_60/BiasAdd/ReadVariableOpReadVariableOp)conv2d_60_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_60/BiasAdd/ReadVariableOp░
conv2d_60/BiasAddBiasAddconv2d_60/Conv2D:output:0(conv2d_60/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         		@2
conv2d_60/BiasAddѕ
activation_116/ReluReluconv2d_60/BiasAdd:output:0*
T0*/
_output_shapes
:         		@2
activation_116/Relu¤
max_pooling2d_60/MaxPoolMaxPool!activation_116/Relu:activations:0*/
_output_shapes
:         @*
ksize
*
paddingVALID*
strides
2
max_pooling2d_60/MaxPoolu
flatten_29/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
flatten_29/Constц
flatten_29/ReshapeReshape!max_pooling2d_60/MaxPool:output:0flatten_29/Const:output:0*
T0*(
_output_shapes
:         ђ2
flatten_29/ReshapeЕ
dense_56/MatMul/ReadVariableOpReadVariableOp'dense_56_matmul_readvariableop_resource*
_output_shapes
:	ђ*
dtype02 
dense_56/MatMul/ReadVariableOpБ
dense_56/MatMulMatMulflatten_29/Reshape:output:0&dense_56/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense_56/MatMulД
dense_56/BiasAdd/ReadVariableOpReadVariableOp(dense_56_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_56/BiasAdd/ReadVariableOpЦ
dense_56/BiasAddBiasAdddense_56/MatMul:product:0'dense_56/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense_56/BiasAddѕ
activation_117/SigmoidSigmoiddense_56/BiasAdd:output:0*
T0*'
_output_shapes
:         2
activation_117/Sigmoidђ
IdentityIdentityactivation_117/Sigmoid:y:0!^conv2d_58/BiasAdd/ReadVariableOp ^conv2d_58/Conv2D/ReadVariableOp!^conv2d_59/BiasAdd/ReadVariableOp ^conv2d_59/Conv2D/ReadVariableOp!^conv2d_60/BiasAdd/ReadVariableOp ^conv2d_60/Conv2D/ReadVariableOp ^dense_56/BiasAdd/ReadVariableOp^dense_56/MatMul/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*N
_input_shapes=
;:         22::::::::2D
 conv2d_58/BiasAdd/ReadVariableOp conv2d_58/BiasAdd/ReadVariableOp2B
conv2d_58/Conv2D/ReadVariableOpconv2d_58/Conv2D/ReadVariableOp2D
 conv2d_59/BiasAdd/ReadVariableOp conv2d_59/BiasAdd/ReadVariableOp2B
conv2d_59/Conv2D/ReadVariableOpconv2d_59/Conv2D/ReadVariableOp2D
 conv2d_60/BiasAdd/ReadVariableOp conv2d_60/BiasAdd/ReadVariableOp2B
conv2d_60/Conv2D/ReadVariableOpconv2d_60/Conv2D/ReadVariableOp2B
dense_56/BiasAdd/ReadVariableOpdense_56/BiasAdd/ReadVariableOp2@
dense_56/MatMul/ReadVariableOpdense_56/MatMul/ReadVariableOp:W S
/
_output_shapes
:         22
 
_user_specified_nameinputs
й
a
E__inference_flatten_29_layer_call_and_return_conditional_losses_95533

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:         ђ2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:         ђ2

Identity"
identityIdentity:output:0*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
в	
П
D__inference_conv2d_58_layer_call_and_return_conditional_losses_95417

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOpЋ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02
Conv2D/ReadVariableOpц
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         00@*
paddingVALID*
strides
2
Conv2Dї
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpѕ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         00@2	
BiasAddЮ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:         00@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:         22::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         22
 
_user_specified_nameinputs
в	
П
D__inference_conv2d_60_layer_call_and_return_conditional_losses_95935

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOpЋ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOpц
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         		@*
paddingVALID*
strides
2
Conv2Dї
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpѕ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         		@2	
BiasAddЮ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:         		@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:         @::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
О
e
I__inference_activation_115_layer_call_and_return_conditional_losses_95478

inputs
identityV
ReluReluinputs*
T0*/
_output_shapes
:         @2
Relun
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:         @2

Identity"
identityIdentity:output:0*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
О
e
I__inference_activation_115_layer_call_and_return_conditional_losses_95920

inputs
identityV
ReluReluinputs*
T0*/
_output_shapes
:         @2
Relun
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:         @2

Identity"
identityIdentity:output:0*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
╣
e
I__inference_activation_117_layer_call_and_return_conditional_losses_95989

inputs
identityW
SigmoidSigmoidinputs*
T0*'
_output_shapes
:         2	
Sigmoid_
IdentityIdentitySigmoid:y:0*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*&
_input_shapes
:         :O K
'
_output_shapes
:         
 
_user_specified_nameinputs
О
e
I__inference_activation_114_layer_call_and_return_conditional_losses_95891

inputs
identityV
ReluReluinputs*
T0*/
_output_shapes
:         00@2
Relun
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:         00@2

Identity"
identityIdentity:output:0*.
_input_shapes
:         00@:W S
/
_output_shapes
:         00@
 
_user_specified_nameinputs
л
т
-__inference_sequential_29_layer_call_fn_95720
conv2d_58_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
identityѕбStatefulPartitionedCall¤
StatefulPartitionedCallStatefulPartitionedCallconv2d_58_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         **
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8ѓ *Q
fLRJ
H__inference_sequential_29_layer_call_and_return_conditional_losses_957012
StatefulPartitionedCallј
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*N
_input_shapes=
;:         22::::::::22
StatefulPartitionedCallStatefulPartitionedCall:` \
/
_output_shapes
:         22
)
_user_specified_nameconv2d_58_input
Г
L
0__inference_max_pooling2d_58_layer_call_fn_95379

inputs
identityВ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *T
fORM
K__inference_max_pooling2d_58_layer_call_and_return_conditional_losses_953732
PartitionedCallЈ
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Э/
ю
H__inference_sequential_29_layer_call_and_return_conditional_losses_95648

inputs
conv2d_58_95619
conv2d_58_95621
conv2d_59_95626
conv2d_59_95628
conv2d_60_95633
conv2d_60_95635
dense_56_95641
dense_56_95643
identityѕб!conv2d_58/StatefulPartitionedCallб!conv2d_59/StatefulPartitionedCallб!conv2d_60/StatefulPartitionedCallб dense_56/StatefulPartitionedCallъ
!conv2d_58/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_58_95619conv2d_58_95621*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         00@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_conv2d_58_layer_call_and_return_conditional_losses_954172#
!conv2d_58/StatefulPartitionedCallЉ
activation_114/PartitionedCallPartitionedCall*conv2d_58/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         00@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *R
fMRK
I__inference_activation_114_layer_call_and_return_conditional_losses_954382 
activation_114/PartitionedCallћ
 max_pooling2d_58/PartitionedCallPartitionedCall'activation_114/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *T
fORM
K__inference_max_pooling2d_58_layer_call_and_return_conditional_losses_953732"
 max_pooling2d_58/PartitionedCall┴
!conv2d_59/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_58/PartitionedCall:output:0conv2d_59_95626conv2d_59_95628*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_conv2d_59_layer_call_and_return_conditional_losses_954572#
!conv2d_59/StatefulPartitionedCallЉ
activation_115/PartitionedCallPartitionedCall*conv2d_59/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *R
fMRK
I__inference_activation_115_layer_call_and_return_conditional_losses_954782 
activation_115/PartitionedCallћ
 max_pooling2d_59/PartitionedCallPartitionedCall'activation_115/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *T
fORM
K__inference_max_pooling2d_59_layer_call_and_return_conditional_losses_953852"
 max_pooling2d_59/PartitionedCall┴
!conv2d_60/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_59/PartitionedCall:output:0conv2d_60_95633conv2d_60_95635*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         		@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_conv2d_60_layer_call_and_return_conditional_losses_954972#
!conv2d_60/StatefulPartitionedCallЉ
activation_116/PartitionedCallPartitionedCall*conv2d_60/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         		@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *R
fMRK
I__inference_activation_116_layer_call_and_return_conditional_losses_955182 
activation_116/PartitionedCallћ
 max_pooling2d_60/PartitionedCallPartitionedCall'activation_116/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *T
fORM
K__inference_max_pooling2d_60_layer_call_and_return_conditional_losses_953972"
 max_pooling2d_60/PartitionedCall§
flatten_29/PartitionedCallPartitionedCall)max_pooling2d_60/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_flatten_29_layer_call_and_return_conditional_losses_955332
flatten_29/PartitionedCall«
 dense_56/StatefulPartitionedCallStatefulPartitionedCall#flatten_29/PartitionedCall:output:0dense_56_95641dense_56_95643*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *L
fGRE
C__inference_dense_56_layer_call_and_return_conditional_losses_955512"
 dense_56/StatefulPartitionedCallѕ
activation_117/PartitionedCallPartitionedCall)dense_56/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *R
fMRK
I__inference_activation_117_layer_call_and_return_conditional_losses_955722 
activation_117/PartitionedCallі
IdentityIdentity'activation_117/PartitionedCall:output:0"^conv2d_58/StatefulPartitionedCall"^conv2d_59/StatefulPartitionedCall"^conv2d_60/StatefulPartitionedCall!^dense_56/StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*N
_input_shapes=
;:         22::::::::2F
!conv2d_58/StatefulPartitionedCall!conv2d_58/StatefulPartitionedCall2F
!conv2d_59/StatefulPartitionedCall!conv2d_59/StatefulPartitionedCall2F
!conv2d_60/StatefulPartitionedCall!conv2d_60/StatefulPartitionedCall2D
 dense_56/StatefulPartitionedCall dense_56/StatefulPartitionedCall:W S
/
_output_shapes
:         22
 
_user_specified_nameinputs
Х>
г
 __inference__wrapped_model_95367
conv2d_58_input:
6sequential_29_conv2d_58_conv2d_readvariableop_resource;
7sequential_29_conv2d_58_biasadd_readvariableop_resource:
6sequential_29_conv2d_59_conv2d_readvariableop_resource;
7sequential_29_conv2d_59_biasadd_readvariableop_resource:
6sequential_29_conv2d_60_conv2d_readvariableop_resource;
7sequential_29_conv2d_60_biasadd_readvariableop_resource9
5sequential_29_dense_56_matmul_readvariableop_resource:
6sequential_29_dense_56_biasadd_readvariableop_resource
identityѕб.sequential_29/conv2d_58/BiasAdd/ReadVariableOpб-sequential_29/conv2d_58/Conv2D/ReadVariableOpб.sequential_29/conv2d_59/BiasAdd/ReadVariableOpб-sequential_29/conv2d_59/Conv2D/ReadVariableOpб.sequential_29/conv2d_60/BiasAdd/ReadVariableOpб-sequential_29/conv2d_60/Conv2D/ReadVariableOpб-sequential_29/dense_56/BiasAdd/ReadVariableOpб,sequential_29/dense_56/MatMul/ReadVariableOpП
-sequential_29/conv2d_58/Conv2D/ReadVariableOpReadVariableOp6sequential_29_conv2d_58_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02/
-sequential_29/conv2d_58/Conv2D/ReadVariableOpш
sequential_29/conv2d_58/Conv2DConv2Dconv2d_58_input5sequential_29/conv2d_58/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         00@*
paddingVALID*
strides
2 
sequential_29/conv2d_58/Conv2Dн
.sequential_29/conv2d_58/BiasAdd/ReadVariableOpReadVariableOp7sequential_29_conv2d_58_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype020
.sequential_29/conv2d_58/BiasAdd/ReadVariableOpУ
sequential_29/conv2d_58/BiasAddBiasAdd'sequential_29/conv2d_58/Conv2D:output:06sequential_29/conv2d_58/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         00@2!
sequential_29/conv2d_58/BiasAdd▓
!sequential_29/activation_114/ReluRelu(sequential_29/conv2d_58/BiasAdd:output:0*
T0*/
_output_shapes
:         00@2#
!sequential_29/activation_114/Reluщ
&sequential_29/max_pooling2d_58/MaxPoolMaxPool/sequential_29/activation_114/Relu:activations:0*/
_output_shapes
:         @*
ksize
*
paddingVALID*
strides
2(
&sequential_29/max_pooling2d_58/MaxPoolП
-sequential_29/conv2d_59/Conv2D/ReadVariableOpReadVariableOp6sequential_29_conv2d_59_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02/
-sequential_29/conv2d_59/Conv2D/ReadVariableOpЋ
sequential_29/conv2d_59/Conv2DConv2D/sequential_29/max_pooling2d_58/MaxPool:output:05sequential_29/conv2d_59/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingVALID*
strides
2 
sequential_29/conv2d_59/Conv2Dн
.sequential_29/conv2d_59/BiasAdd/ReadVariableOpReadVariableOp7sequential_29_conv2d_59_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype020
.sequential_29/conv2d_59/BiasAdd/ReadVariableOpУ
sequential_29/conv2d_59/BiasAddBiasAdd'sequential_29/conv2d_59/Conv2D:output:06sequential_29/conv2d_59/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @2!
sequential_29/conv2d_59/BiasAdd▓
!sequential_29/activation_115/ReluRelu(sequential_29/conv2d_59/BiasAdd:output:0*
T0*/
_output_shapes
:         @2#
!sequential_29/activation_115/Reluщ
&sequential_29/max_pooling2d_59/MaxPoolMaxPool/sequential_29/activation_115/Relu:activations:0*/
_output_shapes
:         @*
ksize
*
paddingVALID*
strides
2(
&sequential_29/max_pooling2d_59/MaxPoolП
-sequential_29/conv2d_60/Conv2D/ReadVariableOpReadVariableOp6sequential_29_conv2d_60_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02/
-sequential_29/conv2d_60/Conv2D/ReadVariableOpЋ
sequential_29/conv2d_60/Conv2DConv2D/sequential_29/max_pooling2d_59/MaxPool:output:05sequential_29/conv2d_60/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         		@*
paddingVALID*
strides
2 
sequential_29/conv2d_60/Conv2Dн
.sequential_29/conv2d_60/BiasAdd/ReadVariableOpReadVariableOp7sequential_29_conv2d_60_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype020
.sequential_29/conv2d_60/BiasAdd/ReadVariableOpУ
sequential_29/conv2d_60/BiasAddBiasAdd'sequential_29/conv2d_60/Conv2D:output:06sequential_29/conv2d_60/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         		@2!
sequential_29/conv2d_60/BiasAdd▓
!sequential_29/activation_116/ReluRelu(sequential_29/conv2d_60/BiasAdd:output:0*
T0*/
_output_shapes
:         		@2#
!sequential_29/activation_116/Reluщ
&sequential_29/max_pooling2d_60/MaxPoolMaxPool/sequential_29/activation_116/Relu:activations:0*/
_output_shapes
:         @*
ksize
*
paddingVALID*
strides
2(
&sequential_29/max_pooling2d_60/MaxPoolЉ
sequential_29/flatten_29/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2 
sequential_29/flatten_29/Const▄
 sequential_29/flatten_29/ReshapeReshape/sequential_29/max_pooling2d_60/MaxPool:output:0'sequential_29/flatten_29/Const:output:0*
T0*(
_output_shapes
:         ђ2"
 sequential_29/flatten_29/ReshapeМ
,sequential_29/dense_56/MatMul/ReadVariableOpReadVariableOp5sequential_29_dense_56_matmul_readvariableop_resource*
_output_shapes
:	ђ*
dtype02.
,sequential_29/dense_56/MatMul/ReadVariableOp█
sequential_29/dense_56/MatMulMatMul)sequential_29/flatten_29/Reshape:output:04sequential_29/dense_56/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
sequential_29/dense_56/MatMulЛ
-sequential_29/dense_56/BiasAdd/ReadVariableOpReadVariableOp6sequential_29_dense_56_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02/
-sequential_29/dense_56/BiasAdd/ReadVariableOpП
sequential_29/dense_56/BiasAddBiasAdd'sequential_29/dense_56/MatMul:product:05sequential_29/dense_56/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2 
sequential_29/dense_56/BiasAdd▓
$sequential_29/activation_117/SigmoidSigmoid'sequential_29/dense_56/BiasAdd:output:0*
T0*'
_output_shapes
:         2&
$sequential_29/activation_117/Sigmoid■
IdentityIdentity(sequential_29/activation_117/Sigmoid:y:0/^sequential_29/conv2d_58/BiasAdd/ReadVariableOp.^sequential_29/conv2d_58/Conv2D/ReadVariableOp/^sequential_29/conv2d_59/BiasAdd/ReadVariableOp.^sequential_29/conv2d_59/Conv2D/ReadVariableOp/^sequential_29/conv2d_60/BiasAdd/ReadVariableOp.^sequential_29/conv2d_60/Conv2D/ReadVariableOp.^sequential_29/dense_56/BiasAdd/ReadVariableOp-^sequential_29/dense_56/MatMul/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*N
_input_shapes=
;:         22::::::::2`
.sequential_29/conv2d_58/BiasAdd/ReadVariableOp.sequential_29/conv2d_58/BiasAdd/ReadVariableOp2^
-sequential_29/conv2d_58/Conv2D/ReadVariableOp-sequential_29/conv2d_58/Conv2D/ReadVariableOp2`
.sequential_29/conv2d_59/BiasAdd/ReadVariableOp.sequential_29/conv2d_59/BiasAdd/ReadVariableOp2^
-sequential_29/conv2d_59/Conv2D/ReadVariableOp-sequential_29/conv2d_59/Conv2D/ReadVariableOp2`
.sequential_29/conv2d_60/BiasAdd/ReadVariableOp.sequential_29/conv2d_60/BiasAdd/ReadVariableOp2^
-sequential_29/conv2d_60/Conv2D/ReadVariableOp-sequential_29/conv2d_60/Conv2D/ReadVariableOp2^
-sequential_29/dense_56/BiasAdd/ReadVariableOp-sequential_29/dense_56/BiasAdd/ReadVariableOp2\
,sequential_29/dense_56/MatMul/ReadVariableOp,sequential_29/dense_56/MatMul/ReadVariableOp:` \
/
_output_shapes
:         22
)
_user_specified_nameconv2d_58_input
Э/
ю
H__inference_sequential_29_layer_call_and_return_conditional_losses_95701

inputs
conv2d_58_95672
conv2d_58_95674
conv2d_59_95679
conv2d_59_95681
conv2d_60_95686
conv2d_60_95688
dense_56_95694
dense_56_95696
identityѕб!conv2d_58/StatefulPartitionedCallб!conv2d_59/StatefulPartitionedCallб!conv2d_60/StatefulPartitionedCallб dense_56/StatefulPartitionedCallъ
!conv2d_58/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_58_95672conv2d_58_95674*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         00@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_conv2d_58_layer_call_and_return_conditional_losses_954172#
!conv2d_58/StatefulPartitionedCallЉ
activation_114/PartitionedCallPartitionedCall*conv2d_58/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         00@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *R
fMRK
I__inference_activation_114_layer_call_and_return_conditional_losses_954382 
activation_114/PartitionedCallћ
 max_pooling2d_58/PartitionedCallPartitionedCall'activation_114/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *T
fORM
K__inference_max_pooling2d_58_layer_call_and_return_conditional_losses_953732"
 max_pooling2d_58/PartitionedCall┴
!conv2d_59/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_58/PartitionedCall:output:0conv2d_59_95679conv2d_59_95681*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_conv2d_59_layer_call_and_return_conditional_losses_954572#
!conv2d_59/StatefulPartitionedCallЉ
activation_115/PartitionedCallPartitionedCall*conv2d_59/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *R
fMRK
I__inference_activation_115_layer_call_and_return_conditional_losses_954782 
activation_115/PartitionedCallћ
 max_pooling2d_59/PartitionedCallPartitionedCall'activation_115/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *T
fORM
K__inference_max_pooling2d_59_layer_call_and_return_conditional_losses_953852"
 max_pooling2d_59/PartitionedCall┴
!conv2d_60/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_59/PartitionedCall:output:0conv2d_60_95686conv2d_60_95688*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         		@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_conv2d_60_layer_call_and_return_conditional_losses_954972#
!conv2d_60/StatefulPartitionedCallЉ
activation_116/PartitionedCallPartitionedCall*conv2d_60/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         		@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *R
fMRK
I__inference_activation_116_layer_call_and_return_conditional_losses_955182 
activation_116/PartitionedCallћ
 max_pooling2d_60/PartitionedCallPartitionedCall'activation_116/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *T
fORM
K__inference_max_pooling2d_60_layer_call_and_return_conditional_losses_953972"
 max_pooling2d_60/PartitionedCall§
flatten_29/PartitionedCallPartitionedCall)max_pooling2d_60/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_flatten_29_layer_call_and_return_conditional_losses_955332
flatten_29/PartitionedCall«
 dense_56/StatefulPartitionedCallStatefulPartitionedCall#flatten_29/PartitionedCall:output:0dense_56_95694dense_56_95696*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *L
fGRE
C__inference_dense_56_layer_call_and_return_conditional_losses_955512"
 dense_56/StatefulPartitionedCallѕ
activation_117/PartitionedCallPartitionedCall)dense_56/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *R
fMRK
I__inference_activation_117_layer_call_and_return_conditional_losses_955722 
activation_117/PartitionedCallі
IdentityIdentity'activation_117/PartitionedCall:output:0"^conv2d_58/StatefulPartitionedCall"^conv2d_59/StatefulPartitionedCall"^conv2d_60/StatefulPartitionedCall!^dense_56/StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*N
_input_shapes=
;:         22::::::::2F
!conv2d_58/StatefulPartitionedCall!conv2d_58/StatefulPartitionedCall2F
!conv2d_59/StatefulPartitionedCall!conv2d_59/StatefulPartitionedCall2F
!conv2d_60/StatefulPartitionedCall!conv2d_60/StatefulPartitionedCall2D
 dense_56/StatefulPartitionedCall dense_56/StatefulPartitionedCall:W S
/
_output_shapes
:         22
 
_user_specified_nameinputs
Ч
~
)__inference_conv2d_59_layer_call_fn_95915

inputs
unknown
	unknown_0
identityѕбStatefulPartitionedCallЧ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_conv2d_59_layer_call_and_return_conditional_losses_954572
StatefulPartitionedCallќ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:         @2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:         @::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
Ђї
Ё
!__inference__traced_restore_96225
file_prefix%
!assignvariableop_conv2d_58_kernel%
!assignvariableop_1_conv2d_58_bias'
#assignvariableop_2_conv2d_59_kernel%
!assignvariableop_3_conv2d_59_bias'
#assignvariableop_4_conv2d_60_kernel%
!assignvariableop_5_conv2d_60_bias&
"assignvariableop_6_dense_56_kernel$
 assignvariableop_7_dense_56_bias 
assignvariableop_8_adam_iter"
assignvariableop_9_adam_beta_1#
assignvariableop_10_adam_beta_2"
assignvariableop_11_adam_decay*
&assignvariableop_12_adam_learning_rate
assignvariableop_13_total
assignvariableop_14_count
assignvariableop_15_total_1
assignvariableop_16_count_1/
+assignvariableop_17_adam_conv2d_58_kernel_m-
)assignvariableop_18_adam_conv2d_58_bias_m/
+assignvariableop_19_adam_conv2d_59_kernel_m-
)assignvariableop_20_adam_conv2d_59_bias_m/
+assignvariableop_21_adam_conv2d_60_kernel_m-
)assignvariableop_22_adam_conv2d_60_bias_m.
*assignvariableop_23_adam_dense_56_kernel_m,
(assignvariableop_24_adam_dense_56_bias_m/
+assignvariableop_25_adam_conv2d_58_kernel_v-
)assignvariableop_26_adam_conv2d_58_bias_v/
+assignvariableop_27_adam_conv2d_59_kernel_v-
)assignvariableop_28_adam_conv2d_59_bias_v/
+assignvariableop_29_adam_conv2d_60_kernel_v-
)assignvariableop_30_adam_conv2d_60_bias_v.
*assignvariableop_31_adam_dense_56_kernel_v,
(assignvariableop_32_adam_dense_56_bias_v
identity_34ѕбAssignVariableOpбAssignVariableOp_1бAssignVariableOp_10бAssignVariableOp_11бAssignVariableOp_12бAssignVariableOp_13бAssignVariableOp_14бAssignVariableOp_15бAssignVariableOp_16бAssignVariableOp_17бAssignVariableOp_18бAssignVariableOp_19бAssignVariableOp_2бAssignVariableOp_20бAssignVariableOp_21бAssignVariableOp_22бAssignVariableOp_23бAssignVariableOp_24бAssignVariableOp_25бAssignVariableOp_26бAssignVariableOp_27бAssignVariableOp_28бAssignVariableOp_29бAssignVariableOp_3бAssignVariableOp_30бAssignVariableOp_31бAssignVariableOp_32бAssignVariableOp_4бAssignVariableOp_5бAssignVariableOp_6бAssignVariableOp_7бAssignVariableOp_8бAssignVariableOp_9╠
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*п
value╬B╦"B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_namesм
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slicesп
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*ъ
_output_shapesІ
ѕ::::::::::::::::::::::::::::::::::*0
dtypes&
$2"	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identityа
AssignVariableOpAssignVariableOp!assignvariableop_conv2d_58_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1д
AssignVariableOp_1AssignVariableOp!assignvariableop_1_conv2d_58_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2е
AssignVariableOp_2AssignVariableOp#assignvariableop_2_conv2d_59_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3д
AssignVariableOp_3AssignVariableOp!assignvariableop_3_conv2d_59_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4е
AssignVariableOp_4AssignVariableOp#assignvariableop_4_conv2d_60_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5д
AssignVariableOp_5AssignVariableOp!assignvariableop_5_conv2d_60_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6Д
AssignVariableOp_6AssignVariableOp"assignvariableop_6_dense_56_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7Ц
AssignVariableOp_7AssignVariableOp assignvariableop_7_dense_56_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_8А
AssignVariableOp_8AssignVariableOpassignvariableop_8_adam_iterIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9Б
AssignVariableOp_9AssignVariableOpassignvariableop_9_adam_beta_1Identity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10Д
AssignVariableOp_10AssignVariableOpassignvariableop_10_adam_beta_2Identity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11д
AssignVariableOp_11AssignVariableOpassignvariableop_11_adam_decayIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12«
AssignVariableOp_12AssignVariableOp&assignvariableop_12_adam_learning_rateIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13А
AssignVariableOp_13AssignVariableOpassignvariableop_13_totalIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14А
AssignVariableOp_14AssignVariableOpassignvariableop_14_countIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15Б
AssignVariableOp_15AssignVariableOpassignvariableop_15_total_1Identity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16Б
AssignVariableOp_16AssignVariableOpassignvariableop_16_count_1Identity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17│
AssignVariableOp_17AssignVariableOp+assignvariableop_17_adam_conv2d_58_kernel_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18▒
AssignVariableOp_18AssignVariableOp)assignvariableop_18_adam_conv2d_58_bias_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19│
AssignVariableOp_19AssignVariableOp+assignvariableop_19_adam_conv2d_59_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20▒
AssignVariableOp_20AssignVariableOp)assignvariableop_20_adam_conv2d_59_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21│
AssignVariableOp_21AssignVariableOp+assignvariableop_21_adam_conv2d_60_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22▒
AssignVariableOp_22AssignVariableOp)assignvariableop_22_adam_conv2d_60_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23▓
AssignVariableOp_23AssignVariableOp*assignvariableop_23_adam_dense_56_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24░
AssignVariableOp_24AssignVariableOp(assignvariableop_24_adam_dense_56_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25│
AssignVariableOp_25AssignVariableOp+assignvariableop_25_adam_conv2d_58_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26▒
AssignVariableOp_26AssignVariableOp)assignvariableop_26_adam_conv2d_58_bias_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27│
AssignVariableOp_27AssignVariableOp+assignvariableop_27_adam_conv2d_59_kernel_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28▒
AssignVariableOp_28AssignVariableOp)assignvariableop_28_adam_conv2d_59_bias_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29│
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_conv2d_60_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30▒
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_conv2d_60_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31▓
AssignVariableOp_31AssignVariableOp*assignvariableop_31_adam_dense_56_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32░
AssignVariableOp_32AssignVariableOp(assignvariableop_32_adam_dense_56_bias_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_329
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp┤
Identity_33Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_33Д
Identity_34IdentityIdentity_33:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_34"#
identity_34Identity_34:output:0*Џ
_input_shapesЅ
є: :::::::::::::::::::::::::::::::::2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
Њ0
Ц
H__inference_sequential_29_layer_call_and_return_conditional_losses_95581
conv2d_58_input
conv2d_58_95428
conv2d_58_95430
conv2d_59_95468
conv2d_59_95470
conv2d_60_95508
conv2d_60_95510
dense_56_95562
dense_56_95564
identityѕб!conv2d_58/StatefulPartitionedCallб!conv2d_59/StatefulPartitionedCallб!conv2d_60/StatefulPartitionedCallб dense_56/StatefulPartitionedCallД
!conv2d_58/StatefulPartitionedCallStatefulPartitionedCallconv2d_58_inputconv2d_58_95428conv2d_58_95430*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         00@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_conv2d_58_layer_call_and_return_conditional_losses_954172#
!conv2d_58/StatefulPartitionedCallЉ
activation_114/PartitionedCallPartitionedCall*conv2d_58/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         00@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *R
fMRK
I__inference_activation_114_layer_call_and_return_conditional_losses_954382 
activation_114/PartitionedCallћ
 max_pooling2d_58/PartitionedCallPartitionedCall'activation_114/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *T
fORM
K__inference_max_pooling2d_58_layer_call_and_return_conditional_losses_953732"
 max_pooling2d_58/PartitionedCall┴
!conv2d_59/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_58/PartitionedCall:output:0conv2d_59_95468conv2d_59_95470*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_conv2d_59_layer_call_and_return_conditional_losses_954572#
!conv2d_59/StatefulPartitionedCallЉ
activation_115/PartitionedCallPartitionedCall*conv2d_59/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *R
fMRK
I__inference_activation_115_layer_call_and_return_conditional_losses_954782 
activation_115/PartitionedCallћ
 max_pooling2d_59/PartitionedCallPartitionedCall'activation_115/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *T
fORM
K__inference_max_pooling2d_59_layer_call_and_return_conditional_losses_953852"
 max_pooling2d_59/PartitionedCall┴
!conv2d_60/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_59/PartitionedCall:output:0conv2d_60_95508conv2d_60_95510*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         		@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_conv2d_60_layer_call_and_return_conditional_losses_954972#
!conv2d_60/StatefulPartitionedCallЉ
activation_116/PartitionedCallPartitionedCall*conv2d_60/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         		@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *R
fMRK
I__inference_activation_116_layer_call_and_return_conditional_losses_955182 
activation_116/PartitionedCallћ
 max_pooling2d_60/PartitionedCallPartitionedCall'activation_116/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *T
fORM
K__inference_max_pooling2d_60_layer_call_and_return_conditional_losses_953972"
 max_pooling2d_60/PartitionedCall§
flatten_29/PartitionedCallPartitionedCall)max_pooling2d_60/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_flatten_29_layer_call_and_return_conditional_losses_955332
flatten_29/PartitionedCall«
 dense_56/StatefulPartitionedCallStatefulPartitionedCall#flatten_29/PartitionedCall:output:0dense_56_95562dense_56_95564*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *L
fGRE
C__inference_dense_56_layer_call_and_return_conditional_losses_955512"
 dense_56/StatefulPartitionedCallѕ
activation_117/PartitionedCallPartitionedCall)dense_56/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *R
fMRK
I__inference_activation_117_layer_call_and_return_conditional_losses_955722 
activation_117/PartitionedCallі
IdentityIdentity'activation_117/PartitionedCall:output:0"^conv2d_58/StatefulPartitionedCall"^conv2d_59/StatefulPartitionedCall"^conv2d_60/StatefulPartitionedCall!^dense_56/StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*N
_input_shapes=
;:         22::::::::2F
!conv2d_58/StatefulPartitionedCall!conv2d_58/StatefulPartitionedCall2F
!conv2d_59/StatefulPartitionedCall!conv2d_59/StatefulPartitionedCall2F
!conv2d_60/StatefulPartitionedCall!conv2d_60/StatefulPartitionedCall2D
 dense_56/StatefulPartitionedCall dense_56/StatefulPartitionedCall:` \
/
_output_shapes
:         22
)
_user_specified_nameconv2d_58_input
ю
J
.__inference_activation_117_layer_call_fn_95994

inputs
identityК
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *R
fMRK
I__inference_activation_117_layer_call_and_return_conditional_losses_955722
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*&
_input_shapes
:         :O K
'
_output_shapes
:         
 
_user_specified_nameinputs
в	
П
D__inference_conv2d_60_layer_call_and_return_conditional_losses_95497

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOpЋ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOpц
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         		@*
paddingVALID*
strides
2
Conv2Dї
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpѕ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         		@2	
BiasAddЮ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:         		@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:         @::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
ћ	
▄
C__inference_dense_56_layer_call_and_return_conditional_losses_95551

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpј
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	ђ*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
MatMulї
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpЂ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2	
BiasAddЋ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*/
_input_shapes
:         ђ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         ђ
 
_user_specified_nameinputs
в	
П
D__inference_conv2d_59_layer_call_and_return_conditional_losses_95457

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOpЋ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOpц
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingVALID*
strides
2
Conv2Dї
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpѕ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @2	
BiasAddЮ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:         @2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:         @::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
╣
e
I__inference_activation_117_layer_call_and_return_conditional_losses_95572

inputs
identityW
SigmoidSigmoidinputs*
T0*'
_output_shapes
:         2	
Sigmoid_
IdentityIdentitySigmoid:y:0*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*&
_input_shapes
:         :O K
'
_output_shapes
:         
 
_user_specified_nameinputs
О
e
I__inference_activation_116_layer_call_and_return_conditional_losses_95949

inputs
identityV
ReluReluinputs*
T0*/
_output_shapes
:         		@2
Relun
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:         		@2

Identity"
identityIdentity:output:0*.
_input_shapes
:         		@:W S
/
_output_shapes
:         		@
 
_user_specified_nameinputs
ЂI
Л
__inference__traced_save_96116
file_prefix/
+savev2_conv2d_58_kernel_read_readvariableop-
)savev2_conv2d_58_bias_read_readvariableop/
+savev2_conv2d_59_kernel_read_readvariableop-
)savev2_conv2d_59_bias_read_readvariableop/
+savev2_conv2d_60_kernel_read_readvariableop-
)savev2_conv2d_60_bias_read_readvariableop.
*savev2_dense_56_kernel_read_readvariableop,
(savev2_dense_56_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop6
2savev2_adam_conv2d_58_kernel_m_read_readvariableop4
0savev2_adam_conv2d_58_bias_m_read_readvariableop6
2savev2_adam_conv2d_59_kernel_m_read_readvariableop4
0savev2_adam_conv2d_59_bias_m_read_readvariableop6
2savev2_adam_conv2d_60_kernel_m_read_readvariableop4
0savev2_adam_conv2d_60_bias_m_read_readvariableop5
1savev2_adam_dense_56_kernel_m_read_readvariableop3
/savev2_adam_dense_56_bias_m_read_readvariableop6
2savev2_adam_conv2d_58_kernel_v_read_readvariableop4
0savev2_adam_conv2d_58_bias_v_read_readvariableop6
2savev2_adam_conv2d_59_kernel_v_read_readvariableop4
0savev2_adam_conv2d_59_bias_v_read_readvariableop6
2savev2_adam_conv2d_60_kernel_v_read_readvariableop4
0savev2_adam_conv2d_60_bias_v_read_readvariableop5
1savev2_adam_dense_56_kernel_v_read_readvariableop3
/savev2_adam_dense_56_bias_v_read_readvariableop
savev2_const

identity_1ѕбMergeV2CheckpointsЈ
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1І
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shardд
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilenameк
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*п
value╬B╦"B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names╠
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slicesй
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_conv2d_58_kernel_read_readvariableop)savev2_conv2d_58_bias_read_readvariableop+savev2_conv2d_59_kernel_read_readvariableop)savev2_conv2d_59_bias_read_readvariableop+savev2_conv2d_60_kernel_read_readvariableop)savev2_conv2d_60_bias_read_readvariableop*savev2_dense_56_kernel_read_readvariableop(savev2_dense_56_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop2savev2_adam_conv2d_58_kernel_m_read_readvariableop0savev2_adam_conv2d_58_bias_m_read_readvariableop2savev2_adam_conv2d_59_kernel_m_read_readvariableop0savev2_adam_conv2d_59_bias_m_read_readvariableop2savev2_adam_conv2d_60_kernel_m_read_readvariableop0savev2_adam_conv2d_60_bias_m_read_readvariableop1savev2_adam_dense_56_kernel_m_read_readvariableop/savev2_adam_dense_56_bias_m_read_readvariableop2savev2_adam_conv2d_58_kernel_v_read_readvariableop0savev2_adam_conv2d_58_bias_v_read_readvariableop2savev2_adam_conv2d_59_kernel_v_read_readvariableop0savev2_adam_conv2d_59_bias_v_read_readvariableop2savev2_adam_conv2d_60_kernel_v_read_readvariableop0savev2_adam_conv2d_60_bias_v_read_readvariableop1savev2_adam_dense_56_kernel_v_read_readvariableop/savev2_adam_dense_56_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *0
dtypes&
$2"	2
SaveV2║
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixesА
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*Х
_input_shapesц
А: :@:@:@@:@:@@:@:	ђ:: : : : : : : : : :@:@:@@:@:@@:@:	ђ::@:@:@@:@:@@:@:	ђ:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
:@: 

_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@:%!

_output_shapes
:	ђ: 

_output_shapes
::	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :,(
&
_output_shapes
:@: 

_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@:%!

_output_shapes
:	ђ: 

_output_shapes
::,(
&
_output_shapes
:@: 

_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@:% !

_output_shapes
:	ђ: !

_output_shapes
::"

_output_shapes
: 
╝
J
.__inference_activation_115_layer_call_fn_95925

inputs
identity¤
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *R
fMRK
I__inference_activation_115_layer_call_and_return_conditional_losses_954782
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:         @2

Identity"
identityIdentity:output:0*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
д
F
*__inference_flatten_29_layer_call_fn_95965

inputs
identity─
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_flatten_29_layer_call_and_return_conditional_losses_955332
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:         ђ2

Identity"
identityIdentity:output:0*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
О
e
I__inference_activation_114_layer_call_and_return_conditional_losses_95438

inputs
identityV
ReluReluinputs*
T0*/
_output_shapes
:         00@2
Relun
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:         00@2

Identity"
identityIdentity:output:0*.
_input_shapes
:         00@:W S
/
_output_shapes
:         00@
 
_user_specified_nameinputs
Ђ
g
K__inference_max_pooling2d_59_layer_call_and_return_conditional_losses_95385

inputs
identityГ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
2	
MaxPoolЄ
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
ћ	
▄
C__inference_dense_56_layer_call_and_return_conditional_losses_95975

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpј
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	ђ*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
MatMulї
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpЂ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2	
BiasAddЋ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*/
_input_shapes
:         ђ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         ђ
 
_user_specified_nameinputs
Ђ
g
K__inference_max_pooling2d_60_layer_call_and_return_conditional_losses_95397

inputs
identityГ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
2	
MaxPoolЄ
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
╝
J
.__inference_activation_116_layer_call_fn_95954

inputs
identity¤
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         		@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *R
fMRK
I__inference_activation_116_layer_call_and_return_conditional_losses_955182
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:         		@2

Identity"
identityIdentity:output:0*.
_input_shapes
:         		@:W S
/
_output_shapes
:         		@
 
_user_specified_nameinputs
л
т
-__inference_sequential_29_layer_call_fn_95667
conv2d_58_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
identityѕбStatefulPartitionedCall¤
StatefulPartitionedCallStatefulPartitionedCallconv2d_58_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         **
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8ѓ *Q
fLRJ
H__inference_sequential_29_layer_call_and_return_conditional_losses_956482
StatefulPartitionedCallј
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*N
_input_shapes=
;:         22::::::::22
StatefulPartitionedCallStatefulPartitionedCall:` \
/
_output_shapes
:         22
)
_user_specified_nameconv2d_58_input
х
▄
-__inference_sequential_29_layer_call_fn_95846

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
identityѕбStatefulPartitionedCallк
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         **
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8ѓ *Q
fLRJ
H__inference_sequential_29_layer_call_and_return_conditional_losses_956482
StatefulPartitionedCallј
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*N
_input_shapes=
;:         22::::::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         22
 
_user_specified_nameinputs
й
a
E__inference_flatten_29_layer_call_and_return_conditional_losses_95960

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:         ђ2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:         ђ2

Identity"
identityIdentity:output:0*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
╝
J
.__inference_activation_114_layer_call_fn_95896

inputs
identity¤
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         00@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *R
fMRK
I__inference_activation_114_layer_call_and_return_conditional_losses_954382
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:         00@2

Identity"
identityIdentity:output:0*.
_input_shapes
:         00@:W S
/
_output_shapes
:         00@
 
_user_specified_nameinputs
Г
L
0__inference_max_pooling2d_59_layer_call_fn_95391

inputs
identityВ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *T
fORM
K__inference_max_pooling2d_59_layer_call_and_return_conditional_losses_953852
PartitionedCallЈ
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Г
L
0__inference_max_pooling2d_60_layer_call_fn_95403

inputs
identityВ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *T
fORM
K__inference_max_pooling2d_60_layer_call_and_return_conditional_losses_953972
PartitionedCallЈ
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Ч
~
)__inference_conv2d_60_layer_call_fn_95944

inputs
unknown
	unknown_0
identityѕбStatefulPartitionedCallЧ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         		@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_conv2d_60_layer_call_and_return_conditional_losses_954972
StatefulPartitionedCallќ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:         		@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:         @::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
▄
}
(__inference_dense_56_layer_call_fn_95984

inputs
unknown
	unknown_0
identityѕбStatefulPartitionedCallз
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *L
fGRE
C__inference_dense_56_layer_call_and_return_conditional_losses_955512
StatefulPartitionedCallј
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*/
_input_shapes
:         ђ::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         ђ
 
_user_specified_nameinputs
в	
П
D__inference_conv2d_59_layer_call_and_return_conditional_losses_95906

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOpЋ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOpц
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingVALID*
strides
2
Conv2Dї
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpѕ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @2	
BiasAddЮ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:         @2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:         @::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
О
e
I__inference_activation_116_layer_call_and_return_conditional_losses_95518

inputs
identityV
ReluReluinputs*
T0*/
_output_shapes
:         		@2
Relun
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:         		@2

Identity"
identityIdentity:output:0*.
_input_shapes
:         		@:W S
/
_output_shapes
:         		@
 
_user_specified_nameinputs
ѕ1
в
H__inference_sequential_29_layer_call_and_return_conditional_losses_95788

inputs,
(conv2d_58_conv2d_readvariableop_resource-
)conv2d_58_biasadd_readvariableop_resource,
(conv2d_59_conv2d_readvariableop_resource-
)conv2d_59_biasadd_readvariableop_resource,
(conv2d_60_conv2d_readvariableop_resource-
)conv2d_60_biasadd_readvariableop_resource+
'dense_56_matmul_readvariableop_resource,
(dense_56_biasadd_readvariableop_resource
identityѕб conv2d_58/BiasAdd/ReadVariableOpбconv2d_58/Conv2D/ReadVariableOpб conv2d_59/BiasAdd/ReadVariableOpбconv2d_59/Conv2D/ReadVariableOpб conv2d_60/BiasAdd/ReadVariableOpбconv2d_60/Conv2D/ReadVariableOpбdense_56/BiasAdd/ReadVariableOpбdense_56/MatMul/ReadVariableOp│
conv2d_58/Conv2D/ReadVariableOpReadVariableOp(conv2d_58_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02!
conv2d_58/Conv2D/ReadVariableOp┬
conv2d_58/Conv2DConv2Dinputs'conv2d_58/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         00@*
paddingVALID*
strides
2
conv2d_58/Conv2Dф
 conv2d_58/BiasAdd/ReadVariableOpReadVariableOp)conv2d_58_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_58/BiasAdd/ReadVariableOp░
conv2d_58/BiasAddBiasAddconv2d_58/Conv2D:output:0(conv2d_58/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         00@2
conv2d_58/BiasAddѕ
activation_114/ReluReluconv2d_58/BiasAdd:output:0*
T0*/
_output_shapes
:         00@2
activation_114/Relu¤
max_pooling2d_58/MaxPoolMaxPool!activation_114/Relu:activations:0*/
_output_shapes
:         @*
ksize
*
paddingVALID*
strides
2
max_pooling2d_58/MaxPool│
conv2d_59/Conv2D/ReadVariableOpReadVariableOp(conv2d_59_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02!
conv2d_59/Conv2D/ReadVariableOpП
conv2d_59/Conv2DConv2D!max_pooling2d_58/MaxPool:output:0'conv2d_59/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingVALID*
strides
2
conv2d_59/Conv2Dф
 conv2d_59/BiasAdd/ReadVariableOpReadVariableOp)conv2d_59_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_59/BiasAdd/ReadVariableOp░
conv2d_59/BiasAddBiasAddconv2d_59/Conv2D:output:0(conv2d_59/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @2
conv2d_59/BiasAddѕ
activation_115/ReluReluconv2d_59/BiasAdd:output:0*
T0*/
_output_shapes
:         @2
activation_115/Relu¤
max_pooling2d_59/MaxPoolMaxPool!activation_115/Relu:activations:0*/
_output_shapes
:         @*
ksize
*
paddingVALID*
strides
2
max_pooling2d_59/MaxPool│
conv2d_60/Conv2D/ReadVariableOpReadVariableOp(conv2d_60_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02!
conv2d_60/Conv2D/ReadVariableOpП
conv2d_60/Conv2DConv2D!max_pooling2d_59/MaxPool:output:0'conv2d_60/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         		@*
paddingVALID*
strides
2
conv2d_60/Conv2Dф
 conv2d_60/BiasAdd/ReadVariableOpReadVariableOp)conv2d_60_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_60/BiasAdd/ReadVariableOp░
conv2d_60/BiasAddBiasAddconv2d_60/Conv2D:output:0(conv2d_60/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         		@2
conv2d_60/BiasAddѕ
activation_116/ReluReluconv2d_60/BiasAdd:output:0*
T0*/
_output_shapes
:         		@2
activation_116/Relu¤
max_pooling2d_60/MaxPoolMaxPool!activation_116/Relu:activations:0*/
_output_shapes
:         @*
ksize
*
paddingVALID*
strides
2
max_pooling2d_60/MaxPoolu
flatten_29/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
flatten_29/Constц
flatten_29/ReshapeReshape!max_pooling2d_60/MaxPool:output:0flatten_29/Const:output:0*
T0*(
_output_shapes
:         ђ2
flatten_29/ReshapeЕ
dense_56/MatMul/ReadVariableOpReadVariableOp'dense_56_matmul_readvariableop_resource*
_output_shapes
:	ђ*
dtype02 
dense_56/MatMul/ReadVariableOpБ
dense_56/MatMulMatMulflatten_29/Reshape:output:0&dense_56/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense_56/MatMulД
dense_56/BiasAdd/ReadVariableOpReadVariableOp(dense_56_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_56/BiasAdd/ReadVariableOpЦ
dense_56/BiasAddBiasAdddense_56/MatMul:product:0'dense_56/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense_56/BiasAddѕ
activation_117/SigmoidSigmoiddense_56/BiasAdd:output:0*
T0*'
_output_shapes
:         2
activation_117/Sigmoidђ
IdentityIdentityactivation_117/Sigmoid:y:0!^conv2d_58/BiasAdd/ReadVariableOp ^conv2d_58/Conv2D/ReadVariableOp!^conv2d_59/BiasAdd/ReadVariableOp ^conv2d_59/Conv2D/ReadVariableOp!^conv2d_60/BiasAdd/ReadVariableOp ^conv2d_60/Conv2D/ReadVariableOp ^dense_56/BiasAdd/ReadVariableOp^dense_56/MatMul/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*N
_input_shapes=
;:         22::::::::2D
 conv2d_58/BiasAdd/ReadVariableOp conv2d_58/BiasAdd/ReadVariableOp2B
conv2d_58/Conv2D/ReadVariableOpconv2d_58/Conv2D/ReadVariableOp2D
 conv2d_59/BiasAdd/ReadVariableOp conv2d_59/BiasAdd/ReadVariableOp2B
conv2d_59/Conv2D/ReadVariableOpconv2d_59/Conv2D/ReadVariableOp2D
 conv2d_60/BiasAdd/ReadVariableOp conv2d_60/BiasAdd/ReadVariableOp2B
conv2d_60/Conv2D/ReadVariableOpconv2d_60/Conv2D/ReadVariableOp2B
dense_56/BiasAdd/ReadVariableOpdense_56/BiasAdd/ReadVariableOp2@
dense_56/MatMul/ReadVariableOpdense_56/MatMul/ReadVariableOp:W S
/
_output_shapes
:         22
 
_user_specified_nameinputs
ъ
█
#__inference_signature_wrapper_95751
conv2d_58_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
identityѕбStatefulPartitionedCallД
StatefulPartitionedCallStatefulPartitionedCallconv2d_58_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         **
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8ѓ *)
f$R"
 __inference__wrapped_model_953672
StatefulPartitionedCallј
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*N
_input_shapes=
;:         22::::::::22
StatefulPartitionedCallStatefulPartitionedCall:` \
/
_output_shapes
:         22
)
_user_specified_nameconv2d_58_input
Ђ
g
K__inference_max_pooling2d_58_layer_call_and_return_conditional_losses_95373

inputs
identityГ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
2	
MaxPoolЄ
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Њ0
Ц
H__inference_sequential_29_layer_call_and_return_conditional_losses_95613
conv2d_58_input
conv2d_58_95584
conv2d_58_95586
conv2d_59_95591
conv2d_59_95593
conv2d_60_95598
conv2d_60_95600
dense_56_95606
dense_56_95608
identityѕб!conv2d_58/StatefulPartitionedCallб!conv2d_59/StatefulPartitionedCallб!conv2d_60/StatefulPartitionedCallб dense_56/StatefulPartitionedCallД
!conv2d_58/StatefulPartitionedCallStatefulPartitionedCallconv2d_58_inputconv2d_58_95584conv2d_58_95586*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         00@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_conv2d_58_layer_call_and_return_conditional_losses_954172#
!conv2d_58/StatefulPartitionedCallЉ
activation_114/PartitionedCallPartitionedCall*conv2d_58/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         00@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *R
fMRK
I__inference_activation_114_layer_call_and_return_conditional_losses_954382 
activation_114/PartitionedCallћ
 max_pooling2d_58/PartitionedCallPartitionedCall'activation_114/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *T
fORM
K__inference_max_pooling2d_58_layer_call_and_return_conditional_losses_953732"
 max_pooling2d_58/PartitionedCall┴
!conv2d_59/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_58/PartitionedCall:output:0conv2d_59_95591conv2d_59_95593*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_conv2d_59_layer_call_and_return_conditional_losses_954572#
!conv2d_59/StatefulPartitionedCallЉ
activation_115/PartitionedCallPartitionedCall*conv2d_59/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *R
fMRK
I__inference_activation_115_layer_call_and_return_conditional_losses_954782 
activation_115/PartitionedCallћ
 max_pooling2d_59/PartitionedCallPartitionedCall'activation_115/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *T
fORM
K__inference_max_pooling2d_59_layer_call_and_return_conditional_losses_953852"
 max_pooling2d_59/PartitionedCall┴
!conv2d_60/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_59/PartitionedCall:output:0conv2d_60_95598conv2d_60_95600*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         		@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_conv2d_60_layer_call_and_return_conditional_losses_954972#
!conv2d_60/StatefulPartitionedCallЉ
activation_116/PartitionedCallPartitionedCall*conv2d_60/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         		@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *R
fMRK
I__inference_activation_116_layer_call_and_return_conditional_losses_955182 
activation_116/PartitionedCallћ
 max_pooling2d_60/PartitionedCallPartitionedCall'activation_116/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *T
fORM
K__inference_max_pooling2d_60_layer_call_and_return_conditional_losses_953972"
 max_pooling2d_60/PartitionedCall§
flatten_29/PartitionedCallPartitionedCall)max_pooling2d_60/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_flatten_29_layer_call_and_return_conditional_losses_955332
flatten_29/PartitionedCall«
 dense_56/StatefulPartitionedCallStatefulPartitionedCall#flatten_29/PartitionedCall:output:0dense_56_95606dense_56_95608*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *L
fGRE
C__inference_dense_56_layer_call_and_return_conditional_losses_955512"
 dense_56/StatefulPartitionedCallѕ
activation_117/PartitionedCallPartitionedCall)dense_56/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *R
fMRK
I__inference_activation_117_layer_call_and_return_conditional_losses_955722 
activation_117/PartitionedCallі
IdentityIdentity'activation_117/PartitionedCall:output:0"^conv2d_58/StatefulPartitionedCall"^conv2d_59/StatefulPartitionedCall"^conv2d_60/StatefulPartitionedCall!^dense_56/StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*N
_input_shapes=
;:         22::::::::2F
!conv2d_58/StatefulPartitionedCall!conv2d_58/StatefulPartitionedCall2F
!conv2d_59/StatefulPartitionedCall!conv2d_59/StatefulPartitionedCall2F
!conv2d_60/StatefulPartitionedCall!conv2d_60/StatefulPartitionedCall2D
 dense_56/StatefulPartitionedCall dense_56/StatefulPartitionedCall:` \
/
_output_shapes
:         22
)
_user_specified_nameconv2d_58_input
в	
П
D__inference_conv2d_58_layer_call_and_return_conditional_losses_95877

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOpЋ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02
Conv2D/ReadVariableOpц
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         00@*
paddingVALID*
strides
2
Conv2Dї
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpѕ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         00@2	
BiasAddЮ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:         00@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:         22::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         22
 
_user_specified_nameinputs
Ч
~
)__inference_conv2d_58_layer_call_fn_95886

inputs
unknown
	unknown_0
identityѕбStatefulPartitionedCallЧ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         00@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_conv2d_58_layer_call_and_return_conditional_losses_954172
StatefulPartitionedCallќ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:         00@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:         22::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         22
 
_user_specified_nameinputs"▒L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*╔
serving_defaultх
S
conv2d_58_input@
!serving_default_conv2d_58_input:0         22B
activation_1170
StatefulPartitionedCall:0         tensorflow/serving/predict:ыл
▓N
layer_with_weights-0
layer-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer-4
layer-5
layer_with_weights-2
layer-6
layer-7
	layer-8

layer-9
layer_with_weights-3
layer-10
layer-11
	optimizer
trainable_variables
regularization_losses
	variables
	keras_api

signatures
г__call__
+Г&call_and_return_all_conditional_losses
«_default_save_signature"яJ
_tf_keras_sequential┐J{"class_name": "Sequential", "name": "sequential_29", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential_29", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 50, 50, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_58_input"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_58", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 50, 50, 1]}, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_114", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_58", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_59", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_115", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_59", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_60", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_116", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_60", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Flatten", "config": {"name": "flatten_29", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_56", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_117", "trainable": true, "dtype": "float32", "activation": "sigmoid"}}]}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 1}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 50, 50, 1]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_29", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 50, 50, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_58_input"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_58", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 50, 50, 1]}, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_114", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_58", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_59", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_115", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_59", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_60", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_116", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_60", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Flatten", "config": {"name": "flatten_29", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_56", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_117", "trainable": true, "dtype": "float32", "activation": "sigmoid"}}]}}, "training_config": {"loss": "binary_crossentropy", "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "binary_accuracy"}}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
Э


kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
»__call__
+░&call_and_return_all_conditional_losses"Л	
_tf_keras_layerи	{"class_name": "Conv2D", "name": "conv2d_58", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 50, 50, 1]}, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_58", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 50, 50, 1]}, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 1}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 50, 50, 1]}}
█
trainable_variables
regularization_losses
	variables
	keras_api
▒__call__
+▓&call_and_return_all_conditional_losses"╩
_tf_keras_layer░{"class_name": "Activation", "name": "activation_114", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_114", "trainable": true, "dtype": "float32", "activation": "relu"}}
Ѓ
trainable_variables
regularization_losses
	variables
 	keras_api
│__call__
+┤&call_and_return_all_conditional_losses"Ы
_tf_keras_layerп{"class_name": "MaxPooling2D", "name": "max_pooling2d_58", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_58", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
щ	

!kernel
"bias
#trainable_variables
$regularization_losses
%	variables
&	keras_api
х__call__
+Х&call_and_return_all_conditional_losses"м
_tf_keras_layerИ{"class_name": "Conv2D", "name": "conv2d_59", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_59", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 24, 24, 64]}}
█
'trainable_variables
(regularization_losses
)	variables
*	keras_api
и__call__
+И&call_and_return_all_conditional_losses"╩
_tf_keras_layer░{"class_name": "Activation", "name": "activation_115", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_115", "trainable": true, "dtype": "float32", "activation": "relu"}}
Ѓ
+trainable_variables
,regularization_losses
-	variables
.	keras_api
╣__call__
+║&call_and_return_all_conditional_losses"Ы
_tf_keras_layerп{"class_name": "MaxPooling2D", "name": "max_pooling2d_59", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_59", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
щ	

/kernel
0bias
1trainable_variables
2regularization_losses
3	variables
4	keras_api
╗__call__
+╝&call_and_return_all_conditional_losses"м
_tf_keras_layerИ{"class_name": "Conv2D", "name": "conv2d_60", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_60", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 11, 11, 64]}}
█
5trainable_variables
6regularization_losses
7	variables
8	keras_api
й__call__
+Й&call_and_return_all_conditional_losses"╩
_tf_keras_layer░{"class_name": "Activation", "name": "activation_116", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_116", "trainable": true, "dtype": "float32", "activation": "relu"}}
Ѓ
9trainable_variables
:regularization_losses
;	variables
<	keras_api
┐__call__
+└&call_and_return_all_conditional_losses"Ы
_tf_keras_layerп{"class_name": "MaxPooling2D", "name": "max_pooling2d_60", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_60", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
Ж
=trainable_variables
>regularization_losses
?	variables
@	keras_api
┴__call__
+┬&call_and_return_all_conditional_losses"┘
_tf_keras_layer┐{"class_name": "Flatten", "name": "flatten_29", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "flatten_29", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}}}
щ

Akernel
Bbias
Ctrainable_variables
Dregularization_losses
E	variables
F	keras_api
├__call__
+─&call_and_return_all_conditional_losses"м
_tf_keras_layerИ{"class_name": "Dense", "name": "dense_56", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_56", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 1024}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 1024]}}
я
Gtrainable_variables
Hregularization_losses
I	variables
J	keras_api
┼__call__
+к&call_and_return_all_conditional_losses"═
_tf_keras_layer│{"class_name": "Activation", "name": "activation_117", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_117", "trainable": true, "dtype": "float32", "activation": "sigmoid"}}
з
Kiter

Lbeta_1

Mbeta_2
	Ndecay
Olearning_ratemюmЮ!mъ"mЪ/mа0mАAmбBmБvцvЦ!vд"vД/vе0vЕAvфBvФ"
	optimizer
X
0
1
!2
"3
/4
05
A6
B7"
trackable_list_wrapper
 "
trackable_list_wrapper
X
0
1
!2
"3
/4
05
A6
B7"
trackable_list_wrapper
╬
Player_metrics
trainable_variables
Qlayer_regularization_losses

Rlayers
regularization_losses
Smetrics
	variables
Tnon_trainable_variables
г__call__
«_default_save_signature
+Г&call_and_return_all_conditional_losses
'Г"call_and_return_conditional_losses"
_generic_user_object
-
Кserving_default"
signature_map
*:(@2conv2d_58/kernel
:@2conv2d_58/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
░
Ulayer_metrics
trainable_variables
Vlayer_regularization_losses

Wlayers
regularization_losses
Xmetrics
	variables
Ynon_trainable_variables
»__call__
+░&call_and_return_all_conditional_losses
'░"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
░
Zlayer_metrics
trainable_variables
[layer_regularization_losses

\layers
regularization_losses
]metrics
	variables
^non_trainable_variables
▒__call__
+▓&call_and_return_all_conditional_losses
'▓"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
░
_layer_metrics
trainable_variables
`layer_regularization_losses

alayers
regularization_losses
bmetrics
	variables
cnon_trainable_variables
│__call__
+┤&call_and_return_all_conditional_losses
'┤"call_and_return_conditional_losses"
_generic_user_object
*:(@@2conv2d_59/kernel
:@2conv2d_59/bias
.
!0
"1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
!0
"1"
trackable_list_wrapper
░
dlayer_metrics
#trainable_variables
elayer_regularization_losses

flayers
$regularization_losses
gmetrics
%	variables
hnon_trainable_variables
х__call__
+Х&call_and_return_all_conditional_losses
'Х"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
░
ilayer_metrics
'trainable_variables
jlayer_regularization_losses

klayers
(regularization_losses
lmetrics
)	variables
mnon_trainable_variables
и__call__
+И&call_and_return_all_conditional_losses
'И"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
░
nlayer_metrics
+trainable_variables
olayer_regularization_losses

players
,regularization_losses
qmetrics
-	variables
rnon_trainable_variables
╣__call__
+║&call_and_return_all_conditional_losses
'║"call_and_return_conditional_losses"
_generic_user_object
*:(@@2conv2d_60/kernel
:@2conv2d_60/bias
.
/0
01"
trackable_list_wrapper
 "
trackable_list_wrapper
.
/0
01"
trackable_list_wrapper
░
slayer_metrics
1trainable_variables
tlayer_regularization_losses

ulayers
2regularization_losses
vmetrics
3	variables
wnon_trainable_variables
╗__call__
+╝&call_and_return_all_conditional_losses
'╝"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
░
xlayer_metrics
5trainable_variables
ylayer_regularization_losses

zlayers
6regularization_losses
{metrics
7	variables
|non_trainable_variables
й__call__
+Й&call_and_return_all_conditional_losses
'Й"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
}layer_metrics
9trainable_variables
~layer_regularization_losses

layers
:regularization_losses
ђmetrics
;	variables
Ђnon_trainable_variables
┐__call__
+└&call_and_return_all_conditional_losses
'└"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
х
ѓlayer_metrics
=trainable_variables
 Ѓlayer_regularization_losses
ёlayers
>regularization_losses
Ёmetrics
?	variables
єnon_trainable_variables
┴__call__
+┬&call_and_return_all_conditional_losses
'┬"call_and_return_conditional_losses"
_generic_user_object
": 	ђ2dense_56/kernel
:2dense_56/bias
.
A0
B1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
A0
B1"
trackable_list_wrapper
х
Єlayer_metrics
Ctrainable_variables
 ѕlayer_regularization_losses
Ѕlayers
Dregularization_losses
іmetrics
E	variables
Іnon_trainable_variables
├__call__
+─&call_and_return_all_conditional_losses
'─"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
х
їlayer_metrics
Gtrainable_variables
 Їlayer_regularization_losses
јlayers
Hregularization_losses
Јmetrics
I	variables
љnon_trainable_variables
┼__call__
+к&call_and_return_all_conditional_losses
'к"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
v
0
1
2
3
4
5
6
7
	8

9
10
11"
trackable_list_wrapper
0
Љ0
њ1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
┐

Њtotal

ћcount
Ћ	variables
ќ	keras_api"ё
_tf_keras_metricj{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}}
 

Ќtotal

ўcount
Ў
_fn_kwargs
џ	variables
Џ	keras_api"│
_tf_keras_metricў{"class_name": "MeanMetricWrapper", "name": "accuracy", "dtype": "float32", "config": {"name": "accuracy", "dtype": "float32", "fn": "binary_accuracy"}}
:  (2total
:  (2count
0
Њ0
ћ1"
trackable_list_wrapper
.
Ћ	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
Ќ0
ў1"
trackable_list_wrapper
.
џ	variables"
_generic_user_object
/:-@2Adam/conv2d_58/kernel/m
!:@2Adam/conv2d_58/bias/m
/:-@@2Adam/conv2d_59/kernel/m
!:@2Adam/conv2d_59/bias/m
/:-@@2Adam/conv2d_60/kernel/m
!:@2Adam/conv2d_60/bias/m
':%	ђ2Adam/dense_56/kernel/m
 :2Adam/dense_56/bias/m
/:-@2Adam/conv2d_58/kernel/v
!:@2Adam/conv2d_58/bias/v
/:-@@2Adam/conv2d_59/kernel/v
!:@2Adam/conv2d_59/bias/v
/:-@@2Adam/conv2d_60/kernel/v
!:@2Adam/conv2d_60/bias/v
':%	ђ2Adam/dense_56/kernel/v
 :2Adam/dense_56/bias/v
ѓ2 
-__inference_sequential_29_layer_call_fn_95667
-__inference_sequential_29_layer_call_fn_95846
-__inference_sequential_29_layer_call_fn_95867
-__inference_sequential_29_layer_call_fn_95720└
и▓│
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
Ь2в
H__inference_sequential_29_layer_call_and_return_conditional_losses_95581
H__inference_sequential_29_layer_call_and_return_conditional_losses_95788
H__inference_sequential_29_layer_call_and_return_conditional_losses_95613
H__inference_sequential_29_layer_call_and_return_conditional_losses_95825└
и▓│
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
Ь2в
 __inference__wrapped_model_95367к
І▓Є
FullArgSpec
argsџ 
varargsjargs
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *6б3
1і.
conv2d_58_input         22
М2л
)__inference_conv2d_58_layer_call_fn_95886б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
Ь2в
D__inference_conv2d_58_layer_call_and_return_conditional_losses_95877б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
п2Н
.__inference_activation_114_layer_call_fn_95896б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
з2­
I__inference_activation_114_layer_call_and_return_conditional_losses_95891б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ў2Ћ
0__inference_max_pooling2d_58_layer_call_fn_95379Я
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *@б=
;і84                                    
│2░
K__inference_max_pooling2d_58_layer_call_and_return_conditional_losses_95373Я
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *@б=
;і84                                    
М2л
)__inference_conv2d_59_layer_call_fn_95915б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
Ь2в
D__inference_conv2d_59_layer_call_and_return_conditional_losses_95906б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
п2Н
.__inference_activation_115_layer_call_fn_95925б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
з2­
I__inference_activation_115_layer_call_and_return_conditional_losses_95920б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ў2Ћ
0__inference_max_pooling2d_59_layer_call_fn_95391Я
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *@б=
;і84                                    
│2░
K__inference_max_pooling2d_59_layer_call_and_return_conditional_losses_95385Я
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *@б=
;і84                                    
М2л
)__inference_conv2d_60_layer_call_fn_95944б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
Ь2в
D__inference_conv2d_60_layer_call_and_return_conditional_losses_95935б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
п2Н
.__inference_activation_116_layer_call_fn_95954б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
з2­
I__inference_activation_116_layer_call_and_return_conditional_losses_95949б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ў2Ћ
0__inference_max_pooling2d_60_layer_call_fn_95403Я
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *@б=
;і84                                    
│2░
K__inference_max_pooling2d_60_layer_call_and_return_conditional_losses_95397Я
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *@б=
;і84                                    
н2Л
*__inference_flatten_29_layer_call_fn_95965б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
№2В
E__inference_flatten_29_layer_call_and_return_conditional_losses_95960б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
м2¤
(__inference_dense_56_layer_call_fn_95984б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ь2Ж
C__inference_dense_56_layer_call_and_return_conditional_losses_95975б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
п2Н
.__inference_activation_117_layer_call_fn_95994б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
з2­
I__inference_activation_117_layer_call_and_return_conditional_losses_95989б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
мB¤
#__inference_signature_wrapper_95751conv2d_58_input"ћ
Ї▓Ѕ
FullArgSpec
argsџ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 ▓
 __inference__wrapped_model_95367Ї!"/0AB@б=
6б3
1і.
conv2d_58_input         22
ф "?ф<
:
activation_117(і%
activation_117         х
I__inference_activation_114_layer_call_and_return_conditional_losses_95891h7б4
-б*
(і%
inputs         00@
ф "-б*
#і 
0         00@
џ Ї
.__inference_activation_114_layer_call_fn_95896[7б4
-б*
(і%
inputs         00@
ф " і         00@х
I__inference_activation_115_layer_call_and_return_conditional_losses_95920h7б4
-б*
(і%
inputs         @
ф "-б*
#і 
0         @
џ Ї
.__inference_activation_115_layer_call_fn_95925[7б4
-б*
(і%
inputs         @
ф " і         @х
I__inference_activation_116_layer_call_and_return_conditional_losses_95949h7б4
-б*
(і%
inputs         		@
ф "-б*
#і 
0         		@
џ Ї
.__inference_activation_116_layer_call_fn_95954[7б4
-б*
(і%
inputs         		@
ф " і         		@Ц
I__inference_activation_117_layer_call_and_return_conditional_losses_95989X/б,
%б"
 і
inputs         
ф "%б"
і
0         
џ }
.__inference_activation_117_layer_call_fn_95994K/б,
%б"
 і
inputs         
ф "і         ┤
D__inference_conv2d_58_layer_call_and_return_conditional_losses_95877l7б4
-б*
(і%
inputs         22
ф "-б*
#і 
0         00@
џ ї
)__inference_conv2d_58_layer_call_fn_95886_7б4
-б*
(і%
inputs         22
ф " і         00@┤
D__inference_conv2d_59_layer_call_and_return_conditional_losses_95906l!"7б4
-б*
(і%
inputs         @
ф "-б*
#і 
0         @
џ ї
)__inference_conv2d_59_layer_call_fn_95915_!"7б4
-б*
(і%
inputs         @
ф " і         @┤
D__inference_conv2d_60_layer_call_and_return_conditional_losses_95935l/07б4
-б*
(і%
inputs         @
ф "-б*
#і 
0         		@
џ ї
)__inference_conv2d_60_layer_call_fn_95944_/07б4
-б*
(і%
inputs         @
ф " і         		@ц
C__inference_dense_56_layer_call_and_return_conditional_losses_95975]AB0б-
&б#
!і
inputs         ђ
ф "%б"
і
0         
џ |
(__inference_dense_56_layer_call_fn_95984PAB0б-
&б#
!і
inputs         ђ
ф "і         ф
E__inference_flatten_29_layer_call_and_return_conditional_losses_95960a7б4
-б*
(і%
inputs         @
ф "&б#
і
0         ђ
џ ѓ
*__inference_flatten_29_layer_call_fn_95965T7б4
-б*
(і%
inputs         @
ф "і         ђЬ
K__inference_max_pooling2d_58_layer_call_and_return_conditional_losses_95373ъRбO
HбE
Cі@
inputs4                                    
ф "HбE
>і;
04                                    
џ к
0__inference_max_pooling2d_58_layer_call_fn_95379ЉRбO
HбE
Cі@
inputs4                                    
ф ";і84                                    Ь
K__inference_max_pooling2d_59_layer_call_and_return_conditional_losses_95385ъRбO
HбE
Cі@
inputs4                                    
ф "HбE
>і;
04                                    
џ к
0__inference_max_pooling2d_59_layer_call_fn_95391ЉRбO
HбE
Cі@
inputs4                                    
ф ";і84                                    Ь
K__inference_max_pooling2d_60_layer_call_and_return_conditional_losses_95397ъRбO
HбE
Cі@
inputs4                                    
ф "HбE
>і;
04                                    
џ к
0__inference_max_pooling2d_60_layer_call_fn_95403ЉRбO
HбE
Cі@
inputs4                                    
ф ";і84                                    К
H__inference_sequential_29_layer_call_and_return_conditional_losses_95581{!"/0ABHбE
>б;
1і.
conv2d_58_input         22
p

 
ф "%б"
і
0         
џ К
H__inference_sequential_29_layer_call_and_return_conditional_losses_95613{!"/0ABHбE
>б;
1і.
conv2d_58_input         22
p 

 
ф "%б"
і
0         
џ Й
H__inference_sequential_29_layer_call_and_return_conditional_losses_95788r!"/0AB?б<
5б2
(і%
inputs         22
p

 
ф "%б"
і
0         
џ Й
H__inference_sequential_29_layer_call_and_return_conditional_losses_95825r!"/0AB?б<
5б2
(і%
inputs         22
p 

 
ф "%б"
і
0         
џ Ъ
-__inference_sequential_29_layer_call_fn_95667n!"/0ABHбE
>б;
1і.
conv2d_58_input         22
p

 
ф "і         Ъ
-__inference_sequential_29_layer_call_fn_95720n!"/0ABHбE
>б;
1і.
conv2d_58_input         22
p 

 
ф "і         ќ
-__inference_sequential_29_layer_call_fn_95846e!"/0AB?б<
5б2
(і%
inputs         22
p

 
ф "і         ќ
-__inference_sequential_29_layer_call_fn_95867e!"/0AB?б<
5б2
(і%
inputs         22
p 

 
ф "і         ╚
#__inference_signature_wrapper_95751а!"/0ABSбP
б 
IфF
D
conv2d_58_input1і.
conv2d_58_input         22"?ф<
:
activation_117(і%
activation_117         