%%raw("import './index.css'")

let root = ReactDOM.querySelector("#root")

let () = switch root {
| Some(element) =>
  ReactDOM.Client.createRoot(element)->ReactDOM.Client.Root.render(
    <React.StrictMode>
      <App />
    </React.StrictMode>,
  )
| None => Js.Exn.raiseError("Root not found!")
}
