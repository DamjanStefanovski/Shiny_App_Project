# Shiny_App_Project
server.R and ui.R code for Shiny app and supporting documentation 

The Shiny web framework is fundamentally about making it easy to wire up input values from a web page, making them easily available to you in R, and have the results of your R code be written as output values back out to the web page.

input values => R code => output values
Since Shiny web apps are interactive, the input values can change at any time, and the output values need to be updated immediately to reflect those changes.

Shiny comes with a reactive programming library that you will use to structure your application logic. By using this library, changing input values will naturally cause the right parts of your R code to be reexecuted, which will in turn cause any changed outputs to be updated.

Reactive programming is a coding style that starts with reactive values–values that change over time, or in response to the user–and builds on top of them with reactive expressions–expressions that access reactive values and execute other reactive expressions.

What’s interesting about reactive expressions is that whenever they execute, they automatically keep track of what reactive values they read and what reactive expressions they invoked. If those “dependencies” become out of date, then they know that their own return value has also become out of date. Because of this dependency tracking, changing a reactive value will automatically instruct all reactive expressions that directly or indirectly depended on that value to re-execute.

The most common way you’ll encounter reactive values in Shiny is using the input object. The input object, which is passed to your shinyServer function, lets you access the web page’s user input fields using a list-like syntax. Code-wise, it looks like you’re grabbing a value from a list or data frame, but you’re actually reading a reactive value. No need to write code to monitor when inputs change–just write reactive expression that read the inputs they need, and let Shiny take care of knowing when to call them.
