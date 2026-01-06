# README

Mitocore is a **small-scale metabolic model** curated for proteomics integration using an adapted **AutoPACMEN/sMOMENT** workflow.  
MitoCore annotations were aligned to the large-scale metabolic model Human1 to improve proteomics integration capacity.

Based on the alignment, a differential analysis between MitoCore and Human1 was performed.

---

## Models Used

### The latest MitoCore model used

**`Cleaned_Mitocore_changed_metabolites_metanetx.chemical.xml`**

### The Human1 model used

**`Human-GEM.xml`**

---

## Table of Contents

- [Overview](#overview)
- [Scripts](#scripts)
- [Directories](#directories)
- [References](#references)

---

## Overview

Comparative analysis performed following analysis between MitoCore and Human1:

- The number of reactions, genes, and metabolites in MitoCore provided with Human1 identifiers
- Pathways coverage based on KEGG modules (pathway presence–absence and coverage index heatmaps)
- Statistical quantification of MitoCore core-components
- Metabolite coverage by the reactions in each pathway in MitoCore vs Human1  
  (PCoA analysis with Jaccard index)

---

## Curation Steps

Mitocore was curated in one script that carries out **two main steps**:

1. **Preliminary curation**  
   Ensures minimal requirements for AutoPACMEN workflow.

2. **Alignment to Human1**  
   Improves proteomics integration capacity by aligning Mitocore to the Human1 model.

---

## Scripts

| Step | Script | Description |
|-----|--------|-------------|
| Coverage of MitoCore components with Human1 identifiers | [`Coverage.ipynb`](Coverage.ipynb) | Directory: `Coverage_Human1` |
| Pathway coverage (presence–absence and coverage index) | [`Modules_KEGG.ipynb`](Modules_KEGG.ipynb) | Directory: `KEGG_Modules` |
| Metabolite coverage by the reactions | [`PCoA.ipynb`](PCoA.ipynb) | Directory: `PCoA` |
| Quantification of the core-components during different MitoCore curation stages | [`Statistics_Mitocore_Curation.ipynb`](Statistics_Mitocore_Curation.ipynb) | Directory: `Statistics` |

---

## Directories

| Directory | Description | Files |
|----------|-------------|-------|
| [`Coverage_Human1/`](Coverage_Human1/) | Script for analysis of coverage in MitoCore core-component with Human1 identifiers added during curation | |
| [`KEGG_Modules/`](KEGG_Modules/) | Script for pathway coverage based on KEGG modules of MitoCore and Human1 | Generated files contain KEGG reactions, KEGG modules per model, KEGG module content, presence–absence and coverage index matrices to plot heatmaps |
| [`PCoA/`](PCoA/) | Script for metabolite coverage by the reactions in MitoCore and Human1 | Generated files include binary matrices with KEGG module classification and PCoA results with Jaccard index per reaction per model |
| [`Statistics/`](Statistics/) | Script for statistics | Generated files contain GPR and EC-codes for MitoCore preliminary curation and alignment to Human1, list of enzymatic reactions and respective EC-codes and GPR |

---

## References

- MitoCore original: DOI `10.1186/s12918-017-0500-7`
- Human1 Metabolic Model: https://zenodo.org/doi/10.5281/zenodo.12523225
- Memote GEM Testing Tool: https://www.nature.com/articles/s41587-020-0446-y
- KEGG modules: https://www.kegg.jp/kegg/module.html (DOI `10.1002/pro.3711`)

