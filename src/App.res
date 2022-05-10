open Ancestor.Default

Emotion.injectGlobal({
  "html": {
    "fontSize": "10px",
  },
  "html, body, #root": {
    "width": "100%",
    "height": "100%",
    "margin": "0",
    "padding": "0",
  },
  "*": {
    "boxSizing": "border-box",
    "fontFamily": Theme.Constans.fontFamily,
  },
})

@react.component
let make = () => {
  <Box p=[xs(4)] bgColor=[xs(#hex("#000")), md(#hex("#cacaca"))]>
    <Typography tag=#h2 color=[xs(#hex("#fafafa")), md(#hex("#000"))]>
      {`Hello from ReScript and Vite 😄`->React.string}
    </Typography>
  </Box>
}
