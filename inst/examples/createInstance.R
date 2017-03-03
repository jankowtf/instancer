createInstance(of = "Testclass")
createInstance(of = "Testclass", with = letters[1:3])
createInstance(of = "Testclass", with = letters[1:3], inherits = TRUE)

createInstance(of = "Testclass", with = letters[1:3], inherits = TRUE,
  attributes = list(attr_1 = TRUE, attr_2 = "yep!"))
createInstance(of = "Testclass", with = letters[1:3], inherits = TRUE,
  attributes = list(my_attrs = list(attr_1 = TRUE, attr_2 = "yep!")))
