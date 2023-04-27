# LaTeX-diff with Docker

Set up and use LaTeX-diff with Docker to compare differences between two LaTeX files.

## Prerequisites

- Docker

## Instructions

1. **Clone repo:**

    Clone the repo, and navigate to the `latex-diff` folder in the terminal

2. **Build the Docker image:**

    Run the following command to build the Docker image:

    ```bash
    docker build -t latexdiff-docker .
    ```

    This command creates a Docker image named `latexdiff-docker`.

3. **Run LaTeX-diff:**

    Run LaTeX-diff on two LaTeX files `old.tex` and `new.tex` using the following command:

    ```bash
    ./latexdiff-docker.sh old.tex new.tex diff.tex
    ```

    This will generate a `diff.tex` file containing the differences between `old.tex` and `new.tex`.
    You can custmize the file names as you wish.
