##  Title

PACNPFuse: Parameter Adaptive Coupled Neural P Systems for Multi-focus Image Fusion



## Abstract

Multi-focus image fusion (MFIF) is a crucial technique in image processing, with a key challenge being the generation of decision maps with precise boundaries. However, existing decision-map generation methods often produce inaccurate results, including pseudo-edges. To overcome this challenge, we introduce bio-inspired parameter adaptive coupled neural P (PACNP) systems, which are 3rd-generation neural computation models inspired by spiking neuron mechanisms, to enhance the accuracy of decision maps. Specifically, we first thoroughly study the neurodynamic behavior of the model neurons, which leads the model to be able to adapt to the parameters and avoid the error interference introduced by human-set parameters. Then, we propose a novel approach called PACNPFuse for MFIF based on PACNP systems. Unlike the current MFIF methods, the proposed PACNPFuse highlights the difference between the focused and unfocused regions via spike counts of neurons, thus generating precise decision maps without any post-processing. Generally, this paper provides a novel angle to solve the MFIF task by utilizing biological neural networks. Experimental results on four datasets show that our method outperforms 15 state-of-the-art MFIF methods in terms of visual and quantitative performance. The code for our method and the comparative methods can be accessed at https://github.com/MorvanLi/MFIF-PACNPFuse.

## Comparison Methods

We also give all the comparative experimental SOTA methods in this paper:

- Traditional methods
  - [PA-DCPCNN](https://github.com/Chinmaya-Panigrahy/Fractal-dimension-based-parameter-adaptive-dual-channel-PCNN-for-multi-focus-image-fusion)
  - [NSCT-CNP](https://github.com/MorvanLi)
- Deep learning methods
	- [DRPL](https://github.com/sasky1/DRPL)
	- [CU-Net](https://github.com/cindydeng1991/TPAMI-CU-Net)
	- [SDNet](https://github.com/HaoZhang1018/SDNet)
	- [DRPL](https://github.com/sasky1/DRPL)
	- [DRL-FPD](https://github.com/yuliu316316/DRL-FPD-MFIF)
	- [GACN](https://github.com/Keep-Passion/GACN)
	- [U2Fusion](https://github.com/hanna-xu/U2Fusion)
	- [SwinFusion](https://github.com/Linfeng-Tang/SwinFusion)
	- [ZMFF](https://github.com/junjun-jiang/ZMFF)
	- [MUFusion](https://github.com/AWCXV/MUFusion)
	- [DeepM2CDL](https://github.com/JingyiXu404/TPAMI-DeepM2CDL)
	- [MGDN](https://github.com/Guanys-dar/MGDN)
	- [DB-MFIF](https://github.com/Zancelot/DB-MFIF)
	- [TC-MoA](https://github.com/YangSun22/TC-MoA)

## Implementation Details
The traditional methods run on an Intel(R) Core(TM) i5-13400 CPU, and the DL methods run on a single Nvidia A100 GPU. We set the coupling radius $r$ of PACNPFuse to be 16 and the number of iterations $t$ to be 110.



## Note
We did not upload the experimental results data of all the comparison methods because they were too large. If any researcher needs the results of these comparison methods, please contact me via email: morvanli@stu.xjtu.edu.cn.
