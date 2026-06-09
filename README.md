<div align="center">
  
# Exploring the interplay of label bias with subgroup size and separability

</div>

This repository contains code associated with the paper:
> E. A. M. Stanley, R. Mehta, M. Roschewitz, N. D. Forkert, B. Glocker. <i>Exploring the interplay of label bias with subgroup size and separability: A case study in mammographic density classification</i>. MICCAI Fairness of AI in Medical Imaging Workshop, 2025.

[[arXiv]](https://arxiv.org/abs/2507.17996)[[Proceedings]](https://link.springer.com/chapter/10.1007/978-3-032-05870-6_8)

## Overview
* <b>`/data_preproc`</b> contains notebooks for filtering the metadata associated with the images, and applying label bias (as described in sections 2.1 and 2.2 of the paper).

* <b>`/models`</b> contains python files for training ResNet-18 models for breast density classification (`mammo-net-density.py` and `mammo-net-density-label-bias.py`), as well as imaging manufacturer (`mammo-net-manufacturer.py`) and pseudo-subgroup (`mammo-net-pseudo-subgroup.py`) classification. `run_models.sh` contains example commands for running these files. 

* <b>`/analysis`</b> contains notebooks for evaluating subgroup separability (`model_evaluation_separability.ipynb`), evaluating breast density classification performance (`model_evaluation_clean.ipynb` and `model_evaluation_labelbias.ipynb`), and performing feature inspection along the first principal component from the penultimate layer of the trained models (`model_inspection.ipynb`). 

The `environment.yml` file allows for installation of all dependencies in a conda environment.

## Data 
Data used in this work comes from the [EMory BrEast imaging Dataset (EMBED)](https://pubs.rsna.org/doi/full/10.1148/ryai.220047). Data requests and documentation can be accessed here: [github.com/Emory-HITI/EMBED_Open_Data/](https://github.com/Emory-HITI/EMBED_Open_Data/tree/main). 

## Funding acknowledgements
E.A.M.S. and N.D.F. acknowledge support from the Natural Science and Engineering Research Council of Canada, the Killam Trusts, Alberta Innovates, the Canada Research Chairs Program, and the River Fund at Calgary Foundation. M.R. was funded by an Imperial College London President’s PhD Scholarship and a Google PhD Fellowship. B.G. received support from the Royal Academy of Engineering as part of his Kheiron/RAEng Research Chair. The project was supported by the European Union's Horizon Europe research and innovation programme for the AI-POD project under grant agreement 101080302. Views and opinions expressed are however those of the author(s) only and do not necessarily reflect those of the European Union or HaDEA. Neither the European Union nor the granting authority can be held responsible for them.
