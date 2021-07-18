# Harmonised System API's

## Usecase
https://www.cogoport.com/blogs/hs-code-all-about-classification-of-goods-in-export-import

## SETUP: 
### Requirements:

* Ruby Version 2.5.0 required

Go in terminal to the location where project installed
Run Commands 
* bundle install
* rake db:create
* rake db:migrate
* rake lib:tasks:one_timer:add_product_data (it has to srcipt to add dataset in database)
* rails s

On running these command we are ready to run the api’s 

### API'S

PUT: http://127.0.0.1:3000/api/products

#### INPUT: 
```json
{
   {
       "code": "0101210000",
       "description": "Live horses, asses, mules and hinnies:Horses:*Pure-bred breeding animals<951>"
   }
}
``` 
SHOW: http://127.0.0.1:3000/api/get_product_description/1

GET: http://127.0.0.1:3000/api/products
