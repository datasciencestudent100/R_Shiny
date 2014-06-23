shinyUI(
pageWithSidebar(
# Application title
headerPanel("GPA Prediction for Alpha Engineering College"),
sidebarPanel(
numericInput('satmath', 'SAT MATH Score', 600, min = 300, max = 800, step = 1),
numericInput('satverb', 'SAT VERB score', 600, min = 300, max = 800, step = 1),
numericInput('hspct', 'Higt School Rank Percetage(higher the better)', 50, min = 1, max = 99, step = 1),
	
# textInput(inputId="satmath", label = "SAT MATH Score"),
# textInput(inputId="satverb", label = "SAT VERB score"),	
# textInput(inputId="hspct", label = "Higt School Rank Percetage(higher the better)"),

checkboxGroupInput("gender", "Gender",
c("Male" = "1","Female" = "0")),	
	
submitButton('Submit')
),
mainPanel(
h3('Results of prediction'),
h4('You entered SAT Math Score'),
verbatimTextOutput("Osatmath"),
h4('You entered SAT Verb Score'),
verbatimTextOutput("Osatverb"),
h4('You entered High School Rank Percentage'),
verbatimTextOutput("Ohspct"),
h4('You entered Gender'),
verbatimTextOutput("Ogender"),	


	
h4('Which resulted in a prediction of GPA '),
verbatimTextOutput("prediction")
)
)
)
