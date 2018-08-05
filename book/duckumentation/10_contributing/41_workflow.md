# Second method: local editing+docker {#duckumentation-workflow status=ready}

This section describes the workflow to edit the documentation for one single obok.

In a nutshell:

* You *fork* the repos to your Github account.
* You compile locally using a Docker container (no installation necessary).
* You contribute by opening a pull request.

## Workflow

### Github setup

We assume that you have setup a Github account with working public keys.

See: [Basic SSH config](+software_reference#ssh-local-configuration).

See: [Key pair creation](+software_reference#howto-create-key-pair).

See: [Adding public key on Github](+software_reference#howto-add-pubkey-to-github).

### Install Docker

Before you start, make sure that you have [installed Docker](+software_reference#docker).

 
### Fork the `docs-![book]` repo on the Github site

Fork one of the `docs-![book]` repos on the Github site ([](#fork-duckuments)).

This will create a new repo on your account that is linked to the original one.

<figure id="fork-duckuments">
 <img src="fork-duckuments.png" style='width: 80%'/>
</figure>

TODO: re-make image

### Checkout your fork locally

Check out the forked repository as you would do normally.

### Do your edits

Do your edits on your local copy.

### Compile

Compile using:

```
$ make compile-docker
```

### Commit and push

Commit and push as you would do normally.

### Make a pull request

Create a pull request to the original repository.

#### Option 1: Use the Github website

Github offers a nice interface to create a pull request.

TODO for volunteer: add image of pull request 

#### Option 2: Use the command-line program `hub`

You can create a pull request from the command-line using [`hub`](+software_reference#hub):

```
$ hub pull-request
```

See: [](+software_reference#hub)


## Using CircleCI

Circle CI makes it easier to check whether there are problems to be fixed.

### Sign up on Circle

Sign up on the Circle CI service, at the link [circleci.com](http://circleci.com).

### Activate your build on Circle

Activate the building at the link:

```
https://circleci.com/setup-project/gh/![username]/duckuments
```

where `![username]` is your Github username.

Click "start building".


#### Add ssh key {#workaround-circleci}

Go to "settings", "Checkout SSH keys". 

Remove all the configured SSH keys / deploy keys / user keys.

Then go to "settings", "SSH Permissions".

Add this SSH key, a read-only key for the repositories:
    
    -----BEGIN RSA PRIVATE KEY-----
    MIIEpQIBAAKCAQEAt7YHU1FRGitlzeO3z7wBE9wQwexPV15d1GjzFlQalPPPvPl8
    8j5Y3+4FD5LX55+mH8yTqyqfxk1+ncnQxNibgjT6Srs07oT6mDYcb4m4O7sPUDDr
    oOQQ65sBjQSZFM/Odpt/e2lbvY5StLNDwFhnp1WN33nuX+R7lp+GvDjctKjzwTMW
    mEv+eY1iIbPgVqP5KL18r6yqadQtsZVzbUPWGkvNEiuvi7Vla4ossUsRiOr0EKZI
    JhzARzZk3wb9reN1DKbWZsc19tkuJ9u5hQshJyUIaICrz17L3P//IsHaQrfsYmfE
    A6oEc5R5nMYejGEOqXSGhRiZcDVV29awdM/fQwIDAQABAoIBAGmImAy02fI+m+z6
    s80SI0xVTwsXxTxbaWtsHrjk96A5r0zPxYcjacq54Q5hPMZCYBxEWVAq3D3+po3e
    MZ/jDvJtnJrxkCa1HX/zFcK9SqiFfPaEI9f5K/8svGdWDNp3xhM8oK80hw8Ng1Vq
    5bDJGEJ4U1fdo6JSjuyoF65ou+DLdDRrUU5AZFUQMtB63XTmSoZNGP1aUEXD0AiS
    SfA6UUeTDVjOc+5CBDejmPUiie3nzlVw+qrwSQrrJlepAeZvtB6KzU4KT5KAhe7O
    V5yUzuQDact8sIhgHLMYqKFsPE8AJ2MN23NNUlfMpwI7kKLqRzs7Bmb4YKPYKHnU
    odBP2YECgYEA5Pi+0rz/BTIRZDb9fnkO9/N2duET4OroN1B39pOilePvvarsV6wF
    ZeWALzLBEQiUwtGqgLV13wG7ZxcLEGQkvEdogirsaQmy0dVNSv2wlcpOcvJuLPa3
    ayAguUm4kLM2Zkd4ODaxf1HJSxTujQcI9sydyy7x9YN5La0sLQXPVecCgYEAzWWP
    iMTgfDvryCqXm0/nCrJXrGnT/SyIzwTytpq3U5C9nixqqrDdPbCiaUDF2MmLoyzt
    hp/nen2XYPw2EYV2vCe2XFVeya8iftDXSERAB1ThXqKGt9JW1Vi+AorjAZG0uVOx
    NyYEH3sDp9jg5861Q3PxYEJ3iKRvC3I/tD/9iEUCgYEAivqcwMcst5ebTMu/89tB
    BalGN4QIj9Wlm6WBGy6jWf2fT+2GRPTJ1f6GXp+c5lziBppCtprt761adYlcEtfm
    IE3rlk69bkgPvSOOJb10SIciNM0HqM0bqa83jZ+8oj/U/iHVS7GO7SvUVXlgDkO9
    4idyg5h8Drx9egcJsE49efMCgYEAqSrBqhrE7W2Ix4bU8RVBLF0wuo87CyUX1LG1
    mdIZtdjbY6AfhlA/F+UYDupLST7OJGoHg77FruwrtrRjb9DltxhaKPgjJqd5GMu2
    1A1qUt+E8yWXIWU7IWKCtKNhTlSMbatRpSNJeAggPajxq9pjDpg6sFZuDvunfdzu
    PO4LSaUCgYEAzDG1gIATM9+j2pZK+ALQuAhBN1KVNASD+utYyFUGSC6kpu29cPWO
    Rgy7JhASU4QdQ3OSuzpkKEe2CsFP3Ms5tZsOiEpBfFpvSUEYq4ys6eGaqAo1Vaxq
    X7rqTlZsxl7XftY8bK3uP3zUxxhZzIhVbuFaE7OpXzH6uXrpLAmXbtM=
    -----END RSA PRIVATE KEY-----

####  Make sure everything compiles on Circle

Go to the URL:

```
https://circleci.com/gh/![username]/duckuments
```

to see the status of your build.

You can also preview the results by clicking the "artifacts" tab and selecting `index.html` from the list.

<figure id="ci-artifacts">
 <img src='ci-artifacts.png' style='width:90%'/>
</figure>


## Reporting problems

First, see the section [](#markduck-troubleshooting) for common problems and their resolution.

Please report problems with the duckuments using [the `duckuments` issue tracker][tracker].

[tracker]: https://github.com/duckietown/duckuments/issues

Special notes:

* If you have a problem with a generated PDF, please attach the offending PDF.
* If you say something like "This happens for Figure 3", then it is hard to know which figure you are referencing exactly, because numbering changes from commit to commit.


If you want to refer to specific parts of the text, please commit all your work on your branch, and obtain the name of the commit using the following commands:

```
$ git -C ~/duckuments rev-parse HEAD      # commit for duckuments
$ git -C ~/duckuments/mcdp rev-parse HEAD # commit for mcdp
```
