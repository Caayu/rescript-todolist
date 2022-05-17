open Ancestor.Default
open Render

@module("../assets/logo.svg") external logo: string = "default"

module NewTaskInput = {
  @react.component
  let make = () => {
    <Box>
      <Typography
        tag=#label
        m=[xs(0)]
        letterSpacing=[xs(-0.035->#em)]
        fontWeight=[xs(#bold)]
        fontSize=[xs(2.4->#rem)]
        lineHeight=[xs(3.1->#rem)]
        color=[xs(Theme.Colors.white)]>
        {`Nova Tarefa`->s}
      </Typography>
      <Box mt=[xs(2)] position=[xs(#relative)]>
        <Input placeholder="Compras da semana" />
        <Box position=[xs(#absolute)] right=[xs(8->#px)] top=[xs(8->#px)]>
          <Button> `Adicionar` </Button>
        </Box>
      </Box>
    </Box>
  }
}

@react.component
let make = () => {
  <Box display=[xs(#flex)] flexDirection=[xs(#column)] alignItems=[xs(#center)]>
    <Box display=[xs(#flex)] justifyContent=[xs(#center)] tag=#header> <img src=logo /> </Box>
    <Box mt=[xs(10)] width=[xs(100.0->#pct)] maxW=[xs(63.4->#rem)]> <NewTaskInput /> </Box>
  </Box>
}
