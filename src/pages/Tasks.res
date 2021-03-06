open Ancestor.Default
open Render

@module("../assets/logo.svg") external logo: string = "default"
@module("../assets/empty-state.svg") external emptySate: string = "default"

module EmptyState = {
  @react.component
  let make = () => {
    <Box
      minH=[xs(40.0->#rem)]
      display=[xs(#flex)]
      flexDirection=[xs(#column)]
      alignItems=[xs(#center)]
      justifyContent=[xs(#center)]>
      <Base tag=#img mb=[xs(3)] width=[xs(200->#px)] src=emptySate />
      <Typography
        tag=#h1
        m=[xs(0)]
        fontSize=[xs(2.4->#rem)]
        fontWeight=[xs(#bold)]
        letterSpacing=[xs(-0.035->#em)]
        textAlign=[xs(#center)]
        color=[xs(Theme.Colors.white)]>
        {`Não há tarefas pendentes`->s}
      </Typography>
      <Typography
        tag=#p
        m=[xs(0)]
        mb=[xs(1)]
        fontSize=[xs(1.8->#rem)]
        letterSpacing=[xs(-0.03->#em)]
        textAlign=[xs(#center)]
        color=[xs(Theme.Colors.grayLight)]>
        {`Adicione sua primeira tarefa utilizando o campo acima`->s}
      </Typography>
    </Box>
  }
}

module TaskItem = {
  @react.component
  let make = (~name, ~createdAt, ~completed) => {
    <Box
      mb=[xs(2)]
      px=[xs(3)]
      py=[xs(2)]
      bgColor=[xs(Theme.Colors.grayDark)]
      borderRadius=[xs(1)]
      display=[xs(#flex)]
      justifyContent=[xs(#"space-between")]
      alignItems=[xs(#center)]>
      <Box>
        <Typography
          fontWeight=[xs(#bold)]
          tag=#p
          m=[xs(0)]
          mb=[xs(1)]
          fontSize=[xs(1.8->#rem)]
          color=[xs(Theme.Colors.white)]
          letterSpacing=[xs(-0.035->#em)]>
          {name->s}
        </Typography>
        <Typography
          tag=#p
          m=[xs(0)]
          fontSize=[xs(1.4->#rem)]
          color=[xs(Theme.Colors.grayLight)]
          letterSpacing=[xs(-0.035->#em)]>
          {name->s}
        </Typography>
      </Box>
      <Checkbox checked=completed />
    </Box>
  }
}

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
    <Box
      display=[xs(#flex)]
      flexDirection=[xs(#column)]
      mt=[xs(10)]
      width=[xs(100.0->#pct)]
      maxW=[xs(63.4->#rem)]>
      <NewTaskInput />
      // <Box mt=[xs(4)]>
      //   <TaskItem
      //     name="Lorem ipsum dolor sit amet" createdAt="11/10/2021 às 19h53m" completed=true
      //   />
      //   <TaskItem
      //     name="Lorem ipsum dolor sit amet" createdAt="11/10/2021 às 19h53m" completed=false
      //   />
      //   <TaskItem
      //     name="Lorem ipsum dolor sit amet" createdAt="11/10/2021 às 19h53m" completed=true
      //   />
      // </Box>
      <EmptyState />
    </Box>
  </Box>
}
