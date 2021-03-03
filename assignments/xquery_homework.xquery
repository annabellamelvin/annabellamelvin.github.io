<?xml version="1.0" encoding="UTF-8"?>
declare default element namespace "urn:isbn:1-931666-22-9";
<records>
    {
    for $records in collection("/file:/Users/annabellamelvin/Desktop/xquery-assignment?select=*.xml")/ead
    let $restrictions := $records/archdesc/accessrestrict/p
    order by count($files) descending
    (: I ended up returning my records based on the total count because the volume is coming to mean much more than just its physical space :)
    return
    <findingAid>
        <idno>{data($records/eadheader/eadid/@identifier)}</idno>
        <title>{substring-before($records/eadheader/filedesc/titlestmt/titleproper, ', ')}</title>
        <yearsCount unit="years">{number(substring-after($records/eadheader/filedesc/titlestmt/titleproper/date, '-')) - number(substring-before($records/eadheader/filedesc/titlestmt/titleproper/date, '-'))}</yearsCount>
        <encoders>{substring-after($records/eadheader/filedesc/titlestmt/author, 'by ')}</encoders>
        <changeCount>{count($records/eadheader/revisiondesc/change)}</changeCount>
        <physExtent>{data($records/archdesc/did/physdesc/extent)}</physExtent>
        <restrictions>{normalize-space(string-join($restrictions, ' | '))}</restrictions>
        <indexingTerms>
            {for $name in $records/archdesc/controlaccess//corpname|$records/archdesc/controlaccess//persname
            return 
            <name>{normalize-space(data($terms))}</name>
            }
            {for $subject in $records/archdesc/controlaccess//subject
            return 
            <subject>{normalize-space(data($terms))}</subject>
            }
        </indexingTerms>
        <fileCount>{count($files)}</fileCount>
    </findingAid>
    }
</records>
