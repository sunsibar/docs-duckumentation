# The Knowledge and Activity Graph Environment {#markduck-knowledge-box status=ready  label-name="Knowledge Boxes"}

<div class='requirements' markdown="1">

Requires: [Linking between pages of the duckumentation](#markduck-basic)  

Recommended: [Markduck, special paragraphs](#markduck-special-pars)  

Results: Knowledge how to write a knowledge box

</div>

## Basics

Every page, on every book, should have a 'Knowledge Box' - also called 'Knowledge and Activity Graph'. It's the blue box you see above. In markdown, a knowledge box looks like this:

    <div class='requirements' markdown="1">

    Requires: Important prerequisite XY  

    Requires: ...  

    Results: Infinite wisdom  

    </div>


## Purpose {#kb-purpose}

Knowledge boxes give structure to the duckumentation. How do you know where to
start? For example by following back links in knowledge boxes! Or by having an [automated system](https://github.com/duckietown/education-on-demand) follow back those references for you.   


Also, imagine if dead references or circular dependencies were detected automatically. Authors
could fix this right away, and you would have an easier time navigating the duckumentation.
So: Add a knowledge box!  


## Guidelines

Here are dos and don'ts how to write useful knowledge boxes:    

<br/>


Better: **One knowledge box per page.** (*Might change in the future.*)  

Organize your pages in a way that one knowledge box per page makes sense.
        Optimally, one page should be about one distinct topic, or describe
        how to create one distinct thing. You can use most of the existing duckumentation
        as reference for a good "topic granularity".   

<br/>

Better: **Use 'Requires:', 'Recommended:' and 'Results:' [markers](#markduck-special-pars).**  

Start each line in a knowledge box with one of them.  
<br/>


Better: **In "Requires:" lines, [link](#markduck-basic) to pages that provide the requirement whenever possible.**  

<br/>

Better: **Link only to CSS-identifiers of other pages, not specific sections on that page.** (This might change in the future.)  

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

    Requires: Software-X, with all requirements for the ROS example

<br/>

Better: **Put all text that does not directly describe the requirement between round brackets \*\*. Omit unnecessary words.**

**Do:**

    Results: A configured Duckiebot SD card in configuration DB18. (After assembling the Duckiebot, this will allow you to start it, connect to the internet, and get going.)

    Requires: Software-X ( with all requirements for the ROS example)

<br/>

Better: **For estimated time needed, use a 'Requires:' marker.**

**For example:**  

     Requires: Approximately 1 hour 30 minutes.   

("1h30", or "1h, 30 min" works as well.)  

<br/>

Better: **If you want**, you can use the instructions [here](#instructions-refer-to-data) to pick a name of an entity that the [EOD system](https://github.com/duckietown/education-on-demand#knowledge-graph) knows already, from the [data files](https://github.com/duckietown/education-on-demand/tree/master/data/eod/graphdata), or add a new entity there via pull request.    

<br/>


\*\* This *might* change in the future.


## 'How to speak the language of the graph' {#instructions-refer-to-data}  

To refer to an entity that is already known by the knowledge-box parsing algorithm:    

- **1)** First, open one of two files:    

   - [topics.yaml](https://github.com/duckietown/education-on-demand/blob/master/data/eod/graphdata/topics.yaml) if you want to refer to a specific topic    

   - [stuff.yaml](https://github.com/duckietown/education-on-demand/blob/master/data/eod/graphdata/stuff.yaml) if you want to refer to an object (like a Duckiebot) or a piece of software.    

<br/>

- **2)** Scan that file for the thing you are looking for. (ctrl-F for a few keywords.)    
    - **2a) If it exists:**
        - Copy the string after `name: ` into your knowledge box line, after a `Requires: ` or `Results: ` marker  (possibly in addition to a link to a page).    
        - You can add the keyword "installed" or "installation" to refer to a (software) item. Add the word "knowledge" to ensure to refer to a topic. (This is crucial, for example, to distinguish knowing ROS vs. having ROS installed. )  
        - In case you opened the second .yaml file in step 1: If your "item" needs to have one of the options listed after `all_possible_options:`, add the text of those options to your knowledge box line.  

    - **2b) If what you are looking for does not exist yet:**  
         -  Edit the respective file on GitHub, [topics.yaml](https://github.com/duckietown/education-on-demand/blob/master/data/eod/graphdata/topics.yaml) or  [stuff.yaml](https://github.com/duckietown/education-on-demand/blob/master/data/eod/graphdata/stuff.yaml), to add the entity you need. Put something unique as `shortname` (only lowercase letters, numbers and underscores) and a good, short-ish `name` for it.  
         - Open a pull request with your change. Write me at kellersu -at- student -dot- ethz -dot- ch in case it is not accepted soon.  
         - Refer to the entity as described in 2a).  

  <br/>

#### **Explanation**  
- The knowledge boxes are parsed into a graph. This can happen in multiple ways.
- Because text matching is currently fairly unreliable, a previous version of the graph is stored in .yaml and .csv files. This graph can be matched to the current knowledge boxes, to update it so that it maps the current version of the book.  
- The data entries in "topics" (knowledge) and "items" (mostly physical objects or software) are what is matched to requirements and results in knowledge boxes. If you use the exact name of an entity listed there (the "name" field), plus the exact wording of any `item options` that you want to refer to, it is certain to be recognized by the system as that entity.  
- To visualize the graph, [see here](https://github.com/duckietown/education-on-demand/blob/master/docs/generate_visualize_graph.md) (and [here](https://github.com/duckietown/education-on-demand#visualizing-gexf-graphs)).


## Suggestion for an alternative knowledge box format

See [here](https://github.com/duckietown/education-on-demand/docs/alternative_kb_format.md)  
