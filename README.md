# Data Science Repo Template

A repository template using Poetry, Makefile, and pre-commit-hooks

For more details, read the Medium [article](https://medium.com/@drgabrielharris/python-how-using-poetry-make-and-pre-commit-hooks-to-setup-a-repo-template-for-your-ds-team-15b5a77d0e0f)

## Project structure

```bash
.
├── data
│   ├── processed
│   │   └── v1
│   ├── raw
│   │   └── v1
│   ├── scripts
│   │   ├── extract.py
│   │   ├── transform.py
│   │   └── load.py
│   └── main.py
├── deploy
│   ├── scripts
│   └── tests
├── develop
│   ├── artifacts
│   ├── eda
│   ├── notebooks
│   ├── scripts
│   │   ├── eda.py
│   │   └── load.py
│   └── main.py
├── label
├── train
├── visualise
├── .flake8
├── .gitattributes
├── .gitignore
├── .pre-commit-config.yaml
├── Makefile
├── poetry.toml
├── pyproject.toml
└── README.md
```
