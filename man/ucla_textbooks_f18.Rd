\name{ucla_textbooks_f18}
\alias{ucla_textbooks_f18}
\docType{data}
\title{
  Sample of UCLA course textbooks for Fall 2018
}
\description{
  A sample of courses were collected from UCLA
  from Fall 2018, and the corresponding textbook
  prices were collected from the UCLA bookstore
  and also from Amazon.

  A past data set was collected from UCLA courses
  in Spring 2010, and Amazon at that time was
  found to be almost uniformly lower than those
  of the UCLA bookstore's.
  Now in 2018, the UCLA bookstore is about even
  with Amazon on the vast majority of titles,
  and there is no statistical difference in the
  sample data.
}
\usage{data("ucla_textbooks_f18")}
\format{
  A data frame with 201 observations on the
  following 20 variables.
  \describe{
    \item{\code{year}}{Year the course was offered.}
    \item{\code{term}}{Term the course was offered.}
    \item{\code{subject}}{Subject.}
    \item{\code{subject_abbr}}{Subject abbreviation, if any.}
    \item{\code{course}}{Course name.}
    \item{\code{course_num}}{Course number, complete.}
    \item{\code{course_numeric}}{Course number, numeric only.}
    \item{\code{seminar}}{
      Boolean for if this is
      a seminar course.
    }
    \item{\code{ind_study}}{
      Boolean for if this is some
      form of independent study.
    }
    \item{\code{apprenticeship}}{
      Boolean for if this is an
      apprenticeship.
    }
    \item{\code{internship}}{
      Boolean for if this
      is an internship.
    }
    \item{\code{honors_contracts}}{
      Boolean for if this is an
      honors contracts course.
    }
    \item{\code{laboratory}}{Boolean for if this is a lab.}
    \item{\code{special_topic}}{
      Boolean for if this is any of the
      special types of courses listed.
    } 
    \item{\code{textbook_isbn}}{Textbook ISBN.}
    \item{\code{bookstore_new}}{
      New price at the UCLA bookstore.
    }
    \item{\code{bookstore_used}}{
    	  Used price at the UCLA bookstore.
    	}
    \item{\code{amazon_new}}{New price sold by Amazon.}
    \item{\code{amazon_used}}{Used price sold by Amazon.}
    \item{\code{notes}}{Any relevant notes.}
  }
}
\details{
  The most expensive book required for the course
  was generally used.

  The reason why we advocate for using raw amount
  differences instead of percent differences is
  that a 20\% savings on a $10 book is minor relative
  to a 20\% savings on a $100 book,
  meaning a small and largely insignificant price
  difference on low-priced books would balance
  numerically (but not in a practical sense)
  a moderate but important price difference
  on more expensive books.
  So while this tends to result in a bit less
  sensitivity in detecting \emph{some} effect,
  we believe the absolute difference compares
  prices in a more meaningful way.

  Used prices contain the shipping cost but do not
  contain tax.
  The used prices are a more nuanced comparison,
  since these are all 3rd party sellers.
  Amazon is often more a marketplace than a retail
  site at this point,
  and many people buy from 3rd party sellers on
  Amazon now without realizing it.
  The relationship Amazon has with 3rd party
  sellers is also challenging.
  Given the frequently changing dynamics
  in this space, we don't think any analysis
  here will be very reliable for long term
  insights since products from these sellers
  changes frequently in quantity and price.
  For this reason, we focus only on new books
  sold directly by Amazon in our comparison.
  In a future round of data collection, it
  may be interesting to explore whether the
  dynamics have changed in the used market.
}
\source{
  \url{http://sa.ucla.edu/ro/public/soc}

  \url{http://ucla.verbacompare.com}

  \url{http://amazon.com}
}
\seealso{
  \code{\link{textbooks}}, \code{\link{ucla_f18}}
}
\examples{
d <- ucla_textbooks_f18
plot(d$bookstore_new, d$amazon_new, log = "")
a <- c(0.01, 10000)
lines(a, a)

# The following outliers were double checked for accuracy.
d$price_diff <- d$bookstore_new - d$amazon_new
these <- abs(d$price_diff) > 20
these <- these &
    !is.na(abs(d$price_diff) > 20)
d[these, ]

table(is.na(d$price_diff))
hist(d$price_diff)
qqnorm(d$price_diff)
t.test(d$price_diff)

}
\keyword{datasets}
