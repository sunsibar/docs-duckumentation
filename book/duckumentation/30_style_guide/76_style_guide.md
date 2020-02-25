

# Style guide {#documentation-style-guide status=ready}

This chapter describes the conventions for writing the technical documentation.

## Organization

The documentation is divided into books, parts (labeled 'part:') and units (with no CSS prefix).  


To create a new part, put `{#part:name status=STATUS}` after the header, like so:

    ## Safety {#part:safety status=ready}
    
For every page, please include a first-level header including a CSS-identifier and status in curly brackets. 
Like this:
    
    `# Style guide {#documentation-style-guide status=ready}`
    

## General guidelines for technical writing

The following holds for all technical writing.

- The documentation is written in correct English.

- Do not say "should" when you mean "must". "Must" and "should" have precise
  meanings and they are not interchangeable.
  These meanings are explained [in this document][rfc].

[rfc]: https://www.ietf.org/rfc/rfc2119.txt

- "Please" is unnecessary in technical documentation.

> Bad: "Please remove the SD card."

> Better: "Remove the SD card".

- Do not use colloquialisms or abbreviations.

> Bad: "The pwd is `ubuntu`."

> Better: "The password is `ubuntu`."

> Bad: "To create a ROS pkg..."

> Better: "To create a ROS package..."

- Python is capitalized when used as a name.

> Bad: "If you are using python..."

> Better: "If you are using Python..."

- Do not use emojis.

- Do not use ALL CAPS.

- Make infrequent use of **bold statements**.

- Do not use exclamation points.

## Style guide for the Duckietown documentation

- The English version of the documentation is written in American English. Please note that your spell checker might be set to British English.

> Bad: behaviour

> Better: behavior

> Bad: localisation

> Better: localization


- It's ok to use "it's" instead of "it is", "can't" instead of "cannot", etc.

- All the filenames and commands must be enclosed in code blocks using Markdown backticks.

Bad: "Edit the ~/.ssh/config file using vi."

Better: "Edit the `~/.ssh/config` file using `vi`."

- <kbd>Ctrl</kbd>-<kbd>C</kbd>, `ssh` etc. are not verbs.

> Bad: "<kbd>Ctrl</kbd>-<kbd>C</kbd> from the command line".

> Better: "Use <kbd>Ctrl</kbd>-<kbd>C</kbd> from the command line".

- Subtle humor and puns about duckies are encouraged.

## Writing command lines

Use either "`laptop`" or "`duckiebot`" (not capitalized, as a hostname) as the prefix for the command line.

For example, for a command that is supposed to run
on the laptop, use:

> <pre><code>lap<span>top</span> &#36; cd ~/duckietown</code></pre>

It will become:

    laptop $ cd ~/duckietown

For a command that must run on the Duckiebot, use:

> <pre><code>duckie<span>bot</span> &#36; cd ~/duckietown</code></pre>

It will become:

    duckiebot $ cd ~/duckietown

If the command is supposed to be run on both, omit the hostname:

    $ cd ~/duckietown

Other rules:

* For a container use `container`.
* For a container on a Duckiebot use `duckiebot-container`.
* For a container on the laptop use `laptop-container`.

This:

> <pre><code>conta<span>iner</span> &#36; command</code></pre>

will become:

    container $ command

This:

> <pre><code>duckiebot-conta<span>iner</span> &#36; command</code></pre>

will become:

    duckiebot-container $ command

This:

> <pre><code>laptop-conta<span>iner</span> &#36; command</code></pre>

will become:

    laptop-container $ command


<!--
For a container on a traffic light use `trafficlight-container`:

    trafficlight-container $ echo container


For a command to be run on a traffic light or watchtower use `trafficlight`:

    trafficlight $ echo container
-->

## Frequently misspelled words

- "Duckiebot" is always capitalized.

- Use "Raspberry Pi", not "PI", "raspi", etc.

- These are other words frequently misspelled:

    5 GHz
    WiFi

## Other conventions

When the user must edit a file, just say: "edit `/this/file`".

Writing down the command line for editing, like the following:

    $ vi /this/file

is too much detail.

(If people need to be told how to edit a file, Duckietown is too advanced for them.)

## Troubleshooting sections

Write the documentation as if every step succeeds.

Then, at the end, make a "Troubleshooting" section.

Organize the troubleshooting section as a list of symptom/resolution.

The following is an example of a troubleshooting section.

### Troubleshooting

Symptom: This strange thing happens.

Resolution: Maybe the camera is not inserted correctly. Remove and reconnect.

Symptom: This other strange thing happens.

Resolution: Maybe the plumbus is not working correctly. Try reformatting the plumbus.

 
