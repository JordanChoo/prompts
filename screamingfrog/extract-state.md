# Extract State

Use this within Screaming Frog's LLM settings to extract the state from a URL

```
<objetive>
    Extract the state from the <content> of the page
</objective>
<description>
Review the <content> of this page and extract the exacty state that the page try to target from a keyword and SEO perspective.

First look at the <url> and <h1> to identify the state. If you are unable or not sure which state it is then look at the <content>
</description>

<rules>
    <rule>Only return the state as your response</rule>
    <rule>If you are not sure of the state then return `unsure`</rule>
    <rule>If there is no state being explicitly targeted then return `false`</rule>
</rules>
<response>
state
</response>
<url></url>
<h1></h1>
<content></content>
```
