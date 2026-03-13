```
<objetive>
    Complete the template column in the attached CSV with the variable based on the city and state found in the Keyword and Entities
</objective>
<description>
Carefully and with extreme detail go row by row through the attached CSV document and review the Keyword and Entities column. Using the Entities column identify the state, abbreviation of the state, and/or city within the Keyword column. Then in the Template column create a template version of the value in the Keyword column but, as a template replacing State with {{state}}, state abbreviation with {{state abbr}}, and city with {{city}}
</description>

<rules>
    <rule>If you are not sure of what the value should be then add unsure to the Template column</rule>
    <rule>Do NOT make up anything or guess, you need to be sure. If you are not 100% confident in your answer then add unsure to the template column</rule>
</rules>
<examples>
    <example><Keyword>cheap accountant buffalo ny</Keyword><Entities>Buffalo, NY (Location)"</Entities><template>cheap accountant {{city}} {{state abbr}}</template></example>
    <example><Keyword>bookkeeper chicago il</Keyword><Entities>Chicago, IL (Location)"</Entities><template>bookkeeper {{city}} {{state abbr}}>></template></example>
    <example><Keyword>cheap year end accounting charlotte nc</Keyword><Entities>Charlotte, NC (Location)"</Entities><template>cheap year end accounting {{city}}}} {{state abbr}}</template></example>
    <example><Keyword>accountant in toledo ohio</Keyword><Entities>Toledo, Ohio (Location)"</Entities><template>accountant in {{city}} {{state}}</template></example>
    <example><Keyword>best business accountant austin tx</Keyword><Entities>Austin, TX (Location)"</Entities><template>best business accountant {{city}}}} {{state abbr}}</template></example>
    <example><Keyword>cheapest personal accountant in nj</Keyword><Entities>New Jersey (Location)</Entities><template>cheapest personal accountant in {{state abbr}}</template></example>
    <example><Keyword>baltimore accounting companies</Keyword><Entities>Baltimore (Location)</Entities><template>{{city}} accounting companies</template></example>
    <example><Keyword>tax accountants denver</Keyword><Entities>Denver (Location)</Entities><template>tax accountants {{city}}</template></example>
</examples>
```
