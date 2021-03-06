# Prototype with Middleman and Push to Pivotal Web Services

## Prototype
1. `git clone git@github.com:paulfarino/pws-middleman.git`
2. `cd pws-middleman`
3. `bundle`
4. `middleman server`

## Push to PWS
You’ll need to have an active Pivotal Web Services account for the following. Update the Rakefile:

1. Update `name: your-app-name`
2. Update `host: your-host-name`
3. Push to PWS via `rake pws_deploy`

## SCSS Linting  
Run SCSS Litining via `rake`  
`rake scss_lint`
---

### Other Docs
- [Middleman Documentation](https://middlemanapp.com/basics/install/)
- [Pivotal Web Services](http://run.pivotal.io/)
- [Pivotal Web Services Documentation](http://docs.run.pivotal.io/)
- [Bootstrap](http://getbootstrap.com/)

----------------
If you have a question ping [Paul Farino](mailto:paul.farino1@gmail.com)  
Based on the work of [Spencer Hurst](https://github.com/spencerhurst)
