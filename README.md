# Climate-Policy-Uncertainty-Fish-Export-Dynamics

## 📄 The Impact of Climate Policy Uncertainty on the Dynamic Connectedness Among Leading Fish-Exporting Nations

This repository provides the data and code used for the empirical analysis conducted in the research paper:

- **Title**: *The Impact of Climate Policy Uncertainty on the Dynamic Connectedness Among Leading Fish-Exporting Nations*  
- **Corresponding Author**: Dr. Adnan Aslam  
- **Affiliation**: School of Economics, Finance, and Accounting, Coventry University  
- **License**: [CC BY 4.0](https://creativecommons.org/licenses/by/4.0/)

---

## 📁 Repository Structure

- `RAW Data/` — Contains original raw data, natural log return conversions, and all intermediate calculations.
- `pd.csv` — Cleaned dataset used for the TVP-VAR connectedness analysis.
- `R Codes/` — R scripts for estimating the TVP-VAR model and generating connectedness measures.
- `TCI_CPU` — Dataset used for DCC and ADCC-GARCH estimations in OxMetrics.
- `README.md` — This project description.
- `LICENSE` — CC BY 4.0 License file.

---

## 📊 Methodology Overview

### 1. TVP-VAR Connectedness Approach

- **Software**: R (tested on a PC: *HP Pavilion x360 Convertible 14-cd0xxx*, using **R version 4.4.0**)
- **Data Used**: `pd.csv`
- **Code Location**: `R Codes/` folder
- **R Package Required**:  
  - Install the latest version of the `ConnectednessApproach` package from GitHub:  
    https://github.com/GabauerDavid/ConnectednessApproach  
  - Please cite as:  
    Gabauer, D. (2022). *Connectedness Approach*, R package version 1.0.0. Available at: https://github.com/GabauerDavid/ConnectednessApproach

### 2. DCC and ADCC-GARCH Models

- **Software**: OxMetrics 8.21  
  - Ox Professional version 8.20 (Windows_64/U)  
  - © J.A. Doornik, 1994–2019
- **Estimation File**: `TCI_CPU` (in the `RAW Data` folder)
- **Module**: G@ARCH  
  - **Category**: Models for Financial Data  
  - **Model Class**: Multivariate Models using G@ARCH

---

## 📬 Contact

For questions, please contact:

**Dr. Adnan Aslam**  
[adnan_aslamm@outlook.com](mailto:adnan_aslamm@outlook.com)  
School of Economics, Finance, and Accounting  
Coventry University

