##  Title

PACNPFuse: Parameter Adaptive Coupled Neural P Systems for Multi-focus Image Fusion



## Abstract

Multi-focus image fusion (MFIF) is a crucial technique in image processing, which is core to generating decision maps with accurate boundaries. However, current decision map-based MFIF approaches have some limitations, including inaccurate boundaries and the need for post-processing. To address these challenges, we introduce bio-inspired parameter adaptive coupled neural P (PACNP) systems for generating accurate decision maps that do not require any post-processing. It is important to note that PACNP systems are interpretable neural computation models inspired by spiking neuron mechanisms and are 3rd-generation neural networks. Specifically, we first profoundly investigate the state update and firing conditions of neurons inside the model to better understand the working mechanism. This enables the model to adapt itself to the parameters and avoids the interference of errors introduced by human-set parameters. Then, we employ the PACNP systems with embedded spiking mechanisms and parameter adaptation to highlight the differences between focused and unfocused regions and achieve accurate boundary segmentation. Experimental results on four datasets show that our method outperforms 14 state-of-the-art MFIF methods in visual and quantitative performance. The code can be accessed at https://github.com/MorvanLi/MFIF-PACNPFuse.

## Note

We also give all the comparative experimental methods in this paper:

- Traditional methods
  - [BFMF](https://github.com/uzeful/Boundary-Finding-based-Multi-focus-Image-Fusion)
  - [CSR](https://github.com/yuliu316316/CSR-Fusion)
  - [NSCT-CNP](https://github.com/MorvanLi)
  - [GFF](http://xudongkang.weebly.com/)
  - [LP-SR](https://github.com/yuliu316316/MST-SR-Fusion-Toolbox)
- Deep learning methods
  - Decision map-based methods
    - [CNN](https://github.com/yuliu316316/CNN-Fusion)
    - [ECNN](https://github.com/mostafaaminnaji/ECNN)
    - [DRPL](https://github.com/sasky1/DRPL)
    - [SESF](https://github.com/Keep-Passion/SESF-Fuse)
    - [ZMFF](https://github.com/junjun-jiang/ZMFF)
  - End-to-end methods
    - [SDNet](https://github.com/HaoZhang1018/SDNet)
    - [U2Fusion](https://github.com/hanna-xu/U2Fusion)
    - [SwinFusion](https://github.com/Linfeng-Tang/SwinFusion)
    - [CU-Net](https://github.com/cindydeng1991/TPAMI-CU-Net)



We did not upload the experimental results data of all the comparison methods because they were too large. If any researcher needs the results of these comparison methods, please contact me via email: morvanli@stu.xjtu.edu.cn.
