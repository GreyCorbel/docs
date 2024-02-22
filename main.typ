#import "gcdocs.typ": *

#show: doc => gc-docs(
  title: lorem(3),
  version: "v0.1.0",
  logo: "./img/gc.png",
  doc,
)

= Kapitola
#lorem(50)
@gc-config-Schedule
#gc-config("Schedule", "ServiceSchedule", "1 * * * *", lorem(50))

== Kapitola
#lorem(20)

== Kapitola
#lorem(20)


= Kapitola
#lorem(50)
