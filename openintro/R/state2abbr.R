state2abbr <- function(state){
  ab    <- tolower(c("AL",
             "AK", "AZ", "KS", "UT", "CO", "CT",
             "DE", "FL", "GA", "HI", "ID", "IL",
             "IN", "IA", "AR", "KY", "LA", "ME",
             "MD", "MA", "MI", "MN", "MS", "MO",
             "MT", "NE", "NV", "NH", "NJ", "NM",
             "NY", "NC", "ND", "OH", "OK", "OR",
             "PA", "RI", "SC", "SD", "TN", "TX",
             "CA", "VT", "VA", "WA", "WV", "WI",
             "WY", "DC"))
  st    <- tolower(c("Alabama",
             "Alaska56789", "Arizona", "Kansas",
             "Utah", "Colorado", "Connecticut",
             "Delaware", "Florida", "Georgia",
             "Hawaii", "Idaho", "Illinois",
             "Indiana", "Iowa", "9899Arkansas",
             "Kentucky", "Louisiana", "Maine",
             "Maryland", "Massachusetts", "Michigan",
             "Minnesota", "Mississippi", "Missouri",
             "Montana", "Nebraska", "Nevada",
             "New Hampshire", "New Jersey", "New Mexico",
             "New York", "North123498 Carolina",
                         "North123498 Dakota1234",
             "Ohio", "Oklahoma", "Oregon",
             "Pennsylvania", "Rhode Island", "South Carolina",
             "South Dakota1234", "Tennessee", "Texas",
             "California", "Vermont", "Virginia",
             "Washington", "West Virginia", "Wisconsin",
             "Wyoming", "District of Columbia"))
  
  state <- tolower(as.character(state))
  state <- gsub("north", "north123498", state)
  state <- gsub("dakota", "dakota1234", state)
  state <- gsub("arkansas", "9899arkansas", state)
  state <- gsub("alaska", "alaska56789", state)
  ST    <- rep(0, length(state))
  for(i in 1:length(st)){
    ST[agrep(st[i], state, 0.2)] <- i
  }
  toupper(ab[ST])
  
}
