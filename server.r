library(shiny)

BMIValue<-function(Height, Weight)
{
  return (Weight/(Height^2))
}
shinyServer(
  function(input, output){
    output$name<-renderText({input$name})
    output$sex<-renderText({input$Gender})
    output$BMI<-renderText({round(BMIValue(input$Height, input$Weight),digits=2)})
    output$result<-renderText({
      BMINum=round(BMIValue(input$Height, input$Weight),digits=2)
      if(input$Gender=="Female") BMINum=BMINum*0.9
      if (BMINum<15) "Very Severely Underweight"
      else if (BMINum<16) "Severely Underweight"
      else if (BMINum<18.5) "Underweight"
      else if (BMINum<25) "Normal (Health Weight)"
      else if (BMINum<30) "Overweight"
      else if (BMINum<35) "Obese Class I (Moderately)"
      else if (BMINum<40) 'OBese Class II (Severely Obese)'
      else "Obese Class III (Very Severely Obese)"
    })
    
  }
  )