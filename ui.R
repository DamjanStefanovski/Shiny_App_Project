# This is a Shiny web application with plotly. You can run the application by clicking
# the 'Run App' button above.
# Reactivity is what makes your Shiny apps responsive. This app is created with to show 
# the reactivity inside the shiny app for the course project

# Loading the packages 
library(shiny)
library(plotly)
library(shinythemes)

# The diamons dataset, can be found in R. 
data(diamonds, package = "ggplot2")
nms <- names(diamonds)
ui <- fluidPage(theme = shinytheme("superhero"), # This line is creating the theme for your web app
                
                headerPanel("Diamonds Explorer Dataset"),
                sidebarPanel(
                        sliderInput('sampleSize', 'Sample Size', min = 1, max = nrow(diamonds),
                                    value = 1000, step = 500, round = 0),
                        selectInput('x', 'X', choices = nms, selected = "carat"),
                        selectInput('y', 'Y', choices = nms, selected = "price"),
                        selectInput('color', 'Color', choices = nms, selected = "clarity"),
                        
                        selectInput('facet_row', 'Facet Row', c(None = '.', nms), selected = "clarity"),
                        selectInput('facet_col', 'Facet Column', c(None = '.', nms)),
                        sliderInput('plotHeight', 'Height of plot (in pixels)', 
                                    min = 100, max = 2000, value = 1000)
                ),
                mainPanel(
                        plotlyOutput('trendPlot', height = "900px")
                )
)

