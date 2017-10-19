# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Votes.destroy_all
Pizza.destroy_all

Pizza.create([
  {
    name:	"Extravaganza",
    ingredients:	"Cebolla, pimentón, pepperoni, jamón, champiñón, aceituna, chorizo, carne molida y extraqueso.", image_url:"https://www.dominos.com.tr/rest/medium/ProductOsg/Detail/PIZZZ/Resize/700x280/TR/View"
  },
  {
    name:	"Fiesta Pepperoni",
    ingredients:	"Doble pepperoni y extraqueso",
    image_url:"https://cdn4.ruled.me/wp-content/uploads/2014/08/pepperonipizza.jpg"
  },
  {
    name:	"Hawaiana",
    ingredients:	"Extraqueso , Jamón y Piña.",
    image_url:"http://menuuniversitario.ncs.mx/sites/default/files/dominos02.jpg"
  },
  {
    name:	"Hawaiian chicken",
    ingredients:	"Queso Mozarella, trocitos de pollo, piña, tocineta y salsa B.B.Q.",
    image_url:"http://2.bp.blogspot.com/-3xwPcSGwXL8/VgoLyD7A6YI/AAAAAAAAAiw/K3vQzbrhI80/s1600/hawaiiana-suprema.jpg"
  },
  {
    name:	"Vegetariana",
    ingredients:	"Cebolla, pimentón, champiñón y tomate.",
    image_url:"https://img.grouponcdn.com/iam/byQUCktzhCgfqMfEA61h/AZ-2048x1229/v1/c700x420.jpg"
  },
  {
    name:	"BBQ",
    ingredients:	"Carne molida, tocineta, maíz tierno, salsa BBQ y cebolla.",
    image_url:"http://food.fnr.sndimg.com/content/dam/images/food/fullset/2012/2/28/1/FNM_040112-Copy-That-002_s4x3.jpg.rend.hgtvcom.616.462.suffix/1382541346030.jpeg"
  },
  {
    name:	"Honolulu",
    ingredients:	"Jalapeño, jamón, tocineta y piña.",
    image_url:"https://ubicalas.com/uploads/88e0c08486fce233ef8466d410234fb8b35725f2789cb673cdfed6a3b937110b3e42739a91d690087a9c2b089cca64118d85206c378275341e9ef5b29652bcd8.jpg"
  },
  {
    name:	"Deluxe",
    ingredients:	"Cebolla, pimentón, pepperoni, champiñón y chorizo.",
    image_url:"https://www.eldinero.com.do/wp-content/uploads/Pizza.jpg"
  }
])
