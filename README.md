# CoWoYTP1Att Dataset

## Description

This repository presents the **Corpus on Women in YouTube on Performance with Attitude Annotations (CoWoYTP1Att)** dataset, comprising **1,521 comments** annotated using the **Attitude domain of Appraisal Theory** (Martin & White, 2005). For details on the annotation labels and process, see [`Annotation_Guidelines.pdf`](./Annotation_Guidelines.pdf).

---

## Repository Structure

### 1. Code

This folder contains scripts used for automatic classification and preprocessing:

- `Preprocessing.ipynb`:  
  Performs corpus preprocessing for binary classification tasks, including:
  - Removal of punctuation marks  
  - Removal of stop words  
  - Conversion of numbers to their written form

- `Experiments_Binary_Classification.ipynb`:  
  Script for binary classification experiments using the transformer-based model **BETO** ([Cañete et al., 2020](https://github.com/dccuchile/beto)).

- `IAA-Krippendorff.xx`:  
  R script to calculate **Inter-Annotator Agreement (IAA)** using **Krippendorff’s Alpha**, developed by Dr. Ricardo Alvarado-Barrantes (University of Costa Rica).

---

### 2. Data

This folder includes raw, annotated, and experimental data:

- `Raw_data.csv` / `Raw_data.json`:  
  Full set of **14,883 extracted comments**.

- `sample_Task1.csv` / `sample_Task1.json`:  
  A sample of **1,200 annotated comments** used for fine-tuning in the **first experiment**.

- `sample_Task2.csv` / `sample_Task2.json`:  
  A **balanced sample of 4,830 annotated comments** for fine-tuning in the **second experiment**.

- `CoWoYTP1Att.csv` / `CoWoYTP1Att.json`:  
  Final annotated corpus in both **CSV** and **JSON** formats.

---

### Additional Files

- `Annotation_Guidelines.pdf`:  
  Latest version of the annotation guidelines in **Spanish**.  
  > _An English translation will be uploaded soon._

---

## Reference

Tretti-Beckles, Valentina, Vergara-Heidke, Adrián, & Molina-Valverde, Natalia. (2025).  
**CoWoYTP1Att: A Social Media Comment Dataset on Gender Discourse with Appraisal Theory Annotations.**  
*In Proceedings of the Fifth Conference on Language, Data and Knowledge.*

