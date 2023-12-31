��
��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
�
BiasAdd

value"T	
bias"T
output"T""
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
�
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
$
DisableCopyOnRead
resource�
.
Identity

input"T
output"T"	
Ttype
u
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
2	
�
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( �
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
dtypetype�
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
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
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
9
Softmax
logits"T
softmax"T"
Ttype:
2
�
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
executor_typestring ��
@
StaticRegexFullMatch	
input

output
"
patternstring
L

StringJoin
inputs*N

output"

Nint("
	separatorstring 
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.13.02v2.13.0-rc2-7-g1cb1a030a628��

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
~
Adam/v/outputs/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*$
shared_nameAdam/v/outputs/bias
w
'Adam/v/outputs/bias/Read/ReadVariableOpReadVariableOpAdam/v/outputs/bias*
_output_shapes
:
*
dtype0
~
Adam/m/outputs/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*$
shared_nameAdam/m/outputs/bias
w
'Adam/m/outputs/bias/Read/ReadVariableOpReadVariableOpAdam/m/outputs/bias*
_output_shapes
:
*
dtype0
�
Adam/v/outputs/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�
*&
shared_nameAdam/v/outputs/kernel
�
)Adam/v/outputs/kernel/Read/ReadVariableOpReadVariableOpAdam/v/outputs/kernel*
_output_shapes
:	�
*
dtype0
�
Adam/m/outputs/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�
*&
shared_nameAdam/m/outputs/kernel
�
)Adam/m/outputs/kernel/Read/ReadVariableOpReadVariableOpAdam/m/outputs/kernel*
_output_shapes
:	�
*
dtype0
�
Adam/v/dense_16/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*%
shared_nameAdam/v/dense_16/bias
z
(Adam/v/dense_16/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_16/bias*
_output_shapes	
:�*
dtype0
�
Adam/m/dense_16/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*%
shared_nameAdam/m/dense_16/bias
z
(Adam/m/dense_16/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_16/bias*
_output_shapes	
:�*
dtype0
�
Adam/v/dense_16/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:Ѓ�*'
shared_nameAdam/v/dense_16/kernel
�
*Adam/v/dense_16/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_16/kernel*!
_output_shapes
:Ѓ�*
dtype0
�
Adam/m/dense_16/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:Ѓ�*'
shared_nameAdam/m/dense_16/kernel
�
*Adam/m/dense_16/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_16/kernel*!
_output_shapes
:Ѓ�*
dtype0
�
Adam/v/conv2d_69/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:4*&
shared_nameAdam/v/conv2d_69/bias
{
)Adam/v/conv2d_69/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_69/bias*
_output_shapes
:4*
dtype0
�
Adam/m/conv2d_69/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:4*&
shared_nameAdam/m/conv2d_69/bias
{
)Adam/m/conv2d_69/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_69/bias*
_output_shapes
:4*
dtype0
�
Adam/v/conv2d_69/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:%4*(
shared_nameAdam/v/conv2d_69/kernel
�
+Adam/v/conv2d_69/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_69/kernel*&
_output_shapes
:%4*
dtype0
�
Adam/m/conv2d_69/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:%4*(
shared_nameAdam/m/conv2d_69/kernel
�
+Adam/m/conv2d_69/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_69/kernel*&
_output_shapes
:%4*
dtype0
�
Adam/v/conv2d_68/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:%*&
shared_nameAdam/v/conv2d_68/bias
{
)Adam/v/conv2d_68/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_68/bias*
_output_shapes
:%*
dtype0
�
Adam/m/conv2d_68/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:%*&
shared_nameAdam/m/conv2d_68/bias
{
)Adam/m/conv2d_68/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_68/bias*
_output_shapes
:%*
dtype0
�
Adam/v/conv2d_68/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:C%*(
shared_nameAdam/v/conv2d_68/kernel
�
+Adam/v/conv2d_68/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_68/kernel*&
_output_shapes
:C%*
dtype0
�
Adam/m/conv2d_68/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:C%*(
shared_nameAdam/m/conv2d_68/kernel
�
+Adam/m/conv2d_68/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_68/kernel*&
_output_shapes
:C%*
dtype0
�
Adam/v/conv2d_67/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:C*&
shared_nameAdam/v/conv2d_67/bias
{
)Adam/v/conv2d_67/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_67/bias*
_output_shapes
:C*
dtype0
�
Adam/m/conv2d_67/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:C*&
shared_nameAdam/m/conv2d_67/bias
{
)Adam/m/conv2d_67/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_67/bias*
_output_shapes
:C*
dtype0
�
Adam/v/conv2d_67/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*C*(
shared_nameAdam/v/conv2d_67/kernel
�
+Adam/v/conv2d_67/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_67/kernel*&
_output_shapes
:*C*
dtype0
�
Adam/m/conv2d_67/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*C*(
shared_nameAdam/m/conv2d_67/kernel
�
+Adam/m/conv2d_67/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_67/kernel*&
_output_shapes
:*C*
dtype0
�
Adam/v/conv2d_66/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:**&
shared_nameAdam/v/conv2d_66/bias
{
)Adam/v/conv2d_66/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_66/bias*
_output_shapes
:**
dtype0
�
Adam/m/conv2d_66/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:**&
shared_nameAdam/m/conv2d_66/bias
{
)Adam/m/conv2d_66/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_66/bias*
_output_shapes
:**
dtype0
�
Adam/v/conv2d_66/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:f**(
shared_nameAdam/v/conv2d_66/kernel
�
+Adam/v/conv2d_66/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_66/kernel*&
_output_shapes
:f**
dtype0
�
Adam/m/conv2d_66/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:f**(
shared_nameAdam/m/conv2d_66/kernel
�
+Adam/m/conv2d_66/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_66/kernel*&
_output_shapes
:f**
dtype0
�
Adam/v/conv2d_65/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:f*&
shared_nameAdam/v/conv2d_65/bias
{
)Adam/v/conv2d_65/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_65/bias*
_output_shapes
:f*
dtype0
�
Adam/m/conv2d_65/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:f*&
shared_nameAdam/m/conv2d_65/bias
{
)Adam/m/conv2d_65/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_65/bias*
_output_shapes
:f*
dtype0
�
Adam/v/conv2d_65/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:f*(
shared_nameAdam/v/conv2d_65/kernel
�
+Adam/v/conv2d_65/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_65/kernel*&
_output_shapes
:f*
dtype0
�
Adam/m/conv2d_65/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:f*(
shared_nameAdam/m/conv2d_65/kernel
�
+Adam/m/conv2d_65/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_65/kernel*&
_output_shapes
:f*
dtype0
n
learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
_output_shapes
: *
dtype0
f
	iterationVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	iteration
_
iteration/Read/ReadVariableOpReadVariableOp	iteration*
_output_shapes
: *
dtype0	
p
outputs/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_nameoutputs/bias
i
 outputs/bias/Read/ReadVariableOpReadVariableOpoutputs/bias*
_output_shapes
:
*
dtype0
y
outputs/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�
*
shared_nameoutputs/kernel
r
"outputs/kernel/Read/ReadVariableOpReadVariableOpoutputs/kernel*
_output_shapes
:	�
*
dtype0
s
dense_16/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_namedense_16/bias
l
!dense_16/bias/Read/ReadVariableOpReadVariableOpdense_16/bias*
_output_shapes	
:�*
dtype0
}
dense_16/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:Ѓ�* 
shared_namedense_16/kernel
v
#dense_16/kernel/Read/ReadVariableOpReadVariableOpdense_16/kernel*!
_output_shapes
:Ѓ�*
dtype0
t
conv2d_69/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:4*
shared_nameconv2d_69/bias
m
"conv2d_69/bias/Read/ReadVariableOpReadVariableOpconv2d_69/bias*
_output_shapes
:4*
dtype0
�
conv2d_69/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:%4*!
shared_nameconv2d_69/kernel
}
$conv2d_69/kernel/Read/ReadVariableOpReadVariableOpconv2d_69/kernel*&
_output_shapes
:%4*
dtype0
t
conv2d_68/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:%*
shared_nameconv2d_68/bias
m
"conv2d_68/bias/Read/ReadVariableOpReadVariableOpconv2d_68/bias*
_output_shapes
:%*
dtype0
�
conv2d_68/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:C%*!
shared_nameconv2d_68/kernel
}
$conv2d_68/kernel/Read/ReadVariableOpReadVariableOpconv2d_68/kernel*&
_output_shapes
:C%*
dtype0
t
conv2d_67/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:C*
shared_nameconv2d_67/bias
m
"conv2d_67/bias/Read/ReadVariableOpReadVariableOpconv2d_67/bias*
_output_shapes
:C*
dtype0
�
conv2d_67/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*C*!
shared_nameconv2d_67/kernel
}
$conv2d_67/kernel/Read/ReadVariableOpReadVariableOpconv2d_67/kernel*&
_output_shapes
:*C*
dtype0
t
conv2d_66/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_nameconv2d_66/bias
m
"conv2d_66/bias/Read/ReadVariableOpReadVariableOpconv2d_66/bias*
_output_shapes
:**
dtype0
�
conv2d_66/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:f**!
shared_nameconv2d_66/kernel
}
$conv2d_66/kernel/Read/ReadVariableOpReadVariableOpconv2d_66/kernel*&
_output_shapes
:f**
dtype0
t
conv2d_65/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:f*
shared_nameconv2d_65/bias
m
"conv2d_65/bias/Read/ReadVariableOpReadVariableOpconv2d_65/bias*
_output_shapes
:f*
dtype0
�
conv2d_65/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:f*!
shared_nameconv2d_65/kernel
}
$conv2d_65/kernel/Read/ReadVariableOpReadVariableOpconv2d_65/kernel*&
_output_shapes
:f*
dtype0
�
serving_default_inputsPlaceholder*/
_output_shapes
:���������*
dtype0*$
shape:���������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_inputsconv2d_65/kernelconv2d_65/biasconv2d_66/kernelconv2d_66/biasconv2d_67/kernelconv2d_67/biasconv2d_68/kernelconv2d_68/biasconv2d_69/kernelconv2d_69/biasdense_16/kerneldense_16/biasoutputs/kerneloutputs/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *-
f(R&
$__inference_signature_wrapper_361602

NoOpNoOp
�[
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�Z
value�ZB�Z B�Z
�
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
layer_with_weights-4
layer-4
layer-5
layer_with_weights-5
layer-6
layer_with_weights-6
layer-7
		variables

trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias
 _jit_compiled_convolution_op*
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
* &call_and_return_all_conditional_losses

!kernel
"bias
 #_jit_compiled_convolution_op*
�
$	variables
%trainable_variables
&regularization_losses
'	keras_api
(__call__
*)&call_and_return_all_conditional_losses

*kernel
+bias
 ,_jit_compiled_convolution_op*
�
-	variables
.trainable_variables
/regularization_losses
0	keras_api
1__call__
*2&call_and_return_all_conditional_losses

3kernel
4bias
 5_jit_compiled_convolution_op*
�
6	variables
7trainable_variables
8regularization_losses
9	keras_api
:__call__
*;&call_and_return_all_conditional_losses

<kernel
=bias
 >_jit_compiled_convolution_op*
�
?	variables
@trainable_variables
Aregularization_losses
B	keras_api
C__call__
*D&call_and_return_all_conditional_losses* 
�
E	variables
Ftrainable_variables
Gregularization_losses
H	keras_api
I__call__
*J&call_and_return_all_conditional_losses

Kkernel
Lbias*
�
M	variables
Ntrainable_variables
Oregularization_losses
P	keras_api
Q__call__
*R&call_and_return_all_conditional_losses

Skernel
Tbias*
j
0
1
!2
"3
*4
+5
36
47
<8
=9
K10
L11
S12
T13*
j
0
1
!2
"3
*4
+5
36
47
<8
=9
K10
L11
S12
T13*
* 
�
Unon_trainable_variables

Vlayers
Wmetrics
Xlayer_regularization_losses
Ylayer_metrics
		variables

trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

Ztrace_0
[trace_1* 

\trace_0
]trace_1* 
* 
�
^
_variables
__iterations
`_learning_rate
a_index_dict
b
_momentums
c_velocities
d_update_step_xla*

eserving_default* 

0
1*

0
1*
* 
�
fnon_trainable_variables

glayers
hmetrics
ilayer_regularization_losses
jlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

ktrace_0* 

ltrace_0* 
`Z
VARIABLE_VALUEconv2d_65/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_65/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

!0
"1*

!0
"1*
* 
�
mnon_trainable_variables

nlayers
ometrics
player_regularization_losses
qlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
* &call_and_return_all_conditional_losses
& "call_and_return_conditional_losses*

rtrace_0* 

strace_0* 
`Z
VARIABLE_VALUEconv2d_66/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_66/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

*0
+1*

*0
+1*
* 
�
tnon_trainable_variables

ulayers
vmetrics
wlayer_regularization_losses
xlayer_metrics
$	variables
%trainable_variables
&regularization_losses
(__call__
*)&call_and_return_all_conditional_losses
&)"call_and_return_conditional_losses*

ytrace_0* 

ztrace_0* 
`Z
VARIABLE_VALUEconv2d_67/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_67/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

30
41*

30
41*
* 
�
{non_trainable_variables

|layers
}metrics
~layer_regularization_losses
layer_metrics
-	variables
.trainable_variables
/regularization_losses
1__call__
*2&call_and_return_all_conditional_losses
&2"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
`Z
VARIABLE_VALUEconv2d_68/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_68/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

<0
=1*

<0
=1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
6	variables
7trainable_variables
8regularization_losses
:__call__
*;&call_and_return_all_conditional_losses
&;"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
`Z
VARIABLE_VALUEconv2d_69/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_69/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
?	variables
@trainable_variables
Aregularization_losses
C__call__
*D&call_and_return_all_conditional_losses
&D"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

K0
L1*

K0
L1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
E	variables
Ftrainable_variables
Gregularization_losses
I__call__
*J&call_and_return_all_conditional_losses
&J"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
_Y
VARIABLE_VALUEdense_16/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_16/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE*

S0
T1*

S0
T1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
M	variables
Ntrainable_variables
Oregularization_losses
Q__call__
*R&call_and_return_all_conditional_losses
&R"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
^X
VARIABLE_VALUEoutputs/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEoutputs/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
<
0
1
2
3
4
5
6
7*

�0
�1*
* 
* 
* 
* 
* 
* 
�
_0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16
�17
�18
�19
�20
�21
�22
�23
�24
�25
�26
�27
�28*
SM
VARIABLE_VALUE	iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElearning_rate3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
x
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13*
x
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13*
�
�trace_0
�trace_1
�trace_2
�trace_3
�trace_4
�trace_5
�trace_6
�trace_7
�trace_8
�trace_9
�trace_10
�trace_11
�trace_12
�trace_13* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
<
�	variables
�	keras_api

�total

�count*
M
�	variables
�	keras_api

�total

�count
�
_fn_kwargs*
b\
VARIABLE_VALUEAdam/m/conv2d_65/kernel1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/conv2d_65/kernel1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/conv2d_65/bias1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/conv2d_65/bias1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/m/conv2d_66/kernel1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/conv2d_66/kernel1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/conv2d_66/bias1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/conv2d_66/bias1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/m/conv2d_67/kernel1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/v/conv2d_67/kernel2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/conv2d_67/bias2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/conv2d_67/bias2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/m/conv2d_68/kernel2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/v/conv2d_68/kernel2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/conv2d_68/bias2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/conv2d_68/bias2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/m/conv2d_69/kernel2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/v/conv2d_69/kernel2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/conv2d_69/bias2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/conv2d_69/bias2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/m/dense_16/kernel2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/dense_16/kernel2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/dense_16/bias2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/dense_16/bias2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/outputs/kernel2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/outputs/kernel2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/m/outputs/bias2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/v/outputs/bias2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

�0
�1*

�	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameconv2d_65/kernelconv2d_65/biasconv2d_66/kernelconv2d_66/biasconv2d_67/kernelconv2d_67/biasconv2d_68/kernelconv2d_68/biasconv2d_69/kernelconv2d_69/biasdense_16/kerneldense_16/biasoutputs/kerneloutputs/bias	iterationlearning_rateAdam/m/conv2d_65/kernelAdam/v/conv2d_65/kernelAdam/m/conv2d_65/biasAdam/v/conv2d_65/biasAdam/m/conv2d_66/kernelAdam/v/conv2d_66/kernelAdam/m/conv2d_66/biasAdam/v/conv2d_66/biasAdam/m/conv2d_67/kernelAdam/v/conv2d_67/kernelAdam/m/conv2d_67/biasAdam/v/conv2d_67/biasAdam/m/conv2d_68/kernelAdam/v/conv2d_68/kernelAdam/m/conv2d_68/biasAdam/v/conv2d_68/biasAdam/m/conv2d_69/kernelAdam/v/conv2d_69/kernelAdam/m/conv2d_69/biasAdam/v/conv2d_69/biasAdam/m/dense_16/kernelAdam/v/dense_16/kernelAdam/m/dense_16/biasAdam/v/dense_16/biasAdam/m/outputs/kernelAdam/v/outputs/kernelAdam/m/outputs/biasAdam/v/outputs/biastotal_1count_1totalcountConst*=
Tin6
422*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *(
f#R!
__inference__traced_save_362063
�	
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_65/kernelconv2d_65/biasconv2d_66/kernelconv2d_66/biasconv2d_67/kernelconv2d_67/biasconv2d_68/kernelconv2d_68/biasconv2d_69/kernelconv2d_69/biasdense_16/kerneldense_16/biasoutputs/kerneloutputs/bias	iterationlearning_rateAdam/m/conv2d_65/kernelAdam/v/conv2d_65/kernelAdam/m/conv2d_65/biasAdam/v/conv2d_65/biasAdam/m/conv2d_66/kernelAdam/v/conv2d_66/kernelAdam/m/conv2d_66/biasAdam/v/conv2d_66/biasAdam/m/conv2d_67/kernelAdam/v/conv2d_67/kernelAdam/m/conv2d_67/biasAdam/v/conv2d_67/biasAdam/m/conv2d_68/kernelAdam/v/conv2d_68/kernelAdam/m/conv2d_68/biasAdam/v/conv2d_68/biasAdam/m/conv2d_69/kernelAdam/v/conv2d_69/kernelAdam/m/conv2d_69/biasAdam/v/conv2d_69/biasAdam/m/dense_16/kernelAdam/v/dense_16/kernelAdam/m/dense_16/biasAdam/v/dense_16/biasAdam/m/outputs/kernelAdam/v/outputs/kernelAdam/m/outputs/biasAdam/v/outputs/biastotal_1count_1totalcount*<
Tin5
321*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *+
f&R$
"__inference__traced_restore_362216�
�
�
E__inference_conv2d_66_layer_call_and_return_conditional_losses_361642

inputs8
conv2d_readvariableop_resource:f*-
biasadd_readvariableop_resource:*
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:f**
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������**
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:**
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������*i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������*S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������f: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������f
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
*__inference_conv2d_66_layer_call_fn_361631

inputs!
unknown:f*
	unknown_0:*
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������**$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_conv2d_66_layer_call_and_return_conditional_losses_361298w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������*<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������f: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������f
 
_user_specified_nameinputs:&"
 
_user_specified_name361625:&"
 
_user_specified_name361627
�
�
E__inference_conv2d_66_layer_call_and_return_conditional_losses_361298

inputs8
conv2d_readvariableop_resource:f*-
biasadd_readvariableop_resource:*
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:f**
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������**
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:**
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������*i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������*S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������f: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������f
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
*__inference_conv2d_65_layer_call_fn_361611

inputs!
unknown:f
	unknown_0:f
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������f*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_conv2d_65_layer_call_and_return_conditional_losses_361282w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������f<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs:&"
 
_user_specified_name361605:&"
 
_user_specified_name361607
�
W
#__inference__update_step_xla_360336
gradient"
variable:f**
_XlaMustCompile(*(
_construction_contextkEagerRuntime*'
_input_shapes
:f*: *
	_noinline(:P L
&
_output_shapes
:f*
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
�
b
F__inference_flatten_11_layer_call_and_return_conditional_losses_361713

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"�����A  ^
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:���������ЃZ
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:���������Ѓ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������4:W S
/
_output_shapes
:���������4
 
_user_specified_nameinputs
�
G
+__inference_flatten_11_layer_call_fn_361707

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:���������Ѓ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_flatten_11_layer_call_and_return_conditional_losses_361357b
IdentityIdentityPartitionedCall:output:0*
T0*)
_output_shapes
:���������Ѓ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������4:W S
/
_output_shapes
:���������4
 
_user_specified_nameinputs
�
�
E__inference_conv2d_65_layer_call_and_return_conditional_losses_361282

inputs8
conv2d_readvariableop_resource:f-
biasadd_readvariableop_resource:f
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:f*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������f*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:f*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������fX
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������fi
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������fS
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
*__inference_conv2d_69_layer_call_fn_361691

inputs!
unknown:%4
	unknown_0:4
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������4*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_conv2d_69_layer_call_and_return_conditional_losses_361346w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������4<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������%: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������%
 
_user_specified_nameinputs:&"
 
_user_specified_name361685:&"
 
_user_specified_name361687
�
�
*__inference_conv2d_68_layer_call_fn_361671

inputs!
unknown:C%
	unknown_0:%
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������%*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_conv2d_68_layer_call_and_return_conditional_losses_361330w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������%<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������C: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������C
 
_user_specified_nameinputs:&"
 
_user_specified_name361665:&"
 
_user_specified_name361667
�
�
E__inference_conv2d_68_layer_call_and_return_conditional_losses_361682

inputs8
conv2d_readvariableop_resource:C%-
biasadd_readvariableop_resource:%
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:C%*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������%*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:%*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������%X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������%i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������%S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������C: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������C
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
W
#__inference__update_step_xla_360346
gradient"
variable:*C*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*'
_input_shapes
:*C: *
	_noinline(:P L
&
_output_shapes
:*C
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
�
�
*__inference_conv2d_67_layer_call_fn_361651

inputs!
unknown:*C
	unknown_0:C
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������C*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_conv2d_67_layer_call_and_return_conditional_losses_361314w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������C<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������*: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������*
 
_user_specified_nameinputs:&"
 
_user_specified_name361645:&"
 
_user_specified_name361647
�X
�
!__inference__wrapped_model_361269

inputsP
6sequential_11_conv2d_65_conv2d_readvariableop_resource:fE
7sequential_11_conv2d_65_biasadd_readvariableop_resource:fP
6sequential_11_conv2d_66_conv2d_readvariableop_resource:f*E
7sequential_11_conv2d_66_biasadd_readvariableop_resource:*P
6sequential_11_conv2d_67_conv2d_readvariableop_resource:*CE
7sequential_11_conv2d_67_biasadd_readvariableop_resource:CP
6sequential_11_conv2d_68_conv2d_readvariableop_resource:C%E
7sequential_11_conv2d_68_biasadd_readvariableop_resource:%P
6sequential_11_conv2d_69_conv2d_readvariableop_resource:%4E
7sequential_11_conv2d_69_biasadd_readvariableop_resource:4J
5sequential_11_dense_16_matmul_readvariableop_resource:Ѓ�E
6sequential_11_dense_16_biasadd_readvariableop_resource:	�G
4sequential_11_outputs_matmul_readvariableop_resource:	�
C
5sequential_11_outputs_biasadd_readvariableop_resource:

identity��.sequential_11/conv2d_65/BiasAdd/ReadVariableOp�-sequential_11/conv2d_65/Conv2D/ReadVariableOp�.sequential_11/conv2d_66/BiasAdd/ReadVariableOp�-sequential_11/conv2d_66/Conv2D/ReadVariableOp�.sequential_11/conv2d_67/BiasAdd/ReadVariableOp�-sequential_11/conv2d_67/Conv2D/ReadVariableOp�.sequential_11/conv2d_68/BiasAdd/ReadVariableOp�-sequential_11/conv2d_68/Conv2D/ReadVariableOp�.sequential_11/conv2d_69/BiasAdd/ReadVariableOp�-sequential_11/conv2d_69/Conv2D/ReadVariableOp�-sequential_11/dense_16/BiasAdd/ReadVariableOp�,sequential_11/dense_16/MatMul/ReadVariableOp�,sequential_11/outputs/BiasAdd/ReadVariableOp�+sequential_11/outputs/MatMul/ReadVariableOp�
-sequential_11/conv2d_65/Conv2D/ReadVariableOpReadVariableOp6sequential_11_conv2d_65_conv2d_readvariableop_resource*&
_output_shapes
:f*
dtype0�
sequential_11/conv2d_65/Conv2DConv2Dinputs5sequential_11/conv2d_65/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������f*
paddingVALID*
strides
�
.sequential_11/conv2d_65/BiasAdd/ReadVariableOpReadVariableOp7sequential_11_conv2d_65_biasadd_readvariableop_resource*
_output_shapes
:f*
dtype0�
sequential_11/conv2d_65/BiasAddBiasAdd'sequential_11/conv2d_65/Conv2D:output:06sequential_11/conv2d_65/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������f�
sequential_11/conv2d_65/ReluRelu(sequential_11/conv2d_65/BiasAdd:output:0*
T0*/
_output_shapes
:���������f�
-sequential_11/conv2d_66/Conv2D/ReadVariableOpReadVariableOp6sequential_11_conv2d_66_conv2d_readvariableop_resource*&
_output_shapes
:f**
dtype0�
sequential_11/conv2d_66/Conv2DConv2D*sequential_11/conv2d_65/Relu:activations:05sequential_11/conv2d_66/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������**
paddingVALID*
strides
�
.sequential_11/conv2d_66/BiasAdd/ReadVariableOpReadVariableOp7sequential_11_conv2d_66_biasadd_readvariableop_resource*
_output_shapes
:**
dtype0�
sequential_11/conv2d_66/BiasAddBiasAdd'sequential_11/conv2d_66/Conv2D:output:06sequential_11/conv2d_66/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*�
sequential_11/conv2d_66/ReluRelu(sequential_11/conv2d_66/BiasAdd:output:0*
T0*/
_output_shapes
:���������*�
-sequential_11/conv2d_67/Conv2D/ReadVariableOpReadVariableOp6sequential_11_conv2d_67_conv2d_readvariableop_resource*&
_output_shapes
:*C*
dtype0�
sequential_11/conv2d_67/Conv2DConv2D*sequential_11/conv2d_66/Relu:activations:05sequential_11/conv2d_67/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������C*
paddingVALID*
strides
�
.sequential_11/conv2d_67/BiasAdd/ReadVariableOpReadVariableOp7sequential_11_conv2d_67_biasadd_readvariableop_resource*
_output_shapes
:C*
dtype0�
sequential_11/conv2d_67/BiasAddBiasAdd'sequential_11/conv2d_67/Conv2D:output:06sequential_11/conv2d_67/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������C�
sequential_11/conv2d_67/ReluRelu(sequential_11/conv2d_67/BiasAdd:output:0*
T0*/
_output_shapes
:���������C�
-sequential_11/conv2d_68/Conv2D/ReadVariableOpReadVariableOp6sequential_11_conv2d_68_conv2d_readvariableop_resource*&
_output_shapes
:C%*
dtype0�
sequential_11/conv2d_68/Conv2DConv2D*sequential_11/conv2d_67/Relu:activations:05sequential_11/conv2d_68/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������%*
paddingVALID*
strides
�
.sequential_11/conv2d_68/BiasAdd/ReadVariableOpReadVariableOp7sequential_11_conv2d_68_biasadd_readvariableop_resource*
_output_shapes
:%*
dtype0�
sequential_11/conv2d_68/BiasAddBiasAdd'sequential_11/conv2d_68/Conv2D:output:06sequential_11/conv2d_68/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������%�
sequential_11/conv2d_68/ReluRelu(sequential_11/conv2d_68/BiasAdd:output:0*
T0*/
_output_shapes
:���������%�
-sequential_11/conv2d_69/Conv2D/ReadVariableOpReadVariableOp6sequential_11_conv2d_69_conv2d_readvariableop_resource*&
_output_shapes
:%4*
dtype0�
sequential_11/conv2d_69/Conv2DConv2D*sequential_11/conv2d_68/Relu:activations:05sequential_11/conv2d_69/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������4*
paddingVALID*
strides
�
.sequential_11/conv2d_69/BiasAdd/ReadVariableOpReadVariableOp7sequential_11_conv2d_69_biasadd_readvariableop_resource*
_output_shapes
:4*
dtype0�
sequential_11/conv2d_69/BiasAddBiasAdd'sequential_11/conv2d_69/Conv2D:output:06sequential_11/conv2d_69/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������4�
sequential_11/conv2d_69/ReluRelu(sequential_11/conv2d_69/BiasAdd:output:0*
T0*/
_output_shapes
:���������4o
sequential_11/flatten_11/ConstConst*
_output_shapes
:*
dtype0*
valueB"�����A  �
 sequential_11/flatten_11/ReshapeReshape*sequential_11/conv2d_69/Relu:activations:0'sequential_11/flatten_11/Const:output:0*
T0*)
_output_shapes
:���������Ѓ�
,sequential_11/dense_16/MatMul/ReadVariableOpReadVariableOp5sequential_11_dense_16_matmul_readvariableop_resource*!
_output_shapes
:Ѓ�*
dtype0�
sequential_11/dense_16/MatMulMatMul)sequential_11/flatten_11/Reshape:output:04sequential_11/dense_16/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
-sequential_11/dense_16/BiasAdd/ReadVariableOpReadVariableOp6sequential_11_dense_16_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
sequential_11/dense_16/BiasAddBiasAdd'sequential_11/dense_16/MatMul:product:05sequential_11/dense_16/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������
sequential_11/dense_16/ReluRelu'sequential_11/dense_16/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
+sequential_11/outputs/MatMul/ReadVariableOpReadVariableOp4sequential_11_outputs_matmul_readvariableop_resource*
_output_shapes
:	�
*
dtype0�
sequential_11/outputs/MatMulMatMul)sequential_11/dense_16/Relu:activations:03sequential_11/outputs/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
�
,sequential_11/outputs/BiasAdd/ReadVariableOpReadVariableOp5sequential_11_outputs_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0�
sequential_11/outputs/BiasAddBiasAdd&sequential_11/outputs/MatMul:product:04sequential_11/outputs/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
�
sequential_11/outputs/SoftmaxSoftmax&sequential_11/outputs/BiasAdd:output:0*
T0*'
_output_shapes
:���������
v
IdentityIdentity'sequential_11/outputs/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������
�
NoOpNoOp/^sequential_11/conv2d_65/BiasAdd/ReadVariableOp.^sequential_11/conv2d_65/Conv2D/ReadVariableOp/^sequential_11/conv2d_66/BiasAdd/ReadVariableOp.^sequential_11/conv2d_66/Conv2D/ReadVariableOp/^sequential_11/conv2d_67/BiasAdd/ReadVariableOp.^sequential_11/conv2d_67/Conv2D/ReadVariableOp/^sequential_11/conv2d_68/BiasAdd/ReadVariableOp.^sequential_11/conv2d_68/Conv2D/ReadVariableOp/^sequential_11/conv2d_69/BiasAdd/ReadVariableOp.^sequential_11/conv2d_69/Conv2D/ReadVariableOp.^sequential_11/dense_16/BiasAdd/ReadVariableOp-^sequential_11/dense_16/MatMul/ReadVariableOp-^sequential_11/outputs/BiasAdd/ReadVariableOp,^sequential_11/outputs/MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:���������: : : : : : : : : : : : : : 2`
.sequential_11/conv2d_65/BiasAdd/ReadVariableOp.sequential_11/conv2d_65/BiasAdd/ReadVariableOp2^
-sequential_11/conv2d_65/Conv2D/ReadVariableOp-sequential_11/conv2d_65/Conv2D/ReadVariableOp2`
.sequential_11/conv2d_66/BiasAdd/ReadVariableOp.sequential_11/conv2d_66/BiasAdd/ReadVariableOp2^
-sequential_11/conv2d_66/Conv2D/ReadVariableOp-sequential_11/conv2d_66/Conv2D/ReadVariableOp2`
.sequential_11/conv2d_67/BiasAdd/ReadVariableOp.sequential_11/conv2d_67/BiasAdd/ReadVariableOp2^
-sequential_11/conv2d_67/Conv2D/ReadVariableOp-sequential_11/conv2d_67/Conv2D/ReadVariableOp2`
.sequential_11/conv2d_68/BiasAdd/ReadVariableOp.sequential_11/conv2d_68/BiasAdd/ReadVariableOp2^
-sequential_11/conv2d_68/Conv2D/ReadVariableOp-sequential_11/conv2d_68/Conv2D/ReadVariableOp2`
.sequential_11/conv2d_69/BiasAdd/ReadVariableOp.sequential_11/conv2d_69/BiasAdd/ReadVariableOp2^
-sequential_11/conv2d_69/Conv2D/ReadVariableOp-sequential_11/conv2d_69/Conv2D/ReadVariableOp2^
-sequential_11/dense_16/BiasAdd/ReadVariableOp-sequential_11/dense_16/BiasAdd/ReadVariableOp2\
,sequential_11/dense_16/MatMul/ReadVariableOp,sequential_11/dense_16/MatMul/ReadVariableOp2\
,sequential_11/outputs/BiasAdd/ReadVariableOp,sequential_11/outputs/BiasAdd/ReadVariableOp2Z
+sequential_11/outputs/MatMul/ReadVariableOp+sequential_11/outputs/MatMul/ReadVariableOp:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�

�
C__inference_outputs_layer_call_and_return_conditional_losses_361385

inputs1
matmul_readvariableop_resource:	�
-
biasadd_readvariableop_resource:

identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:���������
`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������
S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
W
#__inference__update_step_xla_360366
gradient"
variable:%4*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*'
_input_shapes
:%4: *
	_noinline(:P L
&
_output_shapes
:%4
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
�
W
#__inference__update_step_xla_360356
gradient"
variable:C%*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*'
_input_shapes
:C%: *
	_noinline(:P L
&
_output_shapes
:C%
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
�
K
#__inference__update_step_xla_360331
gradient
variable:f*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:f: *
	_noinline(:D @

_output_shapes
:f
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
�
�
$__inference_signature_wrapper_361602

inputs!
unknown:f
	unknown_0:f#
	unknown_1:f*
	unknown_2:*#
	unknown_3:*C
	unknown_4:C#
	unknown_5:C%
	unknown_6:%#
	unknown_7:%4
	unknown_8:4
	unknown_9:Ѓ�

unknown_10:	�

unknown_11:	�


unknown_12:

identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� **
f%R#
!__inference__wrapped_model_361269o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:���������: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs:&"
 
_user_specified_name361572:&"
 
_user_specified_name361574:&"
 
_user_specified_name361576:&"
 
_user_specified_name361578:&"
 
_user_specified_name361580:&"
 
_user_specified_name361582:&"
 
_user_specified_name361584:&"
 
_user_specified_name361586:&	"
 
_user_specified_name361588:&
"
 
_user_specified_name361590:&"
 
_user_specified_name361592:&"
 
_user_specified_name361594:&"
 
_user_specified_name361596:&"
 
_user_specified_name361598
�
K
#__inference__update_step_xla_360391
gradient
variable:
*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:
: *
	_noinline(:D @

_output_shapes
:

"
_user_specified_name
gradient:($
"
_user_specified_name
variable
�
�
E__inference_conv2d_67_layer_call_and_return_conditional_losses_361662

inputs8
conv2d_readvariableop_resource:*C-
biasadd_readvariableop_resource:C
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*C*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������C*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:C*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������CX
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������Ci
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������CS
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������*: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������*
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
E__inference_conv2d_68_layer_call_and_return_conditional_losses_361330

inputs8
conv2d_readvariableop_resource:C%-
biasadd_readvariableop_resource:%
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:C%*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������%*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:%*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������%X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������%i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������%S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������C: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������C
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�

�
D__inference_dense_16_layer_call_and_return_conditional_losses_361369

inputs3
matmul_readvariableop_resource:Ѓ�.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpw
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*!
_output_shapes
:Ѓ�*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:���������Ѓ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:���������Ѓ
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�-
�
I__inference_sequential_11_layer_call_and_return_conditional_losses_361432

inputs*
conv2d_65_361395:f
conv2d_65_361397:f*
conv2d_66_361400:f*
conv2d_66_361402:**
conv2d_67_361405:*C
conv2d_67_361407:C*
conv2d_68_361410:C%
conv2d_68_361412:%*
conv2d_69_361415:%4
conv2d_69_361417:4$
dense_16_361421:Ѓ�
dense_16_361423:	�!
outputs_361426:	�

outputs_361428:

identity��!conv2d_65/StatefulPartitionedCall�!conv2d_66/StatefulPartitionedCall�!conv2d_67/StatefulPartitionedCall�!conv2d_68/StatefulPartitionedCall�!conv2d_69/StatefulPartitionedCall� dense_16/StatefulPartitionedCall�outputs/StatefulPartitionedCall�
!conv2d_65/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_65_361395conv2d_65_361397*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������f*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_conv2d_65_layer_call_and_return_conditional_losses_361282�
!conv2d_66/StatefulPartitionedCallStatefulPartitionedCall*conv2d_65/StatefulPartitionedCall:output:0conv2d_66_361400conv2d_66_361402*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������**$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_conv2d_66_layer_call_and_return_conditional_losses_361298�
!conv2d_67/StatefulPartitionedCallStatefulPartitionedCall*conv2d_66/StatefulPartitionedCall:output:0conv2d_67_361405conv2d_67_361407*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������C*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_conv2d_67_layer_call_and_return_conditional_losses_361314�
!conv2d_68/StatefulPartitionedCallStatefulPartitionedCall*conv2d_67/StatefulPartitionedCall:output:0conv2d_68_361410conv2d_68_361412*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������%*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_conv2d_68_layer_call_and_return_conditional_losses_361330�
!conv2d_69/StatefulPartitionedCallStatefulPartitionedCall*conv2d_68/StatefulPartitionedCall:output:0conv2d_69_361415conv2d_69_361417*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������4*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_conv2d_69_layer_call_and_return_conditional_losses_361346�
flatten_11/PartitionedCallPartitionedCall*conv2d_69/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:���������Ѓ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_flatten_11_layer_call_and_return_conditional_losses_361357�
 dense_16/StatefulPartitionedCallStatefulPartitionedCall#flatten_11/PartitionedCall:output:0dense_16_361421dense_16_361423*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_dense_16_layer_call_and_return_conditional_losses_361369�
outputs/StatefulPartitionedCallStatefulPartitionedCall)dense_16/StatefulPartitionedCall:output:0outputs_361426outputs_361428*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_outputs_layer_call_and_return_conditional_losses_361385w
IdentityIdentity(outputs/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
�
NoOpNoOp"^conv2d_65/StatefulPartitionedCall"^conv2d_66/StatefulPartitionedCall"^conv2d_67/StatefulPartitionedCall"^conv2d_68/StatefulPartitionedCall"^conv2d_69/StatefulPartitionedCall!^dense_16/StatefulPartitionedCall ^outputs/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:���������: : : : : : : : : : : : : : 2F
!conv2d_65/StatefulPartitionedCall!conv2d_65/StatefulPartitionedCall2F
!conv2d_66/StatefulPartitionedCall!conv2d_66/StatefulPartitionedCall2F
!conv2d_67/StatefulPartitionedCall!conv2d_67/StatefulPartitionedCall2F
!conv2d_68/StatefulPartitionedCall!conv2d_68/StatefulPartitionedCall2F
!conv2d_69/StatefulPartitionedCall!conv2d_69/StatefulPartitionedCall2D
 dense_16/StatefulPartitionedCall dense_16/StatefulPartitionedCall2B
outputs/StatefulPartitionedCalloutputs/StatefulPartitionedCall:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs:&"
 
_user_specified_name361395:&"
 
_user_specified_name361397:&"
 
_user_specified_name361400:&"
 
_user_specified_name361402:&"
 
_user_specified_name361405:&"
 
_user_specified_name361407:&"
 
_user_specified_name361410:&"
 
_user_specified_name361412:&	"
 
_user_specified_name361415:&
"
 
_user_specified_name361417:&"
 
_user_specified_name361421:&"
 
_user_specified_name361423:&"
 
_user_specified_name361426:&"
 
_user_specified_name361428
�
P
#__inference__update_step_xla_360386
gradient
variable:	�
*
_XlaMustCompile(*(
_construction_contextkEagerRuntime* 
_input_shapes
:	�
: *
	_noinline(:I E

_output_shapes
:	�

"
_user_specified_name
gradient:($
"
_user_specified_name
variable
�

�
D__inference_dense_16_layer_call_and_return_conditional_losses_361733

inputs3
matmul_readvariableop_resource:Ѓ�.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpw
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*!
_output_shapes
:Ѓ�*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:���������Ѓ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:���������Ѓ
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
L
#__inference__update_step_xla_360381
gradient
variable:	�*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes
	:�: *
	_noinline(:E A

_output_shapes	
:�
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
�
b
F__inference_flatten_11_layer_call_and_return_conditional_losses_361357

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"�����A  ^
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:���������ЃZ
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:���������Ѓ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������4:W S
/
_output_shapes
:���������4
 
_user_specified_nameinputs
�
�
E__inference_conv2d_67_layer_call_and_return_conditional_losses_361314

inputs8
conv2d_readvariableop_resource:*C-
biasadd_readvariableop_resource:C
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*C*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������C*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:C*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������CX
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������Ci
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������CS
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������*: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������*
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
��
�,
__inference__traced_save_362063
file_prefixA
'read_disablecopyonread_conv2d_65_kernel:f5
'read_1_disablecopyonread_conv2d_65_bias:fC
)read_2_disablecopyonread_conv2d_66_kernel:f*5
'read_3_disablecopyonread_conv2d_66_bias:*C
)read_4_disablecopyonread_conv2d_67_kernel:*C5
'read_5_disablecopyonread_conv2d_67_bias:CC
)read_6_disablecopyonread_conv2d_68_kernel:C%5
'read_7_disablecopyonread_conv2d_68_bias:%C
)read_8_disablecopyonread_conv2d_69_kernel:%45
'read_9_disablecopyonread_conv2d_69_bias:4>
)read_10_disablecopyonread_dense_16_kernel:Ѓ�6
'read_11_disablecopyonread_dense_16_bias:	�;
(read_12_disablecopyonread_outputs_kernel:	�
4
&read_13_disablecopyonread_outputs_bias:
-
#read_14_disablecopyonread_iteration:	 1
'read_15_disablecopyonread_learning_rate: K
1read_16_disablecopyonread_adam_m_conv2d_65_kernel:fK
1read_17_disablecopyonread_adam_v_conv2d_65_kernel:f=
/read_18_disablecopyonread_adam_m_conv2d_65_bias:f=
/read_19_disablecopyonread_adam_v_conv2d_65_bias:fK
1read_20_disablecopyonread_adam_m_conv2d_66_kernel:f*K
1read_21_disablecopyonread_adam_v_conv2d_66_kernel:f*=
/read_22_disablecopyonread_adam_m_conv2d_66_bias:*=
/read_23_disablecopyonread_adam_v_conv2d_66_bias:*K
1read_24_disablecopyonread_adam_m_conv2d_67_kernel:*CK
1read_25_disablecopyonread_adam_v_conv2d_67_kernel:*C=
/read_26_disablecopyonread_adam_m_conv2d_67_bias:C=
/read_27_disablecopyonread_adam_v_conv2d_67_bias:CK
1read_28_disablecopyonread_adam_m_conv2d_68_kernel:C%K
1read_29_disablecopyonread_adam_v_conv2d_68_kernel:C%=
/read_30_disablecopyonread_adam_m_conv2d_68_bias:%=
/read_31_disablecopyonread_adam_v_conv2d_68_bias:%K
1read_32_disablecopyonread_adam_m_conv2d_69_kernel:%4K
1read_33_disablecopyonread_adam_v_conv2d_69_kernel:%4=
/read_34_disablecopyonread_adam_m_conv2d_69_bias:4=
/read_35_disablecopyonread_adam_v_conv2d_69_bias:4E
0read_36_disablecopyonread_adam_m_dense_16_kernel:Ѓ�E
0read_37_disablecopyonread_adam_v_dense_16_kernel:Ѓ�=
.read_38_disablecopyonread_adam_m_dense_16_bias:	�=
.read_39_disablecopyonread_adam_v_dense_16_bias:	�B
/read_40_disablecopyonread_adam_m_outputs_kernel:	�
B
/read_41_disablecopyonread_adam_v_outputs_kernel:	�
;
-read_42_disablecopyonread_adam_m_outputs_bias:
;
-read_43_disablecopyonread_adam_v_outputs_bias:
+
!read_44_disablecopyonread_total_1: +
!read_45_disablecopyonread_count_1: )
read_46_disablecopyonread_total: )
read_47_disablecopyonread_count: 
savev2_const
identity_97��MergeV2Checkpoints�Read/DisableCopyOnRead�Read/ReadVariableOp�Read_1/DisableCopyOnRead�Read_1/ReadVariableOp�Read_10/DisableCopyOnRead�Read_10/ReadVariableOp�Read_11/DisableCopyOnRead�Read_11/ReadVariableOp�Read_12/DisableCopyOnRead�Read_12/ReadVariableOp�Read_13/DisableCopyOnRead�Read_13/ReadVariableOp�Read_14/DisableCopyOnRead�Read_14/ReadVariableOp�Read_15/DisableCopyOnRead�Read_15/ReadVariableOp�Read_16/DisableCopyOnRead�Read_16/ReadVariableOp�Read_17/DisableCopyOnRead�Read_17/ReadVariableOp�Read_18/DisableCopyOnRead�Read_18/ReadVariableOp�Read_19/DisableCopyOnRead�Read_19/ReadVariableOp�Read_2/DisableCopyOnRead�Read_2/ReadVariableOp�Read_20/DisableCopyOnRead�Read_20/ReadVariableOp�Read_21/DisableCopyOnRead�Read_21/ReadVariableOp�Read_22/DisableCopyOnRead�Read_22/ReadVariableOp�Read_23/DisableCopyOnRead�Read_23/ReadVariableOp�Read_24/DisableCopyOnRead�Read_24/ReadVariableOp�Read_25/DisableCopyOnRead�Read_25/ReadVariableOp�Read_26/DisableCopyOnRead�Read_26/ReadVariableOp�Read_27/DisableCopyOnRead�Read_27/ReadVariableOp�Read_28/DisableCopyOnRead�Read_28/ReadVariableOp�Read_29/DisableCopyOnRead�Read_29/ReadVariableOp�Read_3/DisableCopyOnRead�Read_3/ReadVariableOp�Read_30/DisableCopyOnRead�Read_30/ReadVariableOp�Read_31/DisableCopyOnRead�Read_31/ReadVariableOp�Read_32/DisableCopyOnRead�Read_32/ReadVariableOp�Read_33/DisableCopyOnRead�Read_33/ReadVariableOp�Read_34/DisableCopyOnRead�Read_34/ReadVariableOp�Read_35/DisableCopyOnRead�Read_35/ReadVariableOp�Read_36/DisableCopyOnRead�Read_36/ReadVariableOp�Read_37/DisableCopyOnRead�Read_37/ReadVariableOp�Read_38/DisableCopyOnRead�Read_38/ReadVariableOp�Read_39/DisableCopyOnRead�Read_39/ReadVariableOp�Read_4/DisableCopyOnRead�Read_4/ReadVariableOp�Read_40/DisableCopyOnRead�Read_40/ReadVariableOp�Read_41/DisableCopyOnRead�Read_41/ReadVariableOp�Read_42/DisableCopyOnRead�Read_42/ReadVariableOp�Read_43/DisableCopyOnRead�Read_43/ReadVariableOp�Read_44/DisableCopyOnRead�Read_44/ReadVariableOp�Read_45/DisableCopyOnRead�Read_45/ReadVariableOp�Read_46/DisableCopyOnRead�Read_46/ReadVariableOp�Read_47/DisableCopyOnRead�Read_47/ReadVariableOp�Read_5/DisableCopyOnRead�Read_5/ReadVariableOp�Read_6/DisableCopyOnRead�Read_6/ReadVariableOp�Read_7/DisableCopyOnRead�Read_7/ReadVariableOp�Read_8/DisableCopyOnRead�Read_8/ReadVariableOp�Read_9/DisableCopyOnRead�Read_9/ReadVariableOpw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part�
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: y
Read/DisableCopyOnReadDisableCopyOnRead'read_disablecopyonread_conv2d_65_kernel"/device:CPU:0*
_output_shapes
 �
Read/ReadVariableOpReadVariableOp'read_disablecopyonread_conv2d_65_kernel^Read/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:f*
dtype0q
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:fi

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*&
_output_shapes
:f{
Read_1/DisableCopyOnReadDisableCopyOnRead'read_1_disablecopyonread_conv2d_65_bias"/device:CPU:0*
_output_shapes
 �
Read_1/ReadVariableOpReadVariableOp'read_1_disablecopyonread_conv2d_65_bias^Read_1/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:f*
dtype0i

Identity_2IdentityRead_1/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:f_

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes
:f}
Read_2/DisableCopyOnReadDisableCopyOnRead)read_2_disablecopyonread_conv2d_66_kernel"/device:CPU:0*
_output_shapes
 �
Read_2/ReadVariableOpReadVariableOp)read_2_disablecopyonread_conv2d_66_kernel^Read_2/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:f**
dtype0u

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:f*k

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*&
_output_shapes
:f*{
Read_3/DisableCopyOnReadDisableCopyOnRead'read_3_disablecopyonread_conv2d_66_bias"/device:CPU:0*
_output_shapes
 �
Read_3/ReadVariableOpReadVariableOp'read_3_disablecopyonread_conv2d_66_bias^Read_3/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:**
dtype0i

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:*_

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes
:*}
Read_4/DisableCopyOnReadDisableCopyOnRead)read_4_disablecopyonread_conv2d_67_kernel"/device:CPU:0*
_output_shapes
 �
Read_4/ReadVariableOpReadVariableOp)read_4_disablecopyonread_conv2d_67_kernel^Read_4/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*C*
dtype0u

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:*Ck

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*&
_output_shapes
:*C{
Read_5/DisableCopyOnReadDisableCopyOnRead'read_5_disablecopyonread_conv2d_67_bias"/device:CPU:0*
_output_shapes
 �
Read_5/ReadVariableOpReadVariableOp'read_5_disablecopyonread_conv2d_67_bias^Read_5/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:C*
dtype0j
Identity_10IdentityRead_5/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:Ca
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes
:C}
Read_6/DisableCopyOnReadDisableCopyOnRead)read_6_disablecopyonread_conv2d_68_kernel"/device:CPU:0*
_output_shapes
 �
Read_6/ReadVariableOpReadVariableOp)read_6_disablecopyonread_conv2d_68_kernel^Read_6/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:C%*
dtype0v
Identity_12IdentityRead_6/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:C%m
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0*&
_output_shapes
:C%{
Read_7/DisableCopyOnReadDisableCopyOnRead'read_7_disablecopyonread_conv2d_68_bias"/device:CPU:0*
_output_shapes
 �
Read_7/ReadVariableOpReadVariableOp'read_7_disablecopyonread_conv2d_68_bias^Read_7/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:%*
dtype0j
Identity_14IdentityRead_7/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:%a
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes
:%}
Read_8/DisableCopyOnReadDisableCopyOnRead)read_8_disablecopyonread_conv2d_69_kernel"/device:CPU:0*
_output_shapes
 �
Read_8/ReadVariableOpReadVariableOp)read_8_disablecopyonread_conv2d_69_kernel^Read_8/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:%4*
dtype0v
Identity_16IdentityRead_8/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:%4m
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0*&
_output_shapes
:%4{
Read_9/DisableCopyOnReadDisableCopyOnRead'read_9_disablecopyonread_conv2d_69_bias"/device:CPU:0*
_output_shapes
 �
Read_9/ReadVariableOpReadVariableOp'read_9_disablecopyonread_conv2d_69_bias^Read_9/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:4*
dtype0j
Identity_18IdentityRead_9/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:4a
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes
:4~
Read_10/DisableCopyOnReadDisableCopyOnRead)read_10_disablecopyonread_dense_16_kernel"/device:CPU:0*
_output_shapes
 �
Read_10/ReadVariableOpReadVariableOp)read_10_disablecopyonread_dense_16_kernel^Read_10/DisableCopyOnRead"/device:CPU:0*!
_output_shapes
:Ѓ�*
dtype0r
Identity_20IdentityRead_10/ReadVariableOp:value:0"/device:CPU:0*
T0*!
_output_shapes
:Ѓ�h
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0*!
_output_shapes
:Ѓ�|
Read_11/DisableCopyOnReadDisableCopyOnRead'read_11_disablecopyonread_dense_16_bias"/device:CPU:0*
_output_shapes
 �
Read_11/ReadVariableOpReadVariableOp'read_11_disablecopyonread_dense_16_bias^Read_11/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_22IdentityRead_11/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0*
_output_shapes	
:�}
Read_12/DisableCopyOnReadDisableCopyOnRead(read_12_disablecopyonread_outputs_kernel"/device:CPU:0*
_output_shapes
 �
Read_12/ReadVariableOpReadVariableOp(read_12_disablecopyonread_outputs_kernel^Read_12/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�
*
dtype0p
Identity_24IdentityRead_12/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�
f
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0*
_output_shapes
:	�
{
Read_13/DisableCopyOnReadDisableCopyOnRead&read_13_disablecopyonread_outputs_bias"/device:CPU:0*
_output_shapes
 �
Read_13/ReadVariableOpReadVariableOp&read_13_disablecopyonread_outputs_bias^Read_13/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:
*
dtype0k
Identity_26IdentityRead_13/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:
a
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0*
_output_shapes
:
x
Read_14/DisableCopyOnReadDisableCopyOnRead#read_14_disablecopyonread_iteration"/device:CPU:0*
_output_shapes
 �
Read_14/ReadVariableOpReadVariableOp#read_14_disablecopyonread_iteration^Read_14/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0	g
Identity_28IdentityRead_14/ReadVariableOp:value:0"/device:CPU:0*
T0	*
_output_shapes
: ]
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0	*
_output_shapes
: |
Read_15/DisableCopyOnReadDisableCopyOnRead'read_15_disablecopyonread_learning_rate"/device:CPU:0*
_output_shapes
 �
Read_15/ReadVariableOpReadVariableOp'read_15_disablecopyonread_learning_rate^Read_15/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_30IdentityRead_15/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_31IdentityIdentity_30:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_16/DisableCopyOnReadDisableCopyOnRead1read_16_disablecopyonread_adam_m_conv2d_65_kernel"/device:CPU:0*
_output_shapes
 �
Read_16/ReadVariableOpReadVariableOp1read_16_disablecopyonread_adam_m_conv2d_65_kernel^Read_16/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:f*
dtype0w
Identity_32IdentityRead_16/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:fm
Identity_33IdentityIdentity_32:output:0"/device:CPU:0*
T0*&
_output_shapes
:f�
Read_17/DisableCopyOnReadDisableCopyOnRead1read_17_disablecopyonread_adam_v_conv2d_65_kernel"/device:CPU:0*
_output_shapes
 �
Read_17/ReadVariableOpReadVariableOp1read_17_disablecopyonread_adam_v_conv2d_65_kernel^Read_17/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:f*
dtype0w
Identity_34IdentityRead_17/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:fm
Identity_35IdentityIdentity_34:output:0"/device:CPU:0*
T0*&
_output_shapes
:f�
Read_18/DisableCopyOnReadDisableCopyOnRead/read_18_disablecopyonread_adam_m_conv2d_65_bias"/device:CPU:0*
_output_shapes
 �
Read_18/ReadVariableOpReadVariableOp/read_18_disablecopyonread_adam_m_conv2d_65_bias^Read_18/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:f*
dtype0k
Identity_36IdentityRead_18/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:fa
Identity_37IdentityIdentity_36:output:0"/device:CPU:0*
T0*
_output_shapes
:f�
Read_19/DisableCopyOnReadDisableCopyOnRead/read_19_disablecopyonread_adam_v_conv2d_65_bias"/device:CPU:0*
_output_shapes
 �
Read_19/ReadVariableOpReadVariableOp/read_19_disablecopyonread_adam_v_conv2d_65_bias^Read_19/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:f*
dtype0k
Identity_38IdentityRead_19/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:fa
Identity_39IdentityIdentity_38:output:0"/device:CPU:0*
T0*
_output_shapes
:f�
Read_20/DisableCopyOnReadDisableCopyOnRead1read_20_disablecopyonread_adam_m_conv2d_66_kernel"/device:CPU:0*
_output_shapes
 �
Read_20/ReadVariableOpReadVariableOp1read_20_disablecopyonread_adam_m_conv2d_66_kernel^Read_20/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:f**
dtype0w
Identity_40IdentityRead_20/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:f*m
Identity_41IdentityIdentity_40:output:0"/device:CPU:0*
T0*&
_output_shapes
:f*�
Read_21/DisableCopyOnReadDisableCopyOnRead1read_21_disablecopyonread_adam_v_conv2d_66_kernel"/device:CPU:0*
_output_shapes
 �
Read_21/ReadVariableOpReadVariableOp1read_21_disablecopyonread_adam_v_conv2d_66_kernel^Read_21/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:f**
dtype0w
Identity_42IdentityRead_21/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:f*m
Identity_43IdentityIdentity_42:output:0"/device:CPU:0*
T0*&
_output_shapes
:f*�
Read_22/DisableCopyOnReadDisableCopyOnRead/read_22_disablecopyonread_adam_m_conv2d_66_bias"/device:CPU:0*
_output_shapes
 �
Read_22/ReadVariableOpReadVariableOp/read_22_disablecopyonread_adam_m_conv2d_66_bias^Read_22/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:**
dtype0k
Identity_44IdentityRead_22/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:*a
Identity_45IdentityIdentity_44:output:0"/device:CPU:0*
T0*
_output_shapes
:*�
Read_23/DisableCopyOnReadDisableCopyOnRead/read_23_disablecopyonread_adam_v_conv2d_66_bias"/device:CPU:0*
_output_shapes
 �
Read_23/ReadVariableOpReadVariableOp/read_23_disablecopyonread_adam_v_conv2d_66_bias^Read_23/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:**
dtype0k
Identity_46IdentityRead_23/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:*a
Identity_47IdentityIdentity_46:output:0"/device:CPU:0*
T0*
_output_shapes
:*�
Read_24/DisableCopyOnReadDisableCopyOnRead1read_24_disablecopyonread_adam_m_conv2d_67_kernel"/device:CPU:0*
_output_shapes
 �
Read_24/ReadVariableOpReadVariableOp1read_24_disablecopyonread_adam_m_conv2d_67_kernel^Read_24/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*C*
dtype0w
Identity_48IdentityRead_24/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:*Cm
Identity_49IdentityIdentity_48:output:0"/device:CPU:0*
T0*&
_output_shapes
:*C�
Read_25/DisableCopyOnReadDisableCopyOnRead1read_25_disablecopyonread_adam_v_conv2d_67_kernel"/device:CPU:0*
_output_shapes
 �
Read_25/ReadVariableOpReadVariableOp1read_25_disablecopyonread_adam_v_conv2d_67_kernel^Read_25/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*C*
dtype0w
Identity_50IdentityRead_25/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:*Cm
Identity_51IdentityIdentity_50:output:0"/device:CPU:0*
T0*&
_output_shapes
:*C�
Read_26/DisableCopyOnReadDisableCopyOnRead/read_26_disablecopyonread_adam_m_conv2d_67_bias"/device:CPU:0*
_output_shapes
 �
Read_26/ReadVariableOpReadVariableOp/read_26_disablecopyonread_adam_m_conv2d_67_bias^Read_26/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:C*
dtype0k
Identity_52IdentityRead_26/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:Ca
Identity_53IdentityIdentity_52:output:0"/device:CPU:0*
T0*
_output_shapes
:C�
Read_27/DisableCopyOnReadDisableCopyOnRead/read_27_disablecopyonread_adam_v_conv2d_67_bias"/device:CPU:0*
_output_shapes
 �
Read_27/ReadVariableOpReadVariableOp/read_27_disablecopyonread_adam_v_conv2d_67_bias^Read_27/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:C*
dtype0k
Identity_54IdentityRead_27/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:Ca
Identity_55IdentityIdentity_54:output:0"/device:CPU:0*
T0*
_output_shapes
:C�
Read_28/DisableCopyOnReadDisableCopyOnRead1read_28_disablecopyonread_adam_m_conv2d_68_kernel"/device:CPU:0*
_output_shapes
 �
Read_28/ReadVariableOpReadVariableOp1read_28_disablecopyonread_adam_m_conv2d_68_kernel^Read_28/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:C%*
dtype0w
Identity_56IdentityRead_28/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:C%m
Identity_57IdentityIdentity_56:output:0"/device:CPU:0*
T0*&
_output_shapes
:C%�
Read_29/DisableCopyOnReadDisableCopyOnRead1read_29_disablecopyonread_adam_v_conv2d_68_kernel"/device:CPU:0*
_output_shapes
 �
Read_29/ReadVariableOpReadVariableOp1read_29_disablecopyonread_adam_v_conv2d_68_kernel^Read_29/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:C%*
dtype0w
Identity_58IdentityRead_29/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:C%m
Identity_59IdentityIdentity_58:output:0"/device:CPU:0*
T0*&
_output_shapes
:C%�
Read_30/DisableCopyOnReadDisableCopyOnRead/read_30_disablecopyonread_adam_m_conv2d_68_bias"/device:CPU:0*
_output_shapes
 �
Read_30/ReadVariableOpReadVariableOp/read_30_disablecopyonread_adam_m_conv2d_68_bias^Read_30/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:%*
dtype0k
Identity_60IdentityRead_30/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:%a
Identity_61IdentityIdentity_60:output:0"/device:CPU:0*
T0*
_output_shapes
:%�
Read_31/DisableCopyOnReadDisableCopyOnRead/read_31_disablecopyonread_adam_v_conv2d_68_bias"/device:CPU:0*
_output_shapes
 �
Read_31/ReadVariableOpReadVariableOp/read_31_disablecopyonread_adam_v_conv2d_68_bias^Read_31/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:%*
dtype0k
Identity_62IdentityRead_31/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:%a
Identity_63IdentityIdentity_62:output:0"/device:CPU:0*
T0*
_output_shapes
:%�
Read_32/DisableCopyOnReadDisableCopyOnRead1read_32_disablecopyonread_adam_m_conv2d_69_kernel"/device:CPU:0*
_output_shapes
 �
Read_32/ReadVariableOpReadVariableOp1read_32_disablecopyonread_adam_m_conv2d_69_kernel^Read_32/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:%4*
dtype0w
Identity_64IdentityRead_32/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:%4m
Identity_65IdentityIdentity_64:output:0"/device:CPU:0*
T0*&
_output_shapes
:%4�
Read_33/DisableCopyOnReadDisableCopyOnRead1read_33_disablecopyonread_adam_v_conv2d_69_kernel"/device:CPU:0*
_output_shapes
 �
Read_33/ReadVariableOpReadVariableOp1read_33_disablecopyonread_adam_v_conv2d_69_kernel^Read_33/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:%4*
dtype0w
Identity_66IdentityRead_33/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:%4m
Identity_67IdentityIdentity_66:output:0"/device:CPU:0*
T0*&
_output_shapes
:%4�
Read_34/DisableCopyOnReadDisableCopyOnRead/read_34_disablecopyonread_adam_m_conv2d_69_bias"/device:CPU:0*
_output_shapes
 �
Read_34/ReadVariableOpReadVariableOp/read_34_disablecopyonread_adam_m_conv2d_69_bias^Read_34/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:4*
dtype0k
Identity_68IdentityRead_34/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:4a
Identity_69IdentityIdentity_68:output:0"/device:CPU:0*
T0*
_output_shapes
:4�
Read_35/DisableCopyOnReadDisableCopyOnRead/read_35_disablecopyonread_adam_v_conv2d_69_bias"/device:CPU:0*
_output_shapes
 �
Read_35/ReadVariableOpReadVariableOp/read_35_disablecopyonread_adam_v_conv2d_69_bias^Read_35/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:4*
dtype0k
Identity_70IdentityRead_35/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:4a
Identity_71IdentityIdentity_70:output:0"/device:CPU:0*
T0*
_output_shapes
:4�
Read_36/DisableCopyOnReadDisableCopyOnRead0read_36_disablecopyonread_adam_m_dense_16_kernel"/device:CPU:0*
_output_shapes
 �
Read_36/ReadVariableOpReadVariableOp0read_36_disablecopyonread_adam_m_dense_16_kernel^Read_36/DisableCopyOnRead"/device:CPU:0*!
_output_shapes
:Ѓ�*
dtype0r
Identity_72IdentityRead_36/ReadVariableOp:value:0"/device:CPU:0*
T0*!
_output_shapes
:Ѓ�h
Identity_73IdentityIdentity_72:output:0"/device:CPU:0*
T0*!
_output_shapes
:Ѓ��
Read_37/DisableCopyOnReadDisableCopyOnRead0read_37_disablecopyonread_adam_v_dense_16_kernel"/device:CPU:0*
_output_shapes
 �
Read_37/ReadVariableOpReadVariableOp0read_37_disablecopyonread_adam_v_dense_16_kernel^Read_37/DisableCopyOnRead"/device:CPU:0*!
_output_shapes
:Ѓ�*
dtype0r
Identity_74IdentityRead_37/ReadVariableOp:value:0"/device:CPU:0*
T0*!
_output_shapes
:Ѓ�h
Identity_75IdentityIdentity_74:output:0"/device:CPU:0*
T0*!
_output_shapes
:Ѓ��
Read_38/DisableCopyOnReadDisableCopyOnRead.read_38_disablecopyonread_adam_m_dense_16_bias"/device:CPU:0*
_output_shapes
 �
Read_38/ReadVariableOpReadVariableOp.read_38_disablecopyonread_adam_m_dense_16_bias^Read_38/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_76IdentityRead_38/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_77IdentityIdentity_76:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_39/DisableCopyOnReadDisableCopyOnRead.read_39_disablecopyonread_adam_v_dense_16_bias"/device:CPU:0*
_output_shapes
 �
Read_39/ReadVariableOpReadVariableOp.read_39_disablecopyonread_adam_v_dense_16_bias^Read_39/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_78IdentityRead_39/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_79IdentityIdentity_78:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_40/DisableCopyOnReadDisableCopyOnRead/read_40_disablecopyonread_adam_m_outputs_kernel"/device:CPU:0*
_output_shapes
 �
Read_40/ReadVariableOpReadVariableOp/read_40_disablecopyonread_adam_m_outputs_kernel^Read_40/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�
*
dtype0p
Identity_80IdentityRead_40/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�
f
Identity_81IdentityIdentity_80:output:0"/device:CPU:0*
T0*
_output_shapes
:	�
�
Read_41/DisableCopyOnReadDisableCopyOnRead/read_41_disablecopyonread_adam_v_outputs_kernel"/device:CPU:0*
_output_shapes
 �
Read_41/ReadVariableOpReadVariableOp/read_41_disablecopyonread_adam_v_outputs_kernel^Read_41/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�
*
dtype0p
Identity_82IdentityRead_41/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�
f
Identity_83IdentityIdentity_82:output:0"/device:CPU:0*
T0*
_output_shapes
:	�
�
Read_42/DisableCopyOnReadDisableCopyOnRead-read_42_disablecopyonread_adam_m_outputs_bias"/device:CPU:0*
_output_shapes
 �
Read_42/ReadVariableOpReadVariableOp-read_42_disablecopyonread_adam_m_outputs_bias^Read_42/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:
*
dtype0k
Identity_84IdentityRead_42/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:
a
Identity_85IdentityIdentity_84:output:0"/device:CPU:0*
T0*
_output_shapes
:
�
Read_43/DisableCopyOnReadDisableCopyOnRead-read_43_disablecopyonread_adam_v_outputs_bias"/device:CPU:0*
_output_shapes
 �
Read_43/ReadVariableOpReadVariableOp-read_43_disablecopyonread_adam_v_outputs_bias^Read_43/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:
*
dtype0k
Identity_86IdentityRead_43/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:
a
Identity_87IdentityIdentity_86:output:0"/device:CPU:0*
T0*
_output_shapes
:
v
Read_44/DisableCopyOnReadDisableCopyOnRead!read_44_disablecopyonread_total_1"/device:CPU:0*
_output_shapes
 �
Read_44/ReadVariableOpReadVariableOp!read_44_disablecopyonread_total_1^Read_44/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_88IdentityRead_44/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_89IdentityIdentity_88:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_45/DisableCopyOnReadDisableCopyOnRead!read_45_disablecopyonread_count_1"/device:CPU:0*
_output_shapes
 �
Read_45/ReadVariableOpReadVariableOp!read_45_disablecopyonread_count_1^Read_45/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_90IdentityRead_45/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_91IdentityIdentity_90:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_46/DisableCopyOnReadDisableCopyOnReadread_46_disablecopyonread_total"/device:CPU:0*
_output_shapes
 �
Read_46/ReadVariableOpReadVariableOpread_46_disablecopyonread_total^Read_46/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_92IdentityRead_46/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_93IdentityIdentity_92:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_47/DisableCopyOnReadDisableCopyOnReadread_47_disablecopyonread_count"/device:CPU:0*
_output_shapes
 �
Read_47/ReadVariableOpReadVariableOpread_47_disablecopyonread_count^Read_47/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_94IdentityRead_47/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_95IdentityIdentity_94:output:0"/device:CPU:0*
T0*
_output_shapes
: �
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:1*
dtype0*�
value�B�1B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:1*
dtype0*u
valuelBj1B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �

SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0Identity_37:output:0Identity_39:output:0Identity_41:output:0Identity_43:output:0Identity_45:output:0Identity_47:output:0Identity_49:output:0Identity_51:output:0Identity_53:output:0Identity_55:output:0Identity_57:output:0Identity_59:output:0Identity_61:output:0Identity_63:output:0Identity_65:output:0Identity_67:output:0Identity_69:output:0Identity_71:output:0Identity_73:output:0Identity_75:output:0Identity_77:output:0Identity_79:output:0Identity_81:output:0Identity_83:output:0Identity_85:output:0Identity_87:output:0Identity_89:output:0Identity_91:output:0Identity_93:output:0Identity_95:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *?
dtypes5
321	�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 i
Identity_96Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: U
Identity_97IdentityIdentity_96:output:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_14/DisableCopyOnRead^Read_14/ReadVariableOp^Read_15/DisableCopyOnRead^Read_15/ReadVariableOp^Read_16/DisableCopyOnRead^Read_16/ReadVariableOp^Read_17/DisableCopyOnRead^Read_17/ReadVariableOp^Read_18/DisableCopyOnRead^Read_18/ReadVariableOp^Read_19/DisableCopyOnRead^Read_19/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_20/DisableCopyOnRead^Read_20/ReadVariableOp^Read_21/DisableCopyOnRead^Read_21/ReadVariableOp^Read_22/DisableCopyOnRead^Read_22/ReadVariableOp^Read_23/DisableCopyOnRead^Read_23/ReadVariableOp^Read_24/DisableCopyOnRead^Read_24/ReadVariableOp^Read_25/DisableCopyOnRead^Read_25/ReadVariableOp^Read_26/DisableCopyOnRead^Read_26/ReadVariableOp^Read_27/DisableCopyOnRead^Read_27/ReadVariableOp^Read_28/DisableCopyOnRead^Read_28/ReadVariableOp^Read_29/DisableCopyOnRead^Read_29/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_30/DisableCopyOnRead^Read_30/ReadVariableOp^Read_31/DisableCopyOnRead^Read_31/ReadVariableOp^Read_32/DisableCopyOnRead^Read_32/ReadVariableOp^Read_33/DisableCopyOnRead^Read_33/ReadVariableOp^Read_34/DisableCopyOnRead^Read_34/ReadVariableOp^Read_35/DisableCopyOnRead^Read_35/ReadVariableOp^Read_36/DisableCopyOnRead^Read_36/ReadVariableOp^Read_37/DisableCopyOnRead^Read_37/ReadVariableOp^Read_38/DisableCopyOnRead^Read_38/ReadVariableOp^Read_39/DisableCopyOnRead^Read_39/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_40/DisableCopyOnRead^Read_40/ReadVariableOp^Read_41/DisableCopyOnRead^Read_41/ReadVariableOp^Read_42/DisableCopyOnRead^Read_42/ReadVariableOp^Read_43/DisableCopyOnRead^Read_43/ReadVariableOp^Read_44/DisableCopyOnRead^Read_44/ReadVariableOp^Read_45/DisableCopyOnRead^Read_45/ReadVariableOp^Read_46/DisableCopyOnRead^Read_46/ReadVariableOp^Read_47/DisableCopyOnRead^Read_47/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*
_output_shapes
 "#
identity_97Identity_97:output:0*(
_construction_contextkEagerRuntime*w
_input_shapesf
d: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints20
Read/DisableCopyOnReadRead/DisableCopyOnRead2*
Read/ReadVariableOpRead/ReadVariableOp24
Read_1/DisableCopyOnReadRead_1/DisableCopyOnRead2.
Read_1/ReadVariableOpRead_1/ReadVariableOp26
Read_10/DisableCopyOnReadRead_10/DisableCopyOnRead20
Read_10/ReadVariableOpRead_10/ReadVariableOp26
Read_11/DisableCopyOnReadRead_11/DisableCopyOnRead20
Read_11/ReadVariableOpRead_11/ReadVariableOp26
Read_12/DisableCopyOnReadRead_12/DisableCopyOnRead20
Read_12/ReadVariableOpRead_12/ReadVariableOp26
Read_13/DisableCopyOnReadRead_13/DisableCopyOnRead20
Read_13/ReadVariableOpRead_13/ReadVariableOp26
Read_14/DisableCopyOnReadRead_14/DisableCopyOnRead20
Read_14/ReadVariableOpRead_14/ReadVariableOp26
Read_15/DisableCopyOnReadRead_15/DisableCopyOnRead20
Read_15/ReadVariableOpRead_15/ReadVariableOp26
Read_16/DisableCopyOnReadRead_16/DisableCopyOnRead20
Read_16/ReadVariableOpRead_16/ReadVariableOp26
Read_17/DisableCopyOnReadRead_17/DisableCopyOnRead20
Read_17/ReadVariableOpRead_17/ReadVariableOp26
Read_18/DisableCopyOnReadRead_18/DisableCopyOnRead20
Read_18/ReadVariableOpRead_18/ReadVariableOp26
Read_19/DisableCopyOnReadRead_19/DisableCopyOnRead20
Read_19/ReadVariableOpRead_19/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp26
Read_20/DisableCopyOnReadRead_20/DisableCopyOnRead20
Read_20/ReadVariableOpRead_20/ReadVariableOp26
Read_21/DisableCopyOnReadRead_21/DisableCopyOnRead20
Read_21/ReadVariableOpRead_21/ReadVariableOp26
Read_22/DisableCopyOnReadRead_22/DisableCopyOnRead20
Read_22/ReadVariableOpRead_22/ReadVariableOp26
Read_23/DisableCopyOnReadRead_23/DisableCopyOnRead20
Read_23/ReadVariableOpRead_23/ReadVariableOp26
Read_24/DisableCopyOnReadRead_24/DisableCopyOnRead20
Read_24/ReadVariableOpRead_24/ReadVariableOp26
Read_25/DisableCopyOnReadRead_25/DisableCopyOnRead20
Read_25/ReadVariableOpRead_25/ReadVariableOp26
Read_26/DisableCopyOnReadRead_26/DisableCopyOnRead20
Read_26/ReadVariableOpRead_26/ReadVariableOp26
Read_27/DisableCopyOnReadRead_27/DisableCopyOnRead20
Read_27/ReadVariableOpRead_27/ReadVariableOp26
Read_28/DisableCopyOnReadRead_28/DisableCopyOnRead20
Read_28/ReadVariableOpRead_28/ReadVariableOp26
Read_29/DisableCopyOnReadRead_29/DisableCopyOnRead20
Read_29/ReadVariableOpRead_29/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp26
Read_30/DisableCopyOnReadRead_30/DisableCopyOnRead20
Read_30/ReadVariableOpRead_30/ReadVariableOp26
Read_31/DisableCopyOnReadRead_31/DisableCopyOnRead20
Read_31/ReadVariableOpRead_31/ReadVariableOp26
Read_32/DisableCopyOnReadRead_32/DisableCopyOnRead20
Read_32/ReadVariableOpRead_32/ReadVariableOp26
Read_33/DisableCopyOnReadRead_33/DisableCopyOnRead20
Read_33/ReadVariableOpRead_33/ReadVariableOp26
Read_34/DisableCopyOnReadRead_34/DisableCopyOnRead20
Read_34/ReadVariableOpRead_34/ReadVariableOp26
Read_35/DisableCopyOnReadRead_35/DisableCopyOnRead20
Read_35/ReadVariableOpRead_35/ReadVariableOp26
Read_36/DisableCopyOnReadRead_36/DisableCopyOnRead20
Read_36/ReadVariableOpRead_36/ReadVariableOp26
Read_37/DisableCopyOnReadRead_37/DisableCopyOnRead20
Read_37/ReadVariableOpRead_37/ReadVariableOp26
Read_38/DisableCopyOnReadRead_38/DisableCopyOnRead20
Read_38/ReadVariableOpRead_38/ReadVariableOp26
Read_39/DisableCopyOnReadRead_39/DisableCopyOnRead20
Read_39/ReadVariableOpRead_39/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp26
Read_40/DisableCopyOnReadRead_40/DisableCopyOnRead20
Read_40/ReadVariableOpRead_40/ReadVariableOp26
Read_41/DisableCopyOnReadRead_41/DisableCopyOnRead20
Read_41/ReadVariableOpRead_41/ReadVariableOp26
Read_42/DisableCopyOnReadRead_42/DisableCopyOnRead20
Read_42/ReadVariableOpRead_42/ReadVariableOp26
Read_43/DisableCopyOnReadRead_43/DisableCopyOnRead20
Read_43/ReadVariableOpRead_43/ReadVariableOp26
Read_44/DisableCopyOnReadRead_44/DisableCopyOnRead20
Read_44/ReadVariableOpRead_44/ReadVariableOp26
Read_45/DisableCopyOnReadRead_45/DisableCopyOnRead20
Read_45/ReadVariableOpRead_45/ReadVariableOp26
Read_46/DisableCopyOnReadRead_46/DisableCopyOnRead20
Read_46/ReadVariableOpRead_46/ReadVariableOp26
Read_47/DisableCopyOnReadRead_47/DisableCopyOnRead20
Read_47/ReadVariableOpRead_47/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp24
Read_8/DisableCopyOnReadRead_8/DisableCopyOnRead2.
Read_8/ReadVariableOpRead_8/ReadVariableOp24
Read_9/DisableCopyOnReadRead_9/DisableCopyOnRead2.
Read_9/ReadVariableOpRead_9/ReadVariableOp:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:0,
*
_user_specified_nameconv2d_65/kernel:.*
(
_user_specified_nameconv2d_65/bias:0,
*
_user_specified_nameconv2d_66/kernel:.*
(
_user_specified_nameconv2d_66/bias:0,
*
_user_specified_nameconv2d_67/kernel:.*
(
_user_specified_nameconv2d_67/bias:0,
*
_user_specified_nameconv2d_68/kernel:.*
(
_user_specified_nameconv2d_68/bias:0	,
*
_user_specified_nameconv2d_69/kernel:.
*
(
_user_specified_nameconv2d_69/bias:/+
)
_user_specified_namedense_16/kernel:-)
'
_user_specified_namedense_16/bias:.*
(
_user_specified_nameoutputs/kernel:,(
&
_user_specified_nameoutputs/bias:)%
#
_user_specified_name	iteration:-)
'
_user_specified_namelearning_rate:73
1
_user_specified_nameAdam/m/conv2d_65/kernel:73
1
_user_specified_nameAdam/v/conv2d_65/kernel:51
/
_user_specified_nameAdam/m/conv2d_65/bias:51
/
_user_specified_nameAdam/v/conv2d_65/bias:73
1
_user_specified_nameAdam/m/conv2d_66/kernel:73
1
_user_specified_nameAdam/v/conv2d_66/kernel:51
/
_user_specified_nameAdam/m/conv2d_66/bias:51
/
_user_specified_nameAdam/v/conv2d_66/bias:73
1
_user_specified_nameAdam/m/conv2d_67/kernel:73
1
_user_specified_nameAdam/v/conv2d_67/kernel:51
/
_user_specified_nameAdam/m/conv2d_67/bias:51
/
_user_specified_nameAdam/v/conv2d_67/bias:73
1
_user_specified_nameAdam/m/conv2d_68/kernel:73
1
_user_specified_nameAdam/v/conv2d_68/kernel:51
/
_user_specified_nameAdam/m/conv2d_68/bias:5 1
/
_user_specified_nameAdam/v/conv2d_68/bias:7!3
1
_user_specified_nameAdam/m/conv2d_69/kernel:7"3
1
_user_specified_nameAdam/v/conv2d_69/kernel:5#1
/
_user_specified_nameAdam/m/conv2d_69/bias:5$1
/
_user_specified_nameAdam/v/conv2d_69/bias:6%2
0
_user_specified_nameAdam/m/dense_16/kernel:6&2
0
_user_specified_nameAdam/v/dense_16/kernel:4'0
.
_user_specified_nameAdam/m/dense_16/bias:4(0
.
_user_specified_nameAdam/v/dense_16/bias:5)1
/
_user_specified_nameAdam/m/outputs/kernel:5*1
/
_user_specified_nameAdam/v/outputs/kernel:3+/
-
_user_specified_nameAdam/m/outputs/bias:3,/
-
_user_specified_nameAdam/v/outputs/bias:'-#
!
_user_specified_name	total_1:'.#
!
_user_specified_name	count_1:%/!

_user_specified_nametotal:%0!

_user_specified_namecount:=19

_output_shapes
: 

_user_specified_nameConst
�
�
)__inference_dense_16_layer_call_fn_361722

inputs
unknown:Ѓ�
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_dense_16_layer_call_and_return_conditional_losses_361369p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:���������Ѓ: : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
)
_output_shapes
:���������Ѓ
 
_user_specified_nameinputs:&"
 
_user_specified_name361716:&"
 
_user_specified_name361718
�
W
#__inference__update_step_xla_360326
gradient"
variable:f*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*'
_input_shapes
:f: *
	_noinline(:P L
&
_output_shapes
:f
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
�
�
E__inference_conv2d_65_layer_call_and_return_conditional_losses_361622

inputs8
conv2d_readvariableop_resource:f-
biasadd_readvariableop_resource:f
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:f*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������f*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:f*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������fX
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������fi
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������fS
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
.__inference_sequential_11_layer_call_fn_361498

inputs!
unknown:f
	unknown_0:f#
	unknown_1:f*
	unknown_2:*#
	unknown_3:*C
	unknown_4:C#
	unknown_5:C%
	unknown_6:%#
	unknown_7:%4
	unknown_8:4
	unknown_9:Ѓ�

unknown_10:	�

unknown_11:	�


unknown_12:

identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_sequential_11_layer_call_and_return_conditional_losses_361432o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:���������: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs:&"
 
_user_specified_name361468:&"
 
_user_specified_name361470:&"
 
_user_specified_name361472:&"
 
_user_specified_name361474:&"
 
_user_specified_name361476:&"
 
_user_specified_name361478:&"
 
_user_specified_name361480:&"
 
_user_specified_name361482:&	"
 
_user_specified_name361484:&
"
 
_user_specified_name361486:&"
 
_user_specified_name361488:&"
 
_user_specified_name361490:&"
 
_user_specified_name361492:&"
 
_user_specified_name361494
��
�
"__inference__traced_restore_362216
file_prefix;
!assignvariableop_conv2d_65_kernel:f/
!assignvariableop_1_conv2d_65_bias:f=
#assignvariableop_2_conv2d_66_kernel:f*/
!assignvariableop_3_conv2d_66_bias:*=
#assignvariableop_4_conv2d_67_kernel:*C/
!assignvariableop_5_conv2d_67_bias:C=
#assignvariableop_6_conv2d_68_kernel:C%/
!assignvariableop_7_conv2d_68_bias:%=
#assignvariableop_8_conv2d_69_kernel:%4/
!assignvariableop_9_conv2d_69_bias:48
#assignvariableop_10_dense_16_kernel:Ѓ�0
!assignvariableop_11_dense_16_bias:	�5
"assignvariableop_12_outputs_kernel:	�
.
 assignvariableop_13_outputs_bias:
'
assignvariableop_14_iteration:	 +
!assignvariableop_15_learning_rate: E
+assignvariableop_16_adam_m_conv2d_65_kernel:fE
+assignvariableop_17_adam_v_conv2d_65_kernel:f7
)assignvariableop_18_adam_m_conv2d_65_bias:f7
)assignvariableop_19_adam_v_conv2d_65_bias:fE
+assignvariableop_20_adam_m_conv2d_66_kernel:f*E
+assignvariableop_21_adam_v_conv2d_66_kernel:f*7
)assignvariableop_22_adam_m_conv2d_66_bias:*7
)assignvariableop_23_adam_v_conv2d_66_bias:*E
+assignvariableop_24_adam_m_conv2d_67_kernel:*CE
+assignvariableop_25_adam_v_conv2d_67_kernel:*C7
)assignvariableop_26_adam_m_conv2d_67_bias:C7
)assignvariableop_27_adam_v_conv2d_67_bias:CE
+assignvariableop_28_adam_m_conv2d_68_kernel:C%E
+assignvariableop_29_adam_v_conv2d_68_kernel:C%7
)assignvariableop_30_adam_m_conv2d_68_bias:%7
)assignvariableop_31_adam_v_conv2d_68_bias:%E
+assignvariableop_32_adam_m_conv2d_69_kernel:%4E
+assignvariableop_33_adam_v_conv2d_69_kernel:%47
)assignvariableop_34_adam_m_conv2d_69_bias:47
)assignvariableop_35_adam_v_conv2d_69_bias:4?
*assignvariableop_36_adam_m_dense_16_kernel:Ѓ�?
*assignvariableop_37_adam_v_dense_16_kernel:Ѓ�7
(assignvariableop_38_adam_m_dense_16_bias:	�7
(assignvariableop_39_adam_v_dense_16_bias:	�<
)assignvariableop_40_adam_m_outputs_kernel:	�
<
)assignvariableop_41_adam_v_outputs_kernel:	�
5
'assignvariableop_42_adam_m_outputs_bias:
5
'assignvariableop_43_adam_v_outputs_bias:
%
assignvariableop_44_total_1: %
assignvariableop_45_count_1: #
assignvariableop_46_total: #
assignvariableop_47_count: 
identity_49��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_31�AssignVariableOp_32�AssignVariableOp_33�AssignVariableOp_34�AssignVariableOp_35�AssignVariableOp_36�AssignVariableOp_37�AssignVariableOp_38�AssignVariableOp_39�AssignVariableOp_4�AssignVariableOp_40�AssignVariableOp_41�AssignVariableOp_42�AssignVariableOp_43�AssignVariableOp_44�AssignVariableOp_45�AssignVariableOp_46�AssignVariableOp_47�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:1*
dtype0*�
value�B�1B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:1*
dtype0*u
valuelBj1B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�:::::::::::::::::::::::::::::::::::::::::::::::::*?
dtypes5
321	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOp!assignvariableop_conv2d_65_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOp!assignvariableop_1_conv2d_65_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp#assignvariableop_2_conv2d_66_kernelIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOp!assignvariableop_3_conv2d_66_biasIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp#assignvariableop_4_conv2d_67_kernelIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOp!assignvariableop_5_conv2d_67_biasIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOp#assignvariableop_6_conv2d_68_kernelIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOp!assignvariableop_7_conv2d_68_biasIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOp#assignvariableop_8_conv2d_69_kernelIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOp!assignvariableop_9_conv2d_69_biasIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOp#assignvariableop_10_dense_16_kernelIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOp!assignvariableop_11_dense_16_biasIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOp"assignvariableop_12_outputs_kernelIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOp assignvariableop_13_outputs_biasIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_14AssignVariableOpassignvariableop_14_iterationIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOp!assignvariableop_15_learning_rateIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOp+assignvariableop_16_adam_m_conv2d_65_kernelIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOp+assignvariableop_17_adam_v_conv2d_65_kernelIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOp)assignvariableop_18_adam_m_conv2d_65_biasIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_v_conv2d_65_biasIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOp+assignvariableop_20_adam_m_conv2d_66_kernelIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOp+assignvariableop_21_adam_v_conv2d_66_kernelIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOp)assignvariableop_22_adam_m_conv2d_66_biasIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOp)assignvariableop_23_adam_v_conv2d_66_biasIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOp+assignvariableop_24_adam_m_conv2d_67_kernelIdentity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOp+assignvariableop_25_adam_v_conv2d_67_kernelIdentity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOp)assignvariableop_26_adam_m_conv2d_67_biasIdentity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOp)assignvariableop_27_adam_v_conv2d_67_biasIdentity_27:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_28AssignVariableOp+assignvariableop_28_adam_m_conv2d_68_kernelIdentity_28:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_v_conv2d_68_kernelIdentity_29:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_m_conv2d_68_biasIdentity_30:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_31AssignVariableOp)assignvariableop_31_adam_v_conv2d_68_biasIdentity_31:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_32AssignVariableOp+assignvariableop_32_adam_m_conv2d_69_kernelIdentity_32:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_33AssignVariableOp+assignvariableop_33_adam_v_conv2d_69_kernelIdentity_33:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_34AssignVariableOp)assignvariableop_34_adam_m_conv2d_69_biasIdentity_34:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_35AssignVariableOp)assignvariableop_35_adam_v_conv2d_69_biasIdentity_35:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_36AssignVariableOp*assignvariableop_36_adam_m_dense_16_kernelIdentity_36:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_37AssignVariableOp*assignvariableop_37_adam_v_dense_16_kernelIdentity_37:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_38AssignVariableOp(assignvariableop_38_adam_m_dense_16_biasIdentity_38:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_39AssignVariableOp(assignvariableop_39_adam_v_dense_16_biasIdentity_39:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_40AssignVariableOp)assignvariableop_40_adam_m_outputs_kernelIdentity_40:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_41AssignVariableOp)assignvariableop_41_adam_v_outputs_kernelIdentity_41:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_42AssignVariableOp'assignvariableop_42_adam_m_outputs_biasIdentity_42:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_43AssignVariableOp'assignvariableop_43_adam_v_outputs_biasIdentity_43:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_44AssignVariableOpassignvariableop_44_total_1Identity_44:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_45AssignVariableOpassignvariableop_45_count_1Identity_45:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_46AssignVariableOpassignvariableop_46_totalIdentity_46:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_47AssignVariableOpassignvariableop_47_countIdentity_47:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 �
Identity_48Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_49IdentityIdentity_48:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
_output_shapes
 "#
identity_49Identity_49:output:0*(
_construction_contextkEagerRuntime*u
_input_shapesd
b: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:0,
*
_user_specified_nameconv2d_65/kernel:.*
(
_user_specified_nameconv2d_65/bias:0,
*
_user_specified_nameconv2d_66/kernel:.*
(
_user_specified_nameconv2d_66/bias:0,
*
_user_specified_nameconv2d_67/kernel:.*
(
_user_specified_nameconv2d_67/bias:0,
*
_user_specified_nameconv2d_68/kernel:.*
(
_user_specified_nameconv2d_68/bias:0	,
*
_user_specified_nameconv2d_69/kernel:.
*
(
_user_specified_nameconv2d_69/bias:/+
)
_user_specified_namedense_16/kernel:-)
'
_user_specified_namedense_16/bias:.*
(
_user_specified_nameoutputs/kernel:,(
&
_user_specified_nameoutputs/bias:)%
#
_user_specified_name	iteration:-)
'
_user_specified_namelearning_rate:73
1
_user_specified_nameAdam/m/conv2d_65/kernel:73
1
_user_specified_nameAdam/v/conv2d_65/kernel:51
/
_user_specified_nameAdam/m/conv2d_65/bias:51
/
_user_specified_nameAdam/v/conv2d_65/bias:73
1
_user_specified_nameAdam/m/conv2d_66/kernel:73
1
_user_specified_nameAdam/v/conv2d_66/kernel:51
/
_user_specified_nameAdam/m/conv2d_66/bias:51
/
_user_specified_nameAdam/v/conv2d_66/bias:73
1
_user_specified_nameAdam/m/conv2d_67/kernel:73
1
_user_specified_nameAdam/v/conv2d_67/kernel:51
/
_user_specified_nameAdam/m/conv2d_67/bias:51
/
_user_specified_nameAdam/v/conv2d_67/bias:73
1
_user_specified_nameAdam/m/conv2d_68/kernel:73
1
_user_specified_nameAdam/v/conv2d_68/kernel:51
/
_user_specified_nameAdam/m/conv2d_68/bias:5 1
/
_user_specified_nameAdam/v/conv2d_68/bias:7!3
1
_user_specified_nameAdam/m/conv2d_69/kernel:7"3
1
_user_specified_nameAdam/v/conv2d_69/kernel:5#1
/
_user_specified_nameAdam/m/conv2d_69/bias:5$1
/
_user_specified_nameAdam/v/conv2d_69/bias:6%2
0
_user_specified_nameAdam/m/dense_16/kernel:6&2
0
_user_specified_nameAdam/v/dense_16/kernel:4'0
.
_user_specified_nameAdam/m/dense_16/bias:4(0
.
_user_specified_nameAdam/v/dense_16/bias:5)1
/
_user_specified_nameAdam/m/outputs/kernel:5*1
/
_user_specified_nameAdam/v/outputs/kernel:3+/
-
_user_specified_nameAdam/m/outputs/bias:3,/
-
_user_specified_nameAdam/v/outputs/bias:'-#
!
_user_specified_name	total_1:'.#
!
_user_specified_name	count_1:%/!

_user_specified_nametotal:%0!

_user_specified_namecount
�-
�
I__inference_sequential_11_layer_call_and_return_conditional_losses_361392

inputs*
conv2d_65_361283:f
conv2d_65_361285:f*
conv2d_66_361299:f*
conv2d_66_361301:**
conv2d_67_361315:*C
conv2d_67_361317:C*
conv2d_68_361331:C%
conv2d_68_361333:%*
conv2d_69_361347:%4
conv2d_69_361349:4$
dense_16_361370:Ѓ�
dense_16_361372:	�!
outputs_361386:	�

outputs_361388:

identity��!conv2d_65/StatefulPartitionedCall�!conv2d_66/StatefulPartitionedCall�!conv2d_67/StatefulPartitionedCall�!conv2d_68/StatefulPartitionedCall�!conv2d_69/StatefulPartitionedCall� dense_16/StatefulPartitionedCall�outputs/StatefulPartitionedCall�
!conv2d_65/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_65_361283conv2d_65_361285*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������f*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_conv2d_65_layer_call_and_return_conditional_losses_361282�
!conv2d_66/StatefulPartitionedCallStatefulPartitionedCall*conv2d_65/StatefulPartitionedCall:output:0conv2d_66_361299conv2d_66_361301*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������**$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_conv2d_66_layer_call_and_return_conditional_losses_361298�
!conv2d_67/StatefulPartitionedCallStatefulPartitionedCall*conv2d_66/StatefulPartitionedCall:output:0conv2d_67_361315conv2d_67_361317*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������C*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_conv2d_67_layer_call_and_return_conditional_losses_361314�
!conv2d_68/StatefulPartitionedCallStatefulPartitionedCall*conv2d_67/StatefulPartitionedCall:output:0conv2d_68_361331conv2d_68_361333*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������%*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_conv2d_68_layer_call_and_return_conditional_losses_361330�
!conv2d_69/StatefulPartitionedCallStatefulPartitionedCall*conv2d_68/StatefulPartitionedCall:output:0conv2d_69_361347conv2d_69_361349*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������4*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_conv2d_69_layer_call_and_return_conditional_losses_361346�
flatten_11/PartitionedCallPartitionedCall*conv2d_69/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:���������Ѓ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_flatten_11_layer_call_and_return_conditional_losses_361357�
 dense_16/StatefulPartitionedCallStatefulPartitionedCall#flatten_11/PartitionedCall:output:0dense_16_361370dense_16_361372*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_dense_16_layer_call_and_return_conditional_losses_361369�
outputs/StatefulPartitionedCallStatefulPartitionedCall)dense_16/StatefulPartitionedCall:output:0outputs_361386outputs_361388*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_outputs_layer_call_and_return_conditional_losses_361385w
IdentityIdentity(outputs/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
�
NoOpNoOp"^conv2d_65/StatefulPartitionedCall"^conv2d_66/StatefulPartitionedCall"^conv2d_67/StatefulPartitionedCall"^conv2d_68/StatefulPartitionedCall"^conv2d_69/StatefulPartitionedCall!^dense_16/StatefulPartitionedCall ^outputs/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:���������: : : : : : : : : : : : : : 2F
!conv2d_65/StatefulPartitionedCall!conv2d_65/StatefulPartitionedCall2F
!conv2d_66/StatefulPartitionedCall!conv2d_66/StatefulPartitionedCall2F
!conv2d_67/StatefulPartitionedCall!conv2d_67/StatefulPartitionedCall2F
!conv2d_68/StatefulPartitionedCall!conv2d_68/StatefulPartitionedCall2F
!conv2d_69/StatefulPartitionedCall!conv2d_69/StatefulPartitionedCall2D
 dense_16/StatefulPartitionedCall dense_16/StatefulPartitionedCall2B
outputs/StatefulPartitionedCalloutputs/StatefulPartitionedCall:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs:&"
 
_user_specified_name361283:&"
 
_user_specified_name361285:&"
 
_user_specified_name361299:&"
 
_user_specified_name361301:&"
 
_user_specified_name361315:&"
 
_user_specified_name361317:&"
 
_user_specified_name361331:&"
 
_user_specified_name361333:&	"
 
_user_specified_name361347:&
"
 
_user_specified_name361349:&"
 
_user_specified_name361370:&"
 
_user_specified_name361372:&"
 
_user_specified_name361386:&"
 
_user_specified_name361388
�

�
C__inference_outputs_layer_call_and_return_conditional_losses_361753

inputs1
matmul_readvariableop_resource:	�
-
biasadd_readvariableop_resource:

identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:���������
`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������
S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
K
#__inference__update_step_xla_360371
gradient
variable:4*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:4: *
	_noinline(:D @

_output_shapes
:4
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
�
�
E__inference_conv2d_69_layer_call_and_return_conditional_losses_361702

inputs8
conv2d_readvariableop_resource:%4-
biasadd_readvariableop_resource:4
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:%4*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������4*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:4*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������4X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������4i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������4S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������%: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������%
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
.__inference_sequential_11_layer_call_fn_361465

inputs!
unknown:f
	unknown_0:f#
	unknown_1:f*
	unknown_2:*#
	unknown_3:*C
	unknown_4:C#
	unknown_5:C%
	unknown_6:%#
	unknown_7:%4
	unknown_8:4
	unknown_9:Ѓ�

unknown_10:	�

unknown_11:	�


unknown_12:

identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_sequential_11_layer_call_and_return_conditional_losses_361392o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:���������: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs:&"
 
_user_specified_name361435:&"
 
_user_specified_name361437:&"
 
_user_specified_name361439:&"
 
_user_specified_name361441:&"
 
_user_specified_name361443:&"
 
_user_specified_name361445:&"
 
_user_specified_name361447:&"
 
_user_specified_name361449:&	"
 
_user_specified_name361451:&
"
 
_user_specified_name361453:&"
 
_user_specified_name361455:&"
 
_user_specified_name361457:&"
 
_user_specified_name361459:&"
 
_user_specified_name361461
�
K
#__inference__update_step_xla_360361
gradient
variable:%*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:%: *
	_noinline(:D @

_output_shapes
:%
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
�
K
#__inference__update_step_xla_360351
gradient
variable:C*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:C: *
	_noinline(:D @

_output_shapes
:C
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
�
�
(__inference_outputs_layer_call_fn_361742

inputs
unknown:	�

	unknown_0:

identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_outputs_layer_call_and_return_conditional_losses_361385o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs:&"
 
_user_specified_name361736:&"
 
_user_specified_name361738
�
K
#__inference__update_step_xla_360341
gradient
variable:**
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:*: *
	_noinline(:D @

_output_shapes
:*
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
�
R
#__inference__update_step_xla_360376
gradient
variable:Ѓ�*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*"
_input_shapes
:Ѓ�: *
	_noinline(:K G
!
_output_shapes
:Ѓ�
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
�
�
E__inference_conv2d_69_layer_call_and_return_conditional_losses_361346

inputs8
conv2d_readvariableop_resource:%4-
biasadd_readvariableop_resource:4
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:%4*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������4*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:4*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������4X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������4i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������4S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������%: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������%
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
A
inputs7
serving_default_inputs:0���������;
outputs0
StatefulPartitionedCall:0���������
tensorflow/serving/predict:��
�
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
layer_with_weights-4
layer-4
layer-5
layer_with_weights-5
layer-6
layer_with_weights-6
layer-7
		variables

trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_sequential
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias
 _jit_compiled_convolution_op"
_tf_keras_layer
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
* &call_and_return_all_conditional_losses

!kernel
"bias
 #_jit_compiled_convolution_op"
_tf_keras_layer
�
$	variables
%trainable_variables
&regularization_losses
'	keras_api
(__call__
*)&call_and_return_all_conditional_losses

*kernel
+bias
 ,_jit_compiled_convolution_op"
_tf_keras_layer
�
-	variables
.trainable_variables
/regularization_losses
0	keras_api
1__call__
*2&call_and_return_all_conditional_losses

3kernel
4bias
 5_jit_compiled_convolution_op"
_tf_keras_layer
�
6	variables
7trainable_variables
8regularization_losses
9	keras_api
:__call__
*;&call_and_return_all_conditional_losses

<kernel
=bias
 >_jit_compiled_convolution_op"
_tf_keras_layer
�
?	variables
@trainable_variables
Aregularization_losses
B	keras_api
C__call__
*D&call_and_return_all_conditional_losses"
_tf_keras_layer
�
E	variables
Ftrainable_variables
Gregularization_losses
H	keras_api
I__call__
*J&call_and_return_all_conditional_losses

Kkernel
Lbias"
_tf_keras_layer
�
M	variables
Ntrainable_variables
Oregularization_losses
P	keras_api
Q__call__
*R&call_and_return_all_conditional_losses

Skernel
Tbias"
_tf_keras_layer
�
0
1
!2
"3
*4
+5
36
47
<8
=9
K10
L11
S12
T13"
trackable_list_wrapper
�
0
1
!2
"3
*4
+5
36
47
<8
=9
K10
L11
S12
T13"
trackable_list_wrapper
 "
trackable_list_wrapper
�
Unon_trainable_variables

Vlayers
Wmetrics
Xlayer_regularization_losses
Ylayer_metrics
		variables

trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
Ztrace_0
[trace_12�
.__inference_sequential_11_layer_call_fn_361465
.__inference_sequential_11_layer_call_fn_361498�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zZtrace_0z[trace_1
�
\trace_0
]trace_12�
I__inference_sequential_11_layer_call_and_return_conditional_losses_361392
I__inference_sequential_11_layer_call_and_return_conditional_losses_361432�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z\trace_0z]trace_1
�B�
!__inference__wrapped_model_361269inputs"�
���
FullArgSpec
args� 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
^
_variables
__iterations
`_learning_rate
a_index_dict
b
_momentums
c_velocities
d_update_step_xla"
experimentalOptimizer
,
eserving_default"
signature_map
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
fnon_trainable_variables

glayers
hmetrics
ilayer_regularization_losses
jlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
ktrace_02�
*__inference_conv2d_65_layer_call_fn_361611�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zktrace_0
�
ltrace_02�
E__inference_conv2d_65_layer_call_and_return_conditional_losses_361622�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zltrace_0
*:(f2conv2d_65/kernel
:f2conv2d_65/bias
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
.
!0
"1"
trackable_list_wrapper
.
!0
"1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
mnon_trainable_variables

nlayers
ometrics
player_regularization_losses
qlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
* &call_and_return_all_conditional_losses
& "call_and_return_conditional_losses"
_generic_user_object
�
rtrace_02�
*__inference_conv2d_66_layer_call_fn_361631�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zrtrace_0
�
strace_02�
E__inference_conv2d_66_layer_call_and_return_conditional_losses_361642�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zstrace_0
*:(f*2conv2d_66/kernel
:*2conv2d_66/bias
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
.
*0
+1"
trackable_list_wrapper
.
*0
+1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
tnon_trainable_variables

ulayers
vmetrics
wlayer_regularization_losses
xlayer_metrics
$	variables
%trainable_variables
&regularization_losses
(__call__
*)&call_and_return_all_conditional_losses
&)"call_and_return_conditional_losses"
_generic_user_object
�
ytrace_02�
*__inference_conv2d_67_layer_call_fn_361651�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zytrace_0
�
ztrace_02�
E__inference_conv2d_67_layer_call_and_return_conditional_losses_361662�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zztrace_0
*:(*C2conv2d_67/kernel
:C2conv2d_67/bias
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
.
30
41"
trackable_list_wrapper
.
30
41"
trackable_list_wrapper
 "
trackable_list_wrapper
�
{non_trainable_variables

|layers
}metrics
~layer_regularization_losses
layer_metrics
-	variables
.trainable_variables
/regularization_losses
1__call__
*2&call_and_return_all_conditional_losses
&2"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
*__inference_conv2d_68_layer_call_fn_361671�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
E__inference_conv2d_68_layer_call_and_return_conditional_losses_361682�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
*:(C%2conv2d_68/kernel
:%2conv2d_68/bias
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
.
<0
=1"
trackable_list_wrapper
.
<0
=1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
6	variables
7trainable_variables
8regularization_losses
:__call__
*;&call_and_return_all_conditional_losses
&;"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
*__inference_conv2d_69_layer_call_fn_361691�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
E__inference_conv2d_69_layer_call_and_return_conditional_losses_361702�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
*:(%42conv2d_69/kernel
:42conv2d_69/bias
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
?	variables
@trainable_variables
Aregularization_losses
C__call__
*D&call_and_return_all_conditional_losses
&D"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
+__inference_flatten_11_layer_call_fn_361707�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
F__inference_flatten_11_layer_call_and_return_conditional_losses_361713�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
.
K0
L1"
trackable_list_wrapper
.
K0
L1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
E	variables
Ftrainable_variables
Gregularization_losses
I__call__
*J&call_and_return_all_conditional_losses
&J"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
)__inference_dense_16_layer_call_fn_361722�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
D__inference_dense_16_layer_call_and_return_conditional_losses_361733�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
$:"Ѓ�2dense_16/kernel
:�2dense_16/bias
.
S0
T1"
trackable_list_wrapper
.
S0
T1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
M	variables
Ntrainable_variables
Oregularization_losses
Q__call__
*R&call_and_return_all_conditional_losses
&R"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
(__inference_outputs_layer_call_fn_361742�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
C__inference_outputs_layer_call_and_return_conditional_losses_361753�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
!:	�
2outputs/kernel
:
2outputs/bias
 "
trackable_list_wrapper
X
0
1
2
3
4
5
6
7"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
.__inference_sequential_11_layer_call_fn_361465inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
.__inference_sequential_11_layer_call_fn_361498inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
I__inference_sequential_11_layer_call_and_return_conditional_losses_361392inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
I__inference_sequential_11_layer_call_and_return_conditional_losses_361432inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
_0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16
�17
�18
�19
�20
�21
�22
�23
�24
�25
�26
�27
�28"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
 "
trackable_dict_wrapper
�
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13"
trackable_list_wrapper
�
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13"
trackable_list_wrapper
�
�trace_0
�trace_1
�trace_2
�trace_3
�trace_4
�trace_5
�trace_6
�trace_7
�trace_8
�trace_9
�trace_10
�trace_11
�trace_12
�trace_132�
#__inference__update_step_xla_360326
#__inference__update_step_xla_360331
#__inference__update_step_xla_360336
#__inference__update_step_xla_360341
#__inference__update_step_xla_360346
#__inference__update_step_xla_360351
#__inference__update_step_xla_360356
#__inference__update_step_xla_360361
#__inference__update_step_xla_360366
#__inference__update_step_xla_360371
#__inference__update_step_xla_360376
#__inference__update_step_xla_360381
#__inference__update_step_xla_360386
#__inference__update_step_xla_360391�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0z�trace_0z�trace_1z�trace_2z�trace_3z�trace_4z�trace_5z�trace_6z�trace_7z�trace_8z�trace_9z�trace_10z�trace_11z�trace_12z�trace_13
�B�
$__inference_signature_wrapper_361602inputs"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
*__inference_conv2d_65_layer_call_fn_361611inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_conv2d_65_layer_call_and_return_conditional_losses_361622inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
*__inference_conv2d_66_layer_call_fn_361631inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_conv2d_66_layer_call_and_return_conditional_losses_361642inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
*__inference_conv2d_67_layer_call_fn_361651inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_conv2d_67_layer_call_and_return_conditional_losses_361662inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
*__inference_conv2d_68_layer_call_fn_361671inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_conv2d_68_layer_call_and_return_conditional_losses_361682inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
*__inference_conv2d_69_layer_call_fn_361691inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_conv2d_69_layer_call_and_return_conditional_losses_361702inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
+__inference_flatten_11_layer_call_fn_361707inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
F__inference_flatten_11_layer_call_and_return_conditional_losses_361713inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
)__inference_dense_16_layer_call_fn_361722inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
D__inference_dense_16_layer_call_and_return_conditional_losses_361733inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
(__inference_outputs_layer_call_fn_361742inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
C__inference_outputs_layer_call_and_return_conditional_losses_361753inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
R
�	variables
�	keras_api

�total

�count"
_tf_keras_metric
c
�	variables
�	keras_api

�total

�count
�
_fn_kwargs"
_tf_keras_metric
/:-f2Adam/m/conv2d_65/kernel
/:-f2Adam/v/conv2d_65/kernel
!:f2Adam/m/conv2d_65/bias
!:f2Adam/v/conv2d_65/bias
/:-f*2Adam/m/conv2d_66/kernel
/:-f*2Adam/v/conv2d_66/kernel
!:*2Adam/m/conv2d_66/bias
!:*2Adam/v/conv2d_66/bias
/:-*C2Adam/m/conv2d_67/kernel
/:-*C2Adam/v/conv2d_67/kernel
!:C2Adam/m/conv2d_67/bias
!:C2Adam/v/conv2d_67/bias
/:-C%2Adam/m/conv2d_68/kernel
/:-C%2Adam/v/conv2d_68/kernel
!:%2Adam/m/conv2d_68/bias
!:%2Adam/v/conv2d_68/bias
/:-%42Adam/m/conv2d_69/kernel
/:-%42Adam/v/conv2d_69/kernel
!:42Adam/m/conv2d_69/bias
!:42Adam/v/conv2d_69/bias
):'Ѓ�2Adam/m/dense_16/kernel
):'Ѓ�2Adam/v/dense_16/kernel
!:�2Adam/m/dense_16/bias
!:�2Adam/v/dense_16/bias
&:$	�
2Adam/m/outputs/kernel
&:$	�
2Adam/v/outputs/kernel
:
2Adam/m/outputs/bias
:
2Adam/v/outputs/bias
�B�
#__inference__update_step_xla_360326gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
#__inference__update_step_xla_360331gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
#__inference__update_step_xla_360336gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
#__inference__update_step_xla_360341gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
#__inference__update_step_xla_360346gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
#__inference__update_step_xla_360351gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
#__inference__update_step_xla_360356gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
#__inference__update_step_xla_360361gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
#__inference__update_step_xla_360366gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
#__inference__update_step_xla_360371gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
#__inference__update_step_xla_360376gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
#__inference__update_step_xla_360381gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
#__inference__update_step_xla_360386gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
#__inference__update_step_xla_360391gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper�
#__inference__update_step_xla_360326~x�u
n�k
!�
gradientf
<�9	%�"
�f
�
p
` VariableSpec 
`������?
� "
 �
#__inference__update_step_xla_360331f`�]
V�S
�
gradientf
0�-	�
�f
�
p
` VariableSpec 
`������?
� "
 �
#__inference__update_step_xla_360336~x�u
n�k
!�
gradientf*
<�9	%�"
�f*
�
p
` VariableSpec 
`��ۅ��?
� "
 �
#__inference__update_step_xla_360341f`�]
V�S
�
gradient*
0�-	�
�*
�
p
` VariableSpec 
`�ћҠ�?
� "
 �
#__inference__update_step_xla_360346~x�u
n�k
!�
gradient*C
<�9	%�"
�*C
�
p
` VariableSpec 
`�ˑ���?
� "
 �
#__inference__update_step_xla_360351f`�]
V�S
�
gradientC
0�-	�
�C
�
p
` VariableSpec 
`�ё���?
� "
 �
#__inference__update_step_xla_360356~x�u
n�k
!�
gradientC%
<�9	%�"
�C%
�
p
` VariableSpec 
`�󐅙�?
� "
 �
#__inference__update_step_xla_360361f`�]
V�S
�
gradient%
0�-	�
�%
�
p
` VariableSpec 
`������?
� "
 �
#__inference__update_step_xla_360366~x�u
n�k
!�
gradient%4
<�9	%�"
�%4
�
p
` VariableSpec 
`������?
� "
 �
#__inference__update_step_xla_360371f`�]
V�S
�
gradient4
0�-	�
�4
�
p
` VariableSpec 
`������?
� "
 �
#__inference__update_step_xla_360376tn�k
d�a
�
gradientЃ�
7�4	 �
�Ѓ�
�
p
` VariableSpec 
`������?
� "
 �
#__inference__update_step_xla_360381hb�_
X�U
�
gradient�
1�.	�
��
�
p
` VariableSpec 
`������?
� "
 �
#__inference__update_step_xla_360386pj�g
`�]
�
gradient	�

5�2	�
�	�

�
p
` VariableSpec 
`������?
� "
 �
#__inference__update_step_xla_360391f`�]
V�S
�
gradient

0�-	�
�

�
p
` VariableSpec 
`�ʋ���?
� "
 �
!__inference__wrapped_model_361269|!"*+34<=KLST7�4
-�*
(�%
inputs���������
� "1�.
,
outputs!�
outputs���������
�
E__inference_conv2d_65_layer_call_and_return_conditional_losses_361622s7�4
-�*
(�%
inputs���������
� "4�1
*�'
tensor_0���������f
� �
*__inference_conv2d_65_layer_call_fn_361611h7�4
-�*
(�%
inputs���������
� ")�&
unknown���������f�
E__inference_conv2d_66_layer_call_and_return_conditional_losses_361642s!"7�4
-�*
(�%
inputs���������f
� "4�1
*�'
tensor_0���������*
� �
*__inference_conv2d_66_layer_call_fn_361631h!"7�4
-�*
(�%
inputs���������f
� ")�&
unknown���������*�
E__inference_conv2d_67_layer_call_and_return_conditional_losses_361662s*+7�4
-�*
(�%
inputs���������*
� "4�1
*�'
tensor_0���������C
� �
*__inference_conv2d_67_layer_call_fn_361651h*+7�4
-�*
(�%
inputs���������*
� ")�&
unknown���������C�
E__inference_conv2d_68_layer_call_and_return_conditional_losses_361682s347�4
-�*
(�%
inputs���������C
� "4�1
*�'
tensor_0���������%
� �
*__inference_conv2d_68_layer_call_fn_361671h347�4
-�*
(�%
inputs���������C
� ")�&
unknown���������%�
E__inference_conv2d_69_layer_call_and_return_conditional_losses_361702s<=7�4
-�*
(�%
inputs���������%
� "4�1
*�'
tensor_0���������4
� �
*__inference_conv2d_69_layer_call_fn_361691h<=7�4
-�*
(�%
inputs���������%
� ")�&
unknown���������4�
D__inference_dense_16_layer_call_and_return_conditional_losses_361733fKL1�.
'�$
"�
inputs���������Ѓ
� "-�*
#� 
tensor_0����������
� �
)__inference_dense_16_layer_call_fn_361722[KL1�.
'�$
"�
inputs���������Ѓ
� ""�
unknown�����������
F__inference_flatten_11_layer_call_and_return_conditional_losses_361713i7�4
-�*
(�%
inputs���������4
� ".�+
$�!
tensor_0���������Ѓ
� �
+__inference_flatten_11_layer_call_fn_361707^7�4
-�*
(�%
inputs���������4
� "#� 
unknown���������Ѓ�
C__inference_outputs_layer_call_and_return_conditional_losses_361753dST0�-
&�#
!�
inputs����������
� ",�)
"�
tensor_0���������

� �
(__inference_outputs_layer_call_fn_361742YST0�-
&�#
!�
inputs����������
� "!�
unknown���������
�
I__inference_sequential_11_layer_call_and_return_conditional_losses_361392!"*+34<=KLST?�<
5�2
(�%
inputs���������
p

 
� ",�)
"�
tensor_0���������

� �
I__inference_sequential_11_layer_call_and_return_conditional_losses_361432!"*+34<=KLST?�<
5�2
(�%
inputs���������
p 

 
� ",�)
"�
tensor_0���������

� �
.__inference_sequential_11_layer_call_fn_361465t!"*+34<=KLST?�<
5�2
(�%
inputs���������
p

 
� "!�
unknown���������
�
.__inference_sequential_11_layer_call_fn_361498t!"*+34<=KLST?�<
5�2
(�%
inputs���������
p 

 
� "!�
unknown���������
�
$__inference_signature_wrapper_361602�!"*+34<=KLSTA�>
� 
7�4
2
inputs(�%
inputs���������"1�.
,
outputs!�
outputs���������
