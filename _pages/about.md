---
permalink: /
title: "Hailin Zhang (张海林)"
excerpt: "Hailin Zhang"
author_profile: true
redirect_from: 
  - /about/
  - /about.html
---

Email: z.hl [AT] pku.edu.cn

Hailin Zhang currently works at [Xiaomi MiMo](https://mimo.xiaomi.com/), specializing in AI infrastructure. He is building efficient, scalable, and stable RL infrastructures for the [MiMo series models](https://huggingface.co/XiaomiMiMo). He earned his Ph.D. in Computer Science from Peking University in 2025, advised by Prof. [Bin Cui](https://cuibinpku.github.io/), where his academic excellence was recognized with the **Peking University Outstanding Doctoral Dissertation Award**.

With over 10 publications in top-tier conferences, Hailin Zhang's research interests lie in the field of MLSys (Machine Learning Systems), with a focus on large-scale LLMs, DLRMs, Information Retrieval (IR), and general distributed computing. His first-author research has earned prestigious accolades, including the **Best Scalable Data Science Paper Award** at VLDB 2022 and an **Honorable Mention for Best Artifact** at SIGMOD 2024.

Hailin Zhang was the lead contributor to the [Hetu](https://github.com/PKU-DAIR/Hetu) distributed deep learning system in 2021, the same year the project was recognized with the [Synced Machine Intelligence TOP-10 Open Source Awards](https://www.jiqizhixin.com/awards/2021/events). He created [PQCache](https://github.com/HugoZHL/PQCache), which ranks as the top-performing LLM sparse decoding method on the [SkyLight benchmark](https://sky-light.eecs.berkeley.edu/).

<font color=orange><strong>[Hiring]</strong> I am looking for highly motivated full-time engineers and research interns in AI/RL Infra to join us in building next-generation AGI. If interested, please reach out to me or send your resume to mimo [AT] xiaomi.com.</font>

## Technical Reports

* **MiMo-V2-Flash Technical Report.** [PDF](https://github.com/XiaomiMiMo/MiMo-V2-Flash/blob/main/paper.pdf) & [Models](https://huggingface.co/collections/XiaomiMiMo/mimo-v2-flash)  
  - 🚀 **RL Infra Highlights**: Introduces [*R3*](https://arxiv.org/pdf/2510.11370) and *request-level cache* for stable training; develops *Data Scheduler* for seamless multi-source fine-grained dynamic sampling; provides *Toolbox* and *Tool Manager* for scalable RL agent training with unified tool management; *FP8* for both training and rollout.
  - 🎯 **RL Training Highlights**: Supports both non-agentic and agentic RL training, boosting SWE-Verified from ~66 to ~74 and SWE-Multilingual from ~56 to ~74 with over 100K code agent environments; enables efficient multi-teacher on-policy distillation with multiple teachers.

* **MiMo-Audio: Audio Language Models are Few-Shot Learners.** [PDF](https://github.com/XiaomiMiMo/MiMo-Audio/blob/main/MiMo-Audio-Technical-Report.pdf) & [Models](https://huggingface.co/collections/XiaomiMiMo/mimo-audio)

* **MiMo-VL Technical Report.** [PDF](https://github.com/XiaomiMiMo/MiMo-VL/blob/main/MiMo-VL-Technical-Report.pdf) & [Models](https://huggingface.co/collections/XiaomiMiMo/mimo-vl)  
  - 🎯 **RL Training Highlights**: Supports mixed on-policy RL training across diverse tasks, including those with verifiable rewards and human feedback.

* **MiMo: Unlocking the Reasoning Potential of Language Model--From Pretraining to Posttraining.** [PDF](https://github.com/XiaomiMiMo/MiMo/blob/main/MiMo-7B-Technical-Report.pdf) & [Models](https://huggingface.co/collections/XiaomiMiMo/mimo)  
  - 🚀 **RL Infra Highlights**: Builds *Seamless Rollout Engine* (continuous rollout, asynchronous reward computation, and early termination) for efficient dynamic sampling-based RL.  
  - 🎯 **RL Training Highlights**: Enables on-policy RL with extended generation budget on 7B model, achieving parity with the Deepseek-R1 performance in mathematical reasoning.


## Education
* PhD, major in Computer Science  
*Peking University 2020-2025*

* BS, major in Computer Science; BEc, double major in Economics  
*Peking University 2016-2020*


## Publications

Publications in reverse chronological order of acceptance date. `*` represents co-first author.


### 2026

* **HySparse: A Hybrid Sparse Attention Architecture with Oracle Token Selection and KV Cache Sharing.** [PDF](https://arxiv.org/pdf/2602.03560)  
Yizhao Gao, Jianyu Wei, Qihao Zhang, Yu Cheng, Shimao Chen, Zhengju Tang, Zihan Jiang, Yifan Song, **Hailin Zhang**, Liang Zhao, Bo Yang, Gang Wang, Shijie Cao, Fuli Luo.  
***Preprint.***

* **Reinforcement Learning for Chain of Thought Compression with One-Domain-to-All Generalization.** [PDF](https://arxiv.org/pdf/2601.06052)  
Hanyu Li, Jiangshan Duo, Bofei Gao, **Hailin Zhang**, Sujian Li, Xiaotie Deng, Liang Zhao.  
***Preprint.***

* **JudgeRLVR: Judge First, Generate Second for Efficient Reasoning.** [PDF](https://arxiv.org/pdf/2601.08468)  
Jiangshan Duo, Hanyu Li, **Hailin Zhang**, Yudong Wang, Sujian Li, Liang Zhao.  
***Preprint.***

### 2025

* **Stabilizing MoE Reinforcement Learning by Aligning Training and Inference Routers.** [PDF](https://arxiv.org/pdf/2510.11370)  
Wenhan Ma, **Hailin Zhang**, Liang Zhao, Yifan Song, Yudong Wang, Zhifang Sui, Fuli Luo.  
***Preprint.***


* **SALE: Low-bit Estimation for Efficient Sparse Attention in Long-context LLM Prefilling.** [PDF](https://arxiv.org/pdf/2505.24179)  
Xiaodong Ji, **Hailin Zhang**, Fangcheng Fu, Bin Cui.  
***Preprint.***


* **Efficient and Scalable Huge Embedding Model Training via Distributed Cache Management.** [PDF](https://link.springer.com/article/10.1007/s00778-025-00908-w)  
Xupeng Miao, **Hailin Zhang**, Yining Shi, Xiaonan Nie, Zhi Yang, Yangyu Tao, Jie Jiang, Bin Cui.  
The International Journal on Very Large Data Bases.  
***VLDBJ 2025, CCF-A.***


* **PQCache: Product Quantization-based KVCache for Long Context LLM Inference.** [PDF](https://dl.acm.org/doi/10.1145/3725338)  
**Hailin Zhang**, Xiaodong Ji, Yilin Chen, Fangcheng Fu, Xupeng Miao, Xiaonan Nie, Weipeng Chen, Bin Cui.  
ACM SIGMOD International Conference on Management of Data.  
***SIGMOD 2025, CCF-A.***


* **Malleus: Straggler-Resilient Hybrid Parallel Training of Large-scale Models via Malleable Data and Model Parallelization.** [PDF](https://dl.acm.org/doi/10.1145/3725322)  
Haoyang Li, Fangcheng Fu, Hao Ge, Sheng Lin, Xuanyu Wang, Jiawen Niu, Yujie Wang, **Hailin Zhang**, Xiaonan Nie, Bin Cui.  
ACM SIGMOD International Conference on Management of Data.  
***SIGMOD 2025, CCF-A.***


* **CAFE+: Towards Compact, Adaptive, and Fast Embedding for Large-scale Online Recommendation Models.** [PDF](https://dl.acm.org/doi/10.1145/3713072)  
Zirui Liu\*, **Hailin Zhang**\*, Boxuan Chen\*, Zihan Jiang, Yikai Zhao, Yangyu Tao, Tong Yang, Bin Cui.  
Transactions on Information Systems.  
***TOIS 2025, CCF-A.***

* **MEMO: Fine-grained Tensor Management For Ultra-long Context LLM Training.** [PDF](https://dl.acm.org/doi/10.1145/3709703)  
Pinxue Zhao, **Hailin Zhang**, Fangcheng Fu, Xiaonan Nie, Qibin Liu, Fang Yang, Yuanbo Peng, Dian Jiao, Shuaipeng Li, Jinbao Xue, Yangyu Tao, Bin Cui.  
ACM SIGMOD International Conference on Management of Data.  
***SIGMOD 2025, CCF-A.***


### 2024

* **Retrieval-Augmented Generation for AI-Generated Content: A Survey.** [PDF](https://arxiv.org/abs/2402.19473)  
Penghao Zhao\*, **Hailin Zhang**\*, Qinhan Yu, Zhengren Wang, Yunteng Geng, Fangcheng Fu, Ling Yang, Wentao Zhang, Jie Jiang, Bin Cui.  
***Preprint.***

* **Surge Phenomenon in Optimal Learning Rate and Batch Size Scaling.** [PDF](https://proceedings.neurips.cc/paper_files/paper/2024/file/ef74413c7bf1d915c3e45c72e19a5d32-Paper-Conference.pdf)  
Shuaipeng Li\*, Penghao Zhao\*, **Hailin Zhang**\*, Xingwu Sun, Hao Wu, Dian Jiao, Weiyan Wang, Chengjun Liu, Zheng Fang, Jinbao Xue, Yangyu Tao, Bin Cui, Di Wang.  
Conference on Neural Information Processing Systems.  
***NeurIPS 2024, CCF-A.***

* **Enabling Parallelism Hot Switching for Efficient Training of Large Language Models.** [PDF](https://dl.acm.org/doi/10.1145/3694715.3695969)  
Hao Ge, Fangcheng Fu, Haoyang Li, Xuanyu Wang, Sheng Lin, Yujie Wang, Xiaonan Nie, **Hailin Zhang**, Xupeng Miao, Bin Cui.  
Symposium on Operating Systems Principles.  
***SOSP 2024, CCF-A.***

* **A Unified Framework for Mining Batch and Periodic Batch in Data Streams.** [PDF](https://ieeexplore.ieee.org/abstract/document/10526411)  
Zirui Liu, Xiangyuan Wang, Yuhan Wu, Tong Yang, Kaicheng Yang, **Hailin Zhang**, Yaofeng Tu, Bin Cui.  
IEEE Transactions on Knowledge and Data Engineering.  
***TKDE 2024, CCF-A.***

* **CAFE: Towards Compact, Adaptive, and Fast Embedding for Large-scale Recommendation Models.** [PDF](https://dl.acm.org/doi/10.1145/3639306)  
**Hailin Zhang**\*, Zirui Liu\*, Boxuan Chen, Yikai Zhao, Tong Zhao, Tong Yang, Bin Cui.  
ACM SIGMOD International Conference on Management of Data.  
***SIGMOD 2024, CCF-A,*** <font color=orange><strong>Honorable Mention for Best Artifact!</strong></font>

* **Experimental Analysis of Large-scale Learnable Vector Storage Compression.** [PDF](https://dl.acm.org/doi/10.14778/3636218.3636234)  
**Hailin Zhang**, Penghao Zhao, Xupeng Miao, Yingxia Shao, Zirui Liu, Tong Yang, Bin Cui.  
International Conference on Very Large Data Bases.  
***VLDB 2024, CCF-A.***

### 2023
* **Model-enhanced Vector Index.** [PDF](https://proceedings.neurips.cc/paper_files/paper/2023/file/ac112e8ffc4e5b9ece32070440a8ca43-Paper-Conference.pdf)  
**Hailin Zhang**, Yujing Wang, Qi Chen, Ruiheng Chang, Ting Zhang, Ziming Miao, Yingyan Hou, Yang Ding, Xupeng Miao, Haonan Wang, Bochen Pang, Yuefeng Zhan, Hao Sun, Weiwei Deng, Qi Zhang, Fan Yang, Xing Xie, Mao Yang, Bin Cui.  
Conference on Neural Information Processing Systems.  
***NeurIPS 2023, CCF-A.***

* **Galvatron: Efficient Transformer Training over Multiple GPUs Using Automatic Parallelism.** [PDF](https://dl.acm.org/doi/10.14778/3570690.3570697)  
Xupeng Miao, Yujie Wang, Youhe Jiang, Chunan Shi, Xiaonan Nie, **Hailin Zhang**, Bin Cui.  
International Conference on Very Large Data Bases.  
***VLDB 2023, CCF-A.***

### 2022
* **Hetu: A Highly Efficient Automatic Parallel Distributed Deep Learning System.** [PDF](http://scis.scichina.com/en/2023/117101.pdf)  
Xupeng Miao, Xiaonan Nie, **Hailin Zhang**, Tong Zhao, Bin Cui.  
Science China Information Sciences.  
***SCIS 2022, CCF-A.***

* **HET-GMP: A Graph-based System Approach to Scaling Large Embedding Model Training.** [PDF](https://dl.acm.org/doi/10.1145/3514221.3517902)  
Xupeng Miao, Yining Shi, **Hailin Zhang**, Xin Zhang, Xiaonan Nie, Zhi Yang, Bin Cui.  
ACM SIGMOD International Conference on Management of Data.  
***SIGMOD 2022, CCF-A.***

* **HET: Scaling out Huge Embedding Model Training via Cache-enabled Distributed Framework.** [PDF](https://dl.acm.org/doi/10.14778/3489496.3489511)  
Xupeng Miao\*, **Hailin Zhang**\*, Yining Shi, Xiaonan Nie, Zhi Yang, Yangyu Tao, Bin Cui.  
International Conference on Very Large Data Bases.  
***VLDB 2022, CCF-A,*** <font color=orange><strong>Best Scalable Data Science Paper!</strong></font>


## Systems
* [**Hetu**](https://github.com/PKU-DAIR/Hetu)
  - [2021 Synced Machine Intelligence TOP-10 Open Source Awards.](https://www.jiqizhixin.com/awards/2021/events)
  - [Pop SOTA！List for AI Developers 2021.](https://mp.weixin.qq.com/s/jHkF9UpgEn1MLZpRH2FOaA)
  - Outstanding Award & Champion of [2021 CCF BDCI Contest](https://mp.weixin.qq.com/s/hSoDMVMZApQxaiNqh2jUSg).

