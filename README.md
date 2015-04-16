# Prototype with Middleman and Push to Pivotal Web Services

## Prototype
1. `git clone git@github.com:pivotal-plech/pws-middleman.git`
2. `cd pws-middleman`
3. `bundle`
4. `middlman server`

## Push to PWS
You’ll need to have an active Pivotal Web Services account for the following. Update the manifest.yml:

1. Update `name: prototype-mm` to `name: [your-app-name]`
2. Update `host: prototype-mm` to `name: [your-host-name]`
3. cf push


---

### Other Docs
- [Middleman Documentation](https://middlemanapp.com/basics/install/)
- [Pivotal Web Services](http://run.pivotal.io/)
- [Pivotal Web Services Documentation](http://docs.run.pivotal.io/)
- [Bootstrap](http://getbootstrap.com/)

----------------
If you have a question ping [Paul Farino](mailto:paul.farino1@gmail.com)
Based on the work of [Spencer Hurst](https://github.com/spencerhurst)
