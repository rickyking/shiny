\name{updateDateRangeInput}
\alias{updateDateRangeInput}
\title{Change the start and end values of a date range input on the client}
\usage{
  updateDateRangeInput(session, inputId, label = NULL,
    start = NULL, end = NULL, min = NULL, max = NULL)
}
\arguments{
  \item{session}{The \code{session} object passed to
  function given to \code{shinyServer}.}

  \item{inputId}{The id of the input object.}

  \item{label}{The label to set for the input object.}

  \item{start}{The start date. Either a Date object, or a
  string in \code{yyyy-mm-dd} format.}

  \item{end}{The end date. Either a Date object, or a
  string in \code{yyyy-mm-dd} format.}

  \item{min}{The minimum allowed date. Either a Date
  object, or a string in \code{yyyy-mm-dd} format.}

  \item{max}{The maximum allowed date. Either a Date
  object, or a string in \code{yyyy-mm-dd} format.}
}
\description{
  Change the start and end values of a date range input on
  the client
}
\details{
  The input updater functions send a message to the client,
  telling it to change the settings of an input object. The
  messages are collected and sent after all the observers
  (including outputs) have finished running.

  The syntax of these functions is similar to the functions
  that created the inputs in the first place. For example,
  \code{\link{numericInput}()} and
  \code{updateNumericInput()} take a similar set of
  arguments.

  Any arguments with NULL values will be ignored; they will
  not result in any changes to the input object on the
  client.
}
\examples{
\dontrun{
shinyServer(function(input, output, session) {

  observe({
    # We'll use the input$controller variable multiple times, so save it as x
    # for convenience.
    x <- input$controller

    updateDateRangeInput(session, "inDateRange",
      label = paste("Date range label", x),
      start = paste("2013-01-", x, sep=""))
      end = paste("2013-12-", x, sep=""))
  })
})
}
}
\seealso{
  \code{\link{dateRangeInput}}
}

