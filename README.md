<h1 align="center">
Neurodynamics-Driven Coupled Neural P Systems for Multi-Focus Image Fusion
</h1>
<p align="center">
  <!-- <a href="https://github.com/yayayacc/MUR/"><b>[🌐 PyPi Package]</b></a> • -->
  <a href="https://arxiv.org/abs/2509.17704"><b>[📜 Paper]</b></a> •
  <a href="https://github.com/MorvanLi/ND-CNPFuse/"><b>[🐱 GitHub]</b></a>
</p>

<p align="center"> Repo for "Neurodynamics-Driven Coupled Neural P Systems for Multi-Focus Image Fusion</a>"</p>
<a href="https://arxiv.org/abs/2509.17704" target="_blank">

## 🔥 News

- [2025/09/25] 🔥🔥🔥 Our github repo is released !!!
- [2025/09/23] 🔥🔥🔥 Our paper is released!!!

## 📁 Project Structure

    dataset\                               : MFIF datasets.
    results\                               : All fused images.
    evaluation\                            : Code for evaluation metrics
    main.m                                 : Code of test

## 🚀 Usage
### 📦 Prepare Datasets 
Download the full datasets (Lytro, MFFW, MFI-WHU, Real-MFF) and place them in the `./dataset` directory following the structure expected by the code. For example:
```
dataset/
├── Lytro/
│   ├── near/
│   │   ├── 1.jpg
│   │   ├── 2.jpg
│   │   └── ...
│   └── far/
│       ├── 1.jpg
│       ├── 2.jpg
│       └── ...
├── MFFW/
│   ├── near/
│   │   ├── 1.jpg
│   │   ├── 2.jpg
│   │   └── ...
│   └── far/
│       ├── 1.jpg
│       ├── 2.jpg
│       └── ...
└── ...
```

### 🧪 Running  ND-CNPFuse

Execute the main script `main.m`. 
```
run main.m 
```

The fusion results will be saved in the `./results/` directory:

```
results/
├── Lytro/
├── MFFW/
├── MFI-WHU/
└── Real-MFF/
```

## 📊 Evaluation
We also provide evaluation metrics for testing fused images. If you want to obtain the fusion results in our paper, please run **script-evaluation.m** directly from the **evaluation** folder.

```
run evaluation/script-evaluation.m
```



You can modify the `fused_path` to test the results on different datasets. For example, to test on MFFW, set `fused_path = './results/MFFW/'`, or to test on MFI-WHU, set `fused_path = './results/MFI-WHU/'`, or to test on Real-MFF, set `fused_path = './results/Real-MFF/'`.

## ⚙ Implementation Details
The proposed ND-CNPFuse runs on an Intel(R) Core(TM) i5-13400 CPU. We set the coupling radius r of ND-CNPFuse to be 16 and the number of iterations t to be 110.

## 📢 Note
We did not upload the experimental results data of all the comparison methods because they were too large. If any researcher needs the results of these comparison methods, please contact me via email: morvanli@stu.xjtu.edu.cn.

## Citation
If you find it helpful, please kindly cite our paper.
```
@article{li2025neurodynamics,
  title={Neurodynamics-Driven Coupled Neural P Systems for Multi-Focus Image Fusion},
  author={Li, Bo and Lei, Yunkuo and Bao, Tingting and Wang, Yaxian and Zhang, Lingling and Liu, Jun},
  journal={arXiv preprint arXiv:2509.17704},
  year={2025}
}
```