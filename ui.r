library(shiny)
shinyUI(pageWithSidebar(
  #Appliction Title
      headerPanel("Body Wight BMI Monitor"),
      
      sidebarPanel(
        textInput(inputId="name",label="Your name: "),
        numericInput(inputId='Height',label='Height (m)',1.70,min=0.90,max=2.50,step=0.1),
        numericInput(inputId='Weight',label='Weight (kg)',70,min=20,max=160,step=1),
        numericInput(inputId='Age',label='Age',30,min=0, max=120,step=1),
        radioButtons('Gender', label='Gender',
                     choices=list("Male" = "Male",
                       "Female" = "Female"
                       ),selected='Male'),
        submitButton('Submit')
        ),
      mainPanel(
        
        p('Dear: '),
        textOutput('name'),
        p("This App is to prediction your health condition based on the BMI (Boy Mass Index)."),
        p("Please input your name, your height, your weight, and your age into the left side. "),
        p("Then press the submit button."),
        p("Here is the Result of our precittion:"),
        
        p('Gender: '),
        textOutput('sex'),
        p('Your BMI (Body Mass Index) is:'),
        textOutput('BMI'),
        p('Your Health Condition is:'),
        textOutput('result')
        )
  ))
