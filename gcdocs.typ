
#let gc-docs(title: [], version: str, logo: str, doc) = {
  set text(font: "Arial",lang: "cs")
  set page(footer: grid(
    columns: (1fr, 1fr, 1fr),
    align(left + horizon, version),
    align(center + horizon, image(width: 80%, logo)),
    align(right + horizon, datetime.today().display()),
  ))

  show heading.where(level: 1): it => [
    #pagebreak(weak: true)
    #it
  ]

  set heading(numbering: "1.")

  align(center, text(25pt, title))
  ""

  pagebreak(weak: true)

  outline()
  pagebreak(weak: true)
  doc
}

#let gc-config(displayname, name, example, description) = locate(loc => {
  block(breakable: false)[
    #let level = query(heading, loc).last().level
    #heading(level: level + 1, displayname, outlined: false)
    #label("gc-config-" + displayname.replace(regex("\s+"), "-"))
  
    #block(
      width: 100%,
      radius: 5pt,
      inset: 8pt,
      fill: silver,
      breakable: false,
      table(
        columns: 2,
        stroke: none,
        "Název:",
        name,
        "Příklad:",
        if type(example) == str [#raw(example)] else [#example],
        "Popis:",
        description,
      ),
    )
  ]
})

#let azure = (
  func: "Azure Function",
  app_service: "Azure App Service",
  rg: "Resource Group",
  event_grid: "Azure Event Grid",
  event_hub: "Azure Event Hub",
  kv: "Azure Key vault",
  app_ins: "Azure Application Insights",
  app_reg: "Azure App registration",
  cosmos_db: "Azure Cosmos DB"
)