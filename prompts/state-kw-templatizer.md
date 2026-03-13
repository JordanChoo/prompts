<objetive>
    Complete the template column in the attached CSV with the variable based on the state and state abbreviation
</objective>
<description>
Carefully and with extreme detail go row by row through the attached CSV document and review the KWs and state column. Using the state column identify the state and or abbreviation of the state within the KWs column. Then in the Template column create a template version of the value in the KWs column but, as a template replacing State with {{state}} and state abbreviation with {{state abbr}}
</description>

<rules>
    <rule>If you are not sure of what the value should be then add unsure to the Template column</rule>
    <rule>Do NOT make up anything or guess, you need to be sure. If you are not 100% confident in your answer then add unsure to the template column</rule>
</rules>
<examples>
    <example><Kws>kansas pest control</KWs><state>Kansas</state><Template>{{state}} pest control</Template></example>
    <example><Kws>low cost florida bed bug removal</KWs><state>Florida</state><Template>low cost {{state}} bed bug removal</Template></example>
    <example><Kws>cheapest exterminator in arizona</KWs><state>Arizona</state><Template>cheapest exterminator in {{state}}</Template></example>
    <example><Kws>average cost of bed bug removal in iowa</KWs><state>Iowa</state><Template>average cost of bed bug removal in {{state}}</Template></example>
    <example><Kws>cheapest mosquito repellent missouri</KWs><state>Missouri</state><Template>cheapest mosquito repellent {{state}}</Template></example>
    <example><Kws>best pest control company in mn</KWs><state>Minnesota</state><Template>best pest control company in {{state abbr}}</Template></example>
    <example><Kws>cheapest wild life removal sc</KWs><state>South Carolina</state><Template>cheapest wild life removal {{state abbr}}</Template></example>
    <example><Kws>ny cottage pest control quotes</KWs><state>New York</state><Template>{{state abbr}} cottage pest control quotes</Template></example>
    <example><Kws>cheap oregon bed bug removal</KWs><state>Oregon</state><Template>cheap {{state}} bed bug removal</Template></example>
</examples>
