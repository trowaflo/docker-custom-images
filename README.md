# docker-custom-images

Images Docker maintenues par trowaflo, publiées sur `ghcr.io`.

## Publication

`docker-bake` construit les images à chaque push sur `main` et sur chaque tag, et ne les publie que dans ces deux cas.

## Release

`release-please` ouvre une PR de release par image. Il tourne avec `GITHUB_TOKEN`, sans PAT.

Un tag créé par `GITHUB_TOKEN` ne déclenche pas l'évènement `push` : `docker-bake` ne part donc pas seul après une release. Après le merge de la PR de release, relancer le build sur le tag :

```sh
gh workflow run docker-bake.yml --ref <tag>
```
