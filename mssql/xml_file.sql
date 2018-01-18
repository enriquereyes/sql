select '<UserField dwType="' + prop_type + '" dwLength="' + LTRIM(RTRIM(STR(ISNULL(prop_len, '')))) + '" dbName="' + prop_name + '" displayName="' + prop_name + '" dropLeadingZero="false" dropLeadingBlanks="false" usedAsDocumentName="false" notEmpty="false">' + CHAR(13)+CHAR(10) + '
          ' + CHAR(9) + '<DBType indexed="false" length="' + LTRIM(RTRIM(STR(ISNULL(prop_len, '')))) + '" uniqueType="None" scale="0">' + prop_type + '</DBType>' + CHAR(13)+CHAR(10) + '
          ' + CHAR(9) + '<Mask>{0}</Mask>' + CHAR(13)+CHAR(10) + '
          ' + CHAR(9) + '<FixedEntry>No</FixedEntry>' + CHAR(13)+CHAR(10) + '
        </UserField>' + CHAR(13) + CHAR(10)  + CHAR(13) + CHAR(10) 
    as XML from propdef order by prop_name;