# Writing a Rails Exercise (Blog)

### Coming soon to a theater near you.


### Pipeline Rails

#####The asset pipeline will take all the files and minimizes all of the files, and combines them to send only what is necessary. It compresses things by removing all the spaces and the like. you can use other processers too such as CoffeeScript or LESS/SASS. 

* app/assets/Javascripts
* app/assets/stylesheets


#### By convention if you are using things like bootstrap you want to put them in the vendor files. This is because we did not write it ourselves

* vendor/assets/Javascripts/
* vendor/assets/stylesheets/


#####We can add files from app/assets or vendor/assets

* copy the css and javascript files into the vender folder
* if you require bootstrap you put "require bootstrap" in the style.css inside stylesheets and it must be put above "require_tree"
* Example

``` 
//= require jquery
//= require jquery_ujs
//= require bootstrap
//= require turbolinks
//= require_tree .
```