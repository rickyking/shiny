\name{selectInput}
\alias{selectInput}
\title{Create a select list input control}
\usage{
  selectInput(inputId, label, choices, selected = NULL,
    multiple = FALSE)
}
\arguments{
  \item{inputId}{Input variable to assign the control's
  value to}

  \item{label}{Display label for the control}

  \item{choices}{List of values to select from. If elements
  of the list are named then that name rather than the
  value is displayed to the user.}

  \item{selected}{The initially selected value (or multiple
  values if \code{multiple = TRUE}). If not specified then
  defaults to the first value for single-select lists and
  no values for multiple select lists.}

  \item{multiple}{Is selection of multiple items allowed?}
}
\value{
  A select list control that can be added to a UI
  definition.
}
\description{
  Create a select list that can be used to choose a single
  or multiple items from a list of values.
}
\examples{
selectInput("variable", "Variable:",
            c("Cylinders" = "cyl",
              "Transmission" = "am",
              "Gears" = "gear"))
}
\seealso{
  \code{\link{updateSelectInput}}

  Other input.elements: \code{\link{actionButton}},
  \code{\link{checkboxGroupInput}},
  \code{\link{checkboxInput}}, \code{\link{dateInput}},
  \code{\link{dateRangeInput}}, \code{\link{fileInput}},
  \code{\link{numericInput}}, \code{\link{radioButtons}},
  \code{\link{sliderInput}}, \code{\link{submitButton}},
  \code{\link{textInput}}
}

