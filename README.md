# YAML

Local yale YAML files for ASpace config.

Update `frontend` or `plugins` locales then generate the plugin:

```bash
./pluginify.sh
```

## Testing

To verify the YAML syntax install [yaml](https://github.com/mikefarah/yaml.git):

```bash
# be sure this is what you want:
sudo wget -O /usr/local/bin/yaml https://github.com/mikefarah/yaml/releases/download/1.11/yaml_linux_amd64
sudo chmod a+x /usr/local/bin/yaml
/usr/bin/find . -name *.yml -type f -exec /usr/local/bin/yaml r {} \;

# alternative, relative binary:
wget -O yaml https://github.com/mikefarah/yaml/releases/download/1.11/yaml_linux_amd64
chmod u+x yaml

/usr/bin/find . -name *.yml -type f -exec ./yaml r {} \;
```

---