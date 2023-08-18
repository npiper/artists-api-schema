#!/bin/bash

# Run git shortlog command to extract contributor information
contributors=$(git shortlog --summary --numbered --email)

# Generate contributor entries
contributor_entries=$(echo "$contributors" | awk '{print "        <contributor>\n          <name>" $3 "</name>\n          <email>" $4 "</email>\n        </contributor>"}')

# Check if <contributors> section exists, and create if not
if ! grep -q "<contributors>" pom.xml; then
    sed -i '/<\/project>/i\    <contributors>\n    </contributors>' pom.xml
fi

# Replace existing contributors section with the updated one
sed -i -e '/<contributors>/,/<\/contributors>/c\'"$contributor_entries" pom.xml

# Commit the changes
git add pom.xml
git commit -m "Update contributors in pom.xml"
