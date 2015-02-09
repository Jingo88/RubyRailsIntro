# Writing a Rails Exercise (Blog)

### Coming soon to a theater near you.


## Pipeline Rails

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

## Formatting and API items

#### "protect_from_forgery with :exception" 

* this goes inside a controller. If you try to hit an API route that will try to CRUD a record it will give you a message that you are not authenticated. The protect from forgery line allows you to bypass those situations.

#### Rails formatting
In your controller you can put various formats inside the method. Example:
``` 
def index
@pets = Pet.all
respond_to do |format|

This will be found in localhost:3000/pets
format.html { render :index}

This will be found in localhost:3000/pets.json
format.json { render json: @pets}
```

#### Rendering
You are able to render various error pages as well. 

```
def show
@pet = Pet.find_by(id: params[:id])
if @pet
render json: @pet
else 
render status: 404, nothing: true
end
end
```












