# Vev Widget Package deploy action

Use this action to deploy a Widget Package

## Example

```yaml
jobs:
  deploy-widgets:
    runs-on: ubuntu-latest

    steps:
      - uses: actions/checkout@v3
      - name: "Deploy widgets"
        uses: vev-design/widget-deploy-action  
        with:
          token: 'API-KEY-1234569420'
```

## Hello Vev

* Install the Vev CLI and log in
    * ```bash
      npm i -g @vev/cli
      ```
    * ```bash
      vev login
      ```
* Set up a new Widget Package
    * ```bash
      vev create package-name
      ```
* In the package's folder, remember to initialize your package, this Action can't do this for you
    * ```bash
      cd package-name && vev init
      ```
* Remember to include the `vev.json` file in your repo
* Create a Workflow definition and include an API key. You can create keys on your [user profile](https://editor.vev.design/user/profile) in Vev, remember to include the `update:packages` scope.

## Inputs

### `token`

**Required**
An API key with the `update:packages` scope, that belongs to the same account as the Widget Package

## Feedback and feature requests

If you have any ideas you can submit them on our [roadmap page](https://roadmap.vev.design/).
