# Troubleshooting {#markduck-troubleshooting status=ready}

<minitoc/>

## Troubleshooting errors in the compilation process

Symptom: "Invalid XML"

Resolution: "Markdown" doesn't mean that you can put anything in a file. Except for the code blocks, it must be valid XML. For example, if you use "<code>&gt;</code>" and "<code>&lt;</code>" without quoting, it will likely cause a compile error.

Symptom: "Tabs are evil"

Resolution: Do not use tab characters. The error message in this case is quite helpful in telling you exactly where the tabs are.

Symptom: The error message contains `ValueError: Suspicious math fragment 'KEYMATHS000ENDKEY'`

Resolution: You probably have forgotten to indent a command line by at least 4 spaces. The dollar in the command line is now being confused for a math formula.


## Not properly starting a list {#invalid-list}

There must be an empty line before the list starts.

This is correct:

```markdown
I want to learn:

- robotics
- computer vision
- underwater basket weaving
```

This is incorrect:

```markdown
I want to learn:
- robotics
- computer vision
- underwater basket weaving
```

and it will be rendered as follows:

I want to learn:
- robotics
- computer vision
- underwater basket weaving



## Forgetting `markdown=1`

If you forget `markdown=1` the contents of the tag will not be processed. 

For example, this:

```html
<div class="exercise" title="My exercise title">

  Open a new terminal and navigate to `~/.ssh` and open the file named `config`. 

</div>
```

results in:

<div class="exercise" title="My exercise title">

  Open a new terminal and navigate to `~/.ssh` and open the file named `config`. 

</div>
  


## Code inside html



<div class="exercise">

  Here is a code block:
  
      $ code block
  
  Another block:
  
  ```python
  from typing import Any

  ```
  
  After block:
  
  <pre><code>code block </code></pre>

</div>
