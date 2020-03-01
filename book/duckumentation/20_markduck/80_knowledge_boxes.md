# The Knowledge and Activity Graph Environment {#markduck-knowledge-box status=ready  label-name="Knowledge Boxes"}

<div class='requirements' markdown="1">

Requires: [Linking between pages of the duckumentation](#markduck-basic)  

Recommended: [Markduck, special paragraphs](#markduck-special-pars)  

Results: Knowledge how to write a knowledge box

</div>

## Basics

Every page, on every book, should have a 'Knowledge Box' - also called 'Knowledge and Activity Graph'. It's the blue box you see above. In markdown, a knowledge box looks like this:

    <div class='requirements' markdown="1">

    Requires: Very important prerequisite XY

    Requires: ...

    Results: Wisdom.

    </div>


## Purpose {#kb-purpose}

Knowledge boxes give structure to the duckumentation. How do you know where to
start? For example by following back links in knowledge boxes! Or by having an automated
system follow back those references for you [Todo: Link to EOD?](...).   


Also, imagine if dead references or circular dependencies were detected automatically. Authors
could fix this right away, and you would have an easier time navigating the duckumentation.
So, please: Add a knowledge box!  


## Guidelines

Here is how you can write useful knowledge boxes:    

<br/>


Better: **One knowledge box per page.** (*Might change in the future.*)  

Organize your pages in a way that one knowledge box per page makes sense.
        Optimally, one page should be about only one distinct topic, or describe
        how to create one distinct thing. You can use most of the existing duckumentation
        as reference for a good "topic granularity".   

<br/>

Better: **Use 'Requires:', 'Recommended:' and 'Results:' [markers](#markduck-special-pars).**  

Start each line in a knowledge box with one of them.  
<br/>


Better: **In *"Requires:"* lines, [link](#markduck-basic) to pages that provide the requirement, whenever possible.**  

<br/>

Better: **One requirement or result per line**.   

<br/>

Bad: **A list of multiple requirements in one line. **

**Do not:** [](+opmanual_duckiebot#setup-duckiebot)  

<br/>

Better: **Use short descriptive texts, with good keywords that identify the requirement or result**.  

<br/>

Better: **Optimal:** Use the same description as in other knowledge boxes, when referring to the same entity. (Exception: If the other page's description violates these guidelines.)  

<br/>

Bad:  **Long texts, with many unrelated keywords.**

**Do not:**


    Results: A correctly configured Duckiebot SD card in configuration DB18. After assembling the Duckiebot, this will allow you to start it, connect to the internet, and get going.

    Requires: Some-Software, with all requirements for the ROS example

<br/>

Better: **Put all text that does not directly describe the requirement between round brackets **. Omit unnecessary words.**

**Do:**

    Results: A configured Duckiebot SD card in configuration DB18. (After assembling the Duckiebot, this will allow you to start it, connect to the internet, and get going.)

    Requires: Some-Software ( with all requirements for the ROS example)

<br/>

Better: **For estimated time needed, use a 'Requires:' marker.**

**For example:**  

     Requires: Approximately 1 hour 30 minutes.  

("1h30", or "1h, 30 min" works as well.)  

<br/>

Better: If you want, you can use the instructions [here](TODO!) to pick a name of
an entity that the system knows already, from the [data files](TODO ), or even
add a new entity there.   

<br/>


\** This might change. Round brackets might be better suited for "options" that
modify a required or resulting entity.


## Referencing graph data (bad title?)



## Suggestion for an alternative knowledge box format

### Why?
- describe graph project
- what cannot be inferred from the current KBs/
- what features of the graph are not compatible (inferrable) from the KBs
- what makes match-making most difficult
