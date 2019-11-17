#!/bin/bash

cat locales/en.yml > frontend/locales/en.yml
cat plugins/*/frontend/locales/en.yml \
  >> frontend/locales/en.yml

cat locales/enums/en.yml > frontend/locales/enums/en.yml
cat plugins/*/frontend/locales/enums/en.yml \
  >> frontend/locales/enums/en.yml 2>/dev/null

# remove empty lines
sed -i '' '/^[[:space:]]*$/d' frontend/locales/en.yml
sed -i '' '/^[[:space:]]*$/d' frontend/locales/enums/en.yml

# remove all "en:" occurences
sed -i '' '/^en:$/d' frontend/locales/en.yml
sed -i '' '/^en:$/d' frontend/locales/enums/en.yml

# prepend "en:"
sed -i '' '1s/^/en:\'$'\n/' frontend/locales/en.yml
sed -i '' '1s/^/en:\'$'\n/' frontend/locales/enums/en.yml

echo "Updated frontend locales!"
