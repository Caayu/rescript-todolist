let container = Emotion.css({
  "border": "solid 4px green",
})

@react.component
let make = () => {
  <div className=container> <h1> {`Hello from ReScript and Vite 😄`->React.string} </h1> </div>
}
