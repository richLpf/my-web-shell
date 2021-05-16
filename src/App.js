import './App.css';
import config from "./config/config"

function App() {
  return (
    <div className="App">
      <div style={{marginTop: "200px", fontSize: "24px"}}>
        该项目为自动部署的demo项目,当前打包环境{config.currentEnvironment()}
      </div>
    </div>
  );
}

export default App;
