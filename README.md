# Copy Directory Via SSH Password

A github action that help you scp directory to your host.

Only support Linux docker container.

### Usage

Create a .github/workflows directory in your repository on GitHub if this directory does not already exist.

In the .github/workflows directory, create a file named github-actions-demo.yml. For more information, see "Creating new files."

Copy the following YAML contents into the github-actions-demo.yml file:


Create a `.github/workflows` directory in your repository if not exist. Create a yml file in this directory.



```yml
name: copy-file-by-scp
on: [push]
jobs:
  deploy-by-scp:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - uses: wjftu/copy-directory-via-ssh-password@master
        with:
          HOST: 12.34.56.78
          USERNAME: root
          PASSWORD: 123456
          SOURCE: dir1
          TARGET: /targetdir
```

SOURCE could be a file or a directory, could be a wildcard path.


**Examples:**

if there are 3 files in the repository.

```
/dir1/1.txt
/dir1/dir2/2.txt
/dir1/dir2/3.txt
```

* example 1:

`.github/workflows/deploy.yml` :

```yml
SOURCE: /dir/1.txt
TARGET: /targetdir/
```

result:

```
/targetdir/1.txt
```

* example 2:

`.github/workflows/deploy.yml` :

```yml
SOURCE: /dir/
TARGET: /targetdir/
```

result:

```
/targetdir/dir1/1.txt
/targetdir/dir1/dir2/2.txt
/targetdir/dir1/dir2/3.txt
```

* example 3:

`.github/workflows/deploy.yml` :

```yml
SOURCE: /dir/*
TARGET: /targetdir/
```

result:

```
/targetdir/1.txt
/targetdir/dir2/2.txt
/targetdir/dir2/3.txt
```


### Input variables

See [action.yml](action.yml) file.

* HOST - scp host ip or domain name (required)
* USERNAME - scp username (required)
* PASSWORD - scp host password (required)
* SOURCE - scp file list (required)
* TARGET - scp target directory (required, should be a directory, create if not exists)

