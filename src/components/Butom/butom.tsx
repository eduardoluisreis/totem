import * as React from "react";
import { NavigationContainer } from "@react-navigation/native";
import { createStackNavigator } from "@react-navigation/stack";

import CadastroScreen from "../../screens/cadastro/cadastro"; // Certifique-se do caminho correto

const Stack = createStackNavigator();

function App() {
  return (
    <NavigationContainer>
      <Stack.Navigator initialRouteName="Home">
        <Stack.Screen name="Cadastro" component={CadastroScreen} />
      </Stack.Navigator>
    </NavigationContainer>
  );
}

export default App;
