
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
create_project: 2

00:00:072

00:00:152	
553.3362	
239.414Z17-268h px� 
>
Refreshing IP repositories
234*coregenZ19-234h px� 
G
"No user IP repositories specified
1154*coregenZ19-1704h px� 
j
"Loaded Vivado IP repository '%s'.
1332*coregen2!
C:/Xilinx/Vivado/2024.1/data/ipZ19-2313h px� 
�
�The host OS only allows 260 characters in a normal path. The IP cache path is more than 80 characters. If you experience issues with IP caching, please consider changing the IP cache to a location with a shorter path. Alternately consider using the OS subst command to map part of the path to a drive letter. 
Current IP cache path is %s 2293*coregen2^
\c:/Users/Miruna/Documents/POLI/an3/SSC/proiectCraciun/projectCraciun/projectCraciun.cache/ipZ19-4995h px� 
�
Command: %s
53*	vivadotcl2m
ksynth_design -top design_3_rsa_encrypt_0_0 -part xc7z020clg400-1 -incremental_mode off -mode out_of_contextZ4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
z
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2	
xc7z020Z17-347h px� 
j
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2	
xc7z020Z17-349h px� 
D
Loading part %s157*device2
xc7z020clg400-1Z21-403h px� 
Z
$Part: %s does not have CEAM library.966*device2
xc7z020clg400-1Z21-9227h px� 
o
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
2Z8-7079h px� 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px� 
N
#Helper process launched with PID %s4824*oasys2
16024Z8-7075h px� 
�
%s*synth2{
yStarting RTL Elaboration : Time (s): cpu = 00:00:04 ; elapsed = 00:00:06 . Memory (MB): peak = 1439.379 ; gain = 447.359
h px� 
�
synthesizing module '%s'%s4497*oasys2
design_3_rsa_encrypt_0_02
 2�
�c:/Users/Miruna/Documents/POLI/an3/SSC/proiectCraciun/projectCraciun/projectCraciun.gen/sources_1/bd/design_3/ip/design_3_rsa_encrypt_0_0/synth/design_3_rsa_encrypt_0_0.v2
538@Z8-6157h px� 
�
synthesizing module '%s'638*oasys2
rsa_encrypt2z
vC:/Users/Miruna/Documents/POLI/an3/SSC/proiectCraciun/projectCraciun/projectCraciun.srcs/sources_1/new/rsa_encrypt.vhd2
618@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
rsa_encrypt2
02
12z
vC:/Users/Miruna/Documents/POLI/an3/SSC/proiectCraciun/projectCraciun/projectCraciun.srcs/sources_1/new/rsa_encrypt.vhd2
618@Z8-256h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
design_3_rsa_encrypt_0_02
 2
02
12�
�c:/Users/Miruna/Documents/POLI/an3/SSC/proiectCraciun/projectCraciun/projectCraciun.gen/sources_1/bd/design_3/ip/design_3_rsa_encrypt_0_0/synth/design_3_rsa_encrypt_0_0.v2
538@Z8-6155h px� 
�
%s*synth2{
yFinished RTL Elaboration : Time (s): cpu = 00:00:05 ; elapsed = 00:00:08 . Memory (MB): peak = 1552.891 ; gain = 560.871
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:05 ; elapsed = 00:00:08 . Memory (MB): peak = 1552.891 ; gain = 560.871
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:05 ; elapsed = 00:00:08 . Memory (MB): peak = 1552.891 ; gain = 560.871
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0062

1552.8912
0.000Z17-268h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
>

Processing XDC Constraints
244*projectZ1-262h px� 
=
Initializing timing engine
348*projectZ1-569h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002

00:00:002

1630.8122
0.000Z17-268h px� 
l
!Unisim Transformation Summary:
%s111*project2'
%No Unisim elements were transformed.
Z1-111h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
 Constraint Validation Runtime : 2

00:00:002
00:00:00.0382

1631.4182
0.605Z17-268h px� 
Q
!Incremental synthesis strategy %s2274*designutils2
offZ20-5008h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
Finished Constraint Validation : Time (s): cpu = 00:00:11 ; elapsed = 00:00:17 . Memory (MB): peak = 1631.418 ; gain = 639.398
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
D
%s
*synth2,
*Start Loading Part and Timing Information
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
8
%s
*synth2 
Loading part: xc7z020clg400-1
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:11 ; elapsed = 00:00:17 . Memory (MB): peak = 1631.418 ; gain = 639.398
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
H
%s
*synth20
.Start Applying 'set_property' XDC Constraints
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:11 ; elapsed = 00:00:17 . Memory (MB): peak = 1631.418 ; gain = 639.398
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:11 ; elapsed = 00:00:17 . Memory (MB): peak = 1631.418 ; gain = 639.398
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Detailed RTL Component Info : 
h p
x
� 
+
%s
*synth2
+---Registers : 
h p
x
� 
H
%s
*synth20
.	               32 Bit    Registers := 4     
h p
x
� 
H
%s
*synth20
.	                1 Bit    Registers := 3     
h p
x
� 
-
%s
*synth2
+---Multipliers : 
h p
x
� 
F
%s
*synth2.
,	              32x32  Multipliers := 2     
h p
x
� 
'
%s
*synth2
+---Muxes : 
h p
x
� 
F
%s
*synth2.
,	   2 Input   32 Bit        Muxes := 2     
h p
x
� 
F
%s
*synth2.
,	   2 Input    1 Bit        Muxes := 1     
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Finished RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
q
%s
*synth2Y
WPart Resources:
DSPs: 220 (col length:60)
BRAMs: 280 (col length: RAMB18 60 RAMB36 30)
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
E
%s
*synth2-
+Start Cross Boundary and Area Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
H
&Parallel synthesis criteria is not met4829*oasysZ8-7080h px� 
[
%s
*synth2C
ADSP Report: Generating DSP temp_base1, operation Mode is: A2*B2.
h p
x
� 
^
%s
*synth2F
DDSP Report: register temp_base_reg is absorbed into DSP temp_base1.
h p
x
� 
[
%s
*synth2C
ADSP Report: register temp_base1 is absorbed into DSP temp_base1.
h p
x
� 
[
%s
*synth2C
ADSP Report: operator temp_base1 is absorbed into DSP temp_base1.
h p
x
� 
[
%s
*synth2C
ADSP Report: operator temp_base1 is absorbed into DSP temp_base1.
h p
x
� 
f
%s
*synth2N
LDSP Report: Generating DSP temp_base1, operation Mode is: (PCIN>>17)+A2*B2.
h p
x
� 
^
%s
*synth2F
DDSP Report: register temp_base_reg is absorbed into DSP temp_base1.
h p
x
� 
^
%s
*synth2F
DDSP Report: register temp_base_reg is absorbed into DSP temp_base1.
h p
x
� 
[
%s
*synth2C
ADSP Report: operator temp_base1 is absorbed into DSP temp_base1.
h p
x
� 
[
%s
*synth2C
ADSP Report: operator temp_base1 is absorbed into DSP temp_base1.
h p
x
� 
[
%s
*synth2C
ADSP Report: Generating DSP temp_base1, operation Mode is: A2*B2.
h p
x
� 
[
%s
*synth2C
ADSP Report: register temp_base1 is absorbed into DSP temp_base1.
h p
x
� 
[
%s
*synth2C
ADSP Report: register temp_base1 is absorbed into DSP temp_base1.
h p
x
� 
[
%s
*synth2C
ADSP Report: operator temp_base1 is absorbed into DSP temp_base1.
h p
x
� 
[
%s
*synth2C
ADSP Report: operator temp_base1 is absorbed into DSP temp_base1.
h p
x
� 
f
%s
*synth2N
LDSP Report: Generating DSP temp_base1, operation Mode is: (PCIN>>17)+A2*B2.
h p
x
� 
^
%s
*synth2F
DDSP Report: register temp_base_reg is absorbed into DSP temp_base1.
h p
x
� 
[
%s
*synth2C
ADSP Report: register temp_base1 is absorbed into DSP temp_base1.
h p
x
� 
[
%s
*synth2C
ADSP Report: operator temp_base1 is absorbed into DSP temp_base1.
h p
x
� 
[
%s
*synth2C
ADSP Report: operator temp_base1 is absorbed into DSP temp_base1.
h p
x
� 
W
%s
*synth2?
=DSP Report: Generating DSP result1, operation Mode is: A2*B.
h p
x
� 
U
%s
*synth2=
;DSP Report: register result1 is absorbed into DSP result1.
h p
x
� 
U
%s
*synth2=
;DSP Report: operator result1 is absorbed into DSP result1.
h p
x
� 
U
%s
*synth2=
;DSP Report: operator result1 is absorbed into DSP result1.
h p
x
� 
b
%s
*synth2J
HDSP Report: Generating DSP result1, operation Mode is: (PCIN>>17)+A*B2.
h p
x
� 
[
%s
*synth2C
ADSP Report: register temp_base_reg is absorbed into DSP result1.
h p
x
� 
U
%s
*synth2=
;DSP Report: operator result1 is absorbed into DSP result1.
h p
x
� 
U
%s
*synth2=
;DSP Report: operator result1 is absorbed into DSP result1.
h p
x
� 
W
%s
*synth2?
=DSP Report: Generating DSP result1, operation Mode is: A*B2.
h p
x
� 
U
%s
*synth2=
;DSP Report: register result1 is absorbed into DSP result1.
h p
x
� 
U
%s
*synth2=
;DSP Report: operator result1 is absorbed into DSP result1.
h p
x
� 
U
%s
*synth2=
;DSP Report: operator result1 is absorbed into DSP result1.
h p
x
� 
b
%s
*synth2J
HDSP Report: Generating DSP result1, operation Mode is: (PCIN>>17)+A*B2.
h p
x
� 
[
%s
*synth2C
ADSP Report: register temp_base_reg is absorbed into DSP result1.
h p
x
� 
U
%s
*synth2=
;DSP Report: operator result1 is absorbed into DSP result1.
h p
x
� 
U
%s
*synth2=
;DSP Report: operator result1 is absorbed into DSP result1.
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:18 ; elapsed = 00:00:29 . Memory (MB): peak = 1631.418 ; gain = 639.398
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
X
%s
*synth2@
> Sort Area is  temp_base1_0 : 0 0 : 3137 5949 : Used 1 time 0
h p
x
� 
X
%s
*synth2@
> Sort Area is  temp_base1_0 : 0 1 : 2812 5949 : Used 1 time 0
h p
x
� 
U
%s
*synth2=
; Sort Area is  result1_6 : 0 0 : 3119 5913 : Used 1 time 0
h p
x
� 
U
%s
*synth2=
; Sort Area is  result1_6 : 0 1 : 2794 5913 : Used 1 time 0
h p
x
� 
X
%s
*synth2@
> Sort Area is  temp_base1_3 : 0 0 : 2793 5484 : Used 1 time 0
h p
x
� 
X
%s
*synth2@
> Sort Area is  temp_base1_3 : 0 1 : 2691 5484 : Used 1 time 0
h p
x
� 
U
%s
*synth2=
; Sort Area is  result1_9 : 0 0 : 2777 5452 : Used 1 time 0
h p
x
� 
U
%s
*synth2=
; Sort Area is  result1_9 : 0 1 : 2675 5452 : Used 1 time 0
h p
x
� 
�
%s*synth2�
�---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
h px� 
l
%s*synth2T
R---------------------------------------------------------------------------------
h px� 
v
%s*synth2^
\
DSP: Preliminary Mapping Report (see note below. The ' indicates corresponding REG is set)
h px� 
�
%s*synth2�
�+------------+------------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+
h px� 
�
%s*synth2�
�|Module Name | DSP Mapping      | A Size | B Size | C Size | D Size | P Size | AREG | BREG | CREG | DREG | ADREG | MREG | PREG | 
h px� 
�
%s*synth2�
�+------------+------------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+
h px� 
�
%s*synth2�
�|rsa_encrypt | A2*B2            | 18     | 16     | -      | -      | 48     | 1    | 1    | -    | -    | -     | 0    | 0    | 
h px� 
�
%s*synth2�
�|rsa_encrypt | (PCIN>>17)+A2*B2 | 16     | 16     | -      | -      | 48     | 1    | 1    | -    | -    | -     | 0    | 0    | 
h px� 
�
%s*synth2�
�|rsa_encrypt | A2*B2            | 18     | 18     | -      | -      | 48     | 1    | 1    | -    | -    | -     | 0    | 0    | 
h px� 
�
%s*synth2�
�|rsa_encrypt | (PCIN>>17)+A2*B2 | 18     | 16     | -      | -      | 48     | 1    | 1    | -    | -    | -     | 0    | 0    | 
h px� 
�
%s*synth2�
�|rsa_encrypt | A2*B             | 18     | 16     | -      | -      | 48     | 1    | 0    | -    | -    | -     | 0    | 0    | 
h px� 
�
%s*synth2�
�|rsa_encrypt | (PCIN>>17)+A*B2  | 16     | 16     | -      | -      | 48     | 0    | 1    | -    | -    | -     | 0    | 0    | 
h px� 
�
%s*synth2�
�|rsa_encrypt | A*B2             | 18     | 18     | -      | -      | 48     | 0    | 1    | -    | -    | -     | 0    | 0    | 
h px� 
�
%s*synth2�
�|rsa_encrypt | (PCIN>>17)+A*B2  | 18     | 16     | -      | -      | 48     | 0    | 1    | -    | -    | -     | 0    | 0    | 
h px� 
�
%s*synth2�
�+------------+------------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+

h px� 
�
%s*synth2�
�Note: The table above is a preliminary report that shows the DSPs inferred at the current stage of the synthesis flow. Some DSP may be reimplemented as non DSP primitives later in the synthesis flow. Multiple instantiated DSPs are reported only once.
h px� 
�
%s*synth2�
�---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
h px� 
l
%s*synth2T
R---------------------------------------------------------------------------------
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
@
%s
*synth2(
&Start Applying XDC Timing Constraints
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:22 ; elapsed = 00:00:41 . Memory (MB): peak = 1631.418 ; gain = 639.398
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
4
%s
*synth2
Start Timing Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2
}Finished Timing Optimization : Time (s): cpu = 00:00:22 ; elapsed = 00:00:41 . Memory (MB): peak = 1631.418 ; gain = 639.398
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
3
%s
*synth2
Start Technology Mapping
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2~
|Finished Technology Mapping : Time (s): cpu = 00:00:22 ; elapsed = 00:00:42 . Memory (MB): peak = 1631.418 ; gain = 639.398
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
-
%s
*synth2
Start IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
?
%s
*synth2'
%Start Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
B
%s
*synth2*
(Finished Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2x
vFinished IO Insertion : Time (s): cpu = 00:00:24 ; elapsed = 00:00:48 . Memory (MB): peak = 1631.418 ; gain = 639.398
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Start Renaming Generated Instances
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:24 ; elapsed = 00:00:48 . Memory (MB): peak = 1631.418 ; gain = 639.398
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start Rebuilding User Hierarchy
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:24 ; elapsed = 00:00:48 . Memory (MB): peak = 1631.418 ; gain = 639.398
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Renaming Generated Ports
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:24 ; elapsed = 00:00:48 . Memory (MB): peak = 1631.418 ; gain = 639.398
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:24 ; elapsed = 00:00:48 . Memory (MB): peak = 1631.418 ; gain = 639.398
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
8
%s
*synth2 
Start Renaming Generated Nets
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:25 ; elapsed = 00:00:48 . Memory (MB): peak = 1631.418 ; gain = 639.398
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Writing Synthesis Report
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
W
%s
*synth2?
=
DSP Final Report (the ' indicates corresponding REG is set)
h p
x
� 
�
%s
*synth2�
+------------+----------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+
h p
x
� 
�
%s
*synth2�
�|Module Name | DSP Mapping    | A Size | B Size | C Size | D Size | P Size | AREG | BREG | CREG | DREG | ADREG | MREG | PREG | 
h p
x
� 
�
%s
*synth2�
+------------+----------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+
h p
x
� 
�
%s
*synth2�
�|rsa_encrypt | A'*B'          | 17     | 15     | -      | -      | 48     | 1    | 1    | -    | -    | -     | 0    | 0    | 
h p
x
� 
�
%s
*synth2�
�|rsa_encrypt | PCIN>>17+A'*B' | 15     | 15     | -      | -      | 48     | 1    | 1    | -    | -    | -     | 0    | 0    | 
h p
x
� 
�
%s
*synth2�
�|rsa_encrypt | A'*B'          | 17     | 17     | -      | -      | 48     | 1    | 1    | -    | -    | -     | 0    | 0    | 
h p
x
� 
�
%s
*synth2�
�|rsa_encrypt | PCIN>>17+A'*B' | 17     | 15     | -      | -      | 48     | 1    | 1    | -    | -    | -     | 0    | 0    | 
h p
x
� 
�
%s
*synth2�
�|rsa_encrypt | A'*B'          | 17     | 15     | -      | -      | 48     | 1    | 1    | -    | -    | -     | 0    | 0    | 
h p
x
� 
�
%s
*synth2�
�|rsa_encrypt | PCIN>>17+A'*B' | 15     | 15     | -      | -      | 48     | 1    | 1    | -    | -    | -     | 0    | 0    | 
h p
x
� 
�
%s
*synth2�
�|rsa_encrypt | A*B'           | 17     | 17     | -      | -      | 48     | 0    | 1    | -    | -    | -     | 0    | 0    | 
h p
x
� 
�
%s
*synth2�
�|rsa_encrypt | PCIN>>17+A*B'  | 17     | 15     | -      | -      | 48     | 0    | 1    | -    | -    | -     | 0    | 0    | 
h p
x
� 
�
%s
*synth2�
�+------------+----------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+

h p
x
� 
/
%s
*synth2

Report BlackBoxes: 
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
8
%s
*synth2 
| |BlackBox name |Instances |
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
/
%s*synth2

Report Cell Usage: 
h px� 
3
%s*synth2
+------+--------+------+
h px� 
3
%s*synth2
|      |Cell    |Count |
h px� 
3
%s*synth2
+------+--------+------+
h px� 
3
%s*synth2
|1     |CARRY4  |  1248|
h px� 
3
%s*synth2
|2     |DSP48E1 |     8|
h px� 
3
%s*synth2
|4     |LUT1    |   186|
h px� 
3
%s*synth2
|5     |LUT2    |   247|
h px� 
3
%s*synth2
|6     |LUT3    |  4279|
h px� 
3
%s*synth2
|7     |LUT4    |   108|
h px� 
3
%s*synth2
|8     |LUT5    |    37|
h px� 
3
%s*synth2
|9     |LUT6    |   110|
h px� 
3
%s*synth2
|10    |MUXF7   |    18|
h px� 
3
%s*synth2
|11    |FDRE    |    98|
h px� 
3
%s*synth2
|12    |FDSE    |     1|
h px� 
3
%s*synth2
+------+--------+------+
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:25 ; elapsed = 00:00:48 . Memory (MB): peak = 1631.418 ; gain = 639.398
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
`
%s
*synth2H
FSynthesis finished with 0 errors, 0 critical warnings and 1 warnings.
h p
x
� 
�
%s
*synth2�
Synthesis Optimization Runtime : Time (s): cpu = 00:00:19 ; elapsed = 00:00:46 . Memory (MB): peak = 1631.418 ; gain = 560.871
h p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:00:25 ; elapsed = 00:00:48 . Memory (MB): peak = 1631.418 ; gain = 639.398
h p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0672

1631.4182
0.000Z17-268h px� 
V
-Analyzing %s Unisim elements for replacement
17*netlist2
1274Z29-17h px� 
X
2Unisim Transformation completed in %s CPU seconds
28*netlist2
0Z29-28h px� 
�
�Netlist '%s' is not ideal for floorplanning, since the cellview '%s' contains a large number of primitives.  Please consider enabling hierarchy in synthesis if you want to do floorplanning.
310*netlist2
design_3_rsa_encrypt_0_02
rsa_encryptZ29-101h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
Q
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02
0Z31-138h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0012

1632.0702
0.000Z17-268h px� 
l
!Unisim Transformation Summary:
%s111*project2'
%No Unisim elements were transformed.
Z1-111h px� 
V
%Synth Design complete | Checksum: %s
562*	vivadotcl2

e3de7d2fZ4-1430h px� 
C
Releasing license: %s
83*common2
	SynthesisZ17-83h px� 
~
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
232
32
02
0Z4-41h px� 
L
%s completed successfully
29*	vivadotcl2
synth_designZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
synth_design: 2

00:00:282

00:00:572

1632.0702

1064.883Z17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Write ShapeDB Complete: 2

00:00:002
00:00:00.0262

1632.0702
0.000Z17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2�
�C:/Users/Miruna/Documents/POLI/an3/SSC/proiectCraciun/projectCraciun/projectCraciun.runs/design_3_rsa_encrypt_0_0_synth_1/design_3_rsa_encrypt_0_0.dcpZ17-1381h px� 
�
Executing command : %s
56330*	planAhead2{
yreport_utilization -file design_3_rsa_encrypt_0_0_utilization_synth.rpt -pb design_3_rsa_encrypt_0_0_utilization_synth.pbZ12-24828h px� 
\
Exiting %s at %s...
206*common2
Vivado2
Wed Dec 18 13:44:11 2024Z17-206h px� 


End Record