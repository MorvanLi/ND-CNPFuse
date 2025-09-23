# Neurodynamics-Driven Coupled Neural P Systems for Multi-Focus Image Fusion

This repository contains the codes for the paper ***Neurodynamics-Driven Coupled Neural P Systems for Multi-Focus Image Fusion.***

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



You can modify the `fused_path` to test the results on different datasets. For example, to test on MFFW, set `fused_path = './results/MFFW/'`, or to test on MFI-WHU, set `fused_path = './results/MFI-WHU/'`, or to test on Road-MF, set `fused_path = './results/Real-MFF/'`.

## ⚙ Implementation Details
The proposed ND-CNPFuse runs on an Intel(R) Core(TM) i5-13400 CPU. We set the coupling radius $r$ of ND-CNPFuse to be 16 and the number of iterations $t$ to be 110.

## 📢 Note
We did not upload the experimental results data of all the comparison methods because they were too large. If any researcher needs the results of these comparison methods, please contact me via email: morvanli@stu.xjtu.edu.cn.