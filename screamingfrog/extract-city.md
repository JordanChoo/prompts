# Extract State

Use this within Screaming Frog's LLM settings to extract the city from a URL

```
<objetive>
    Extract the city from the <content> of the page
</objective>
<description>
Review the <content> of this page and extract the exacty city that the page try to target from a keyword and SEO perspective.

First look at the <url> and <h1> to identify the city. If you are unable or not sure which city it is then look at the <content>
</description>

<rules>
    <rule>Only return the city as your response</rule>
    <rule>If you are not sure of the city then return `unsure`</rule>
    <rule>If there is no city being explicitly targeted then return `false`</rule>
</rules>
<response>
city
</response>
<url></url>
<h1></h1>
<content></content>
```
