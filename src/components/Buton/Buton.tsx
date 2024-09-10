import React from "react";
import { View, Button, Text, Pressable } from "react-native";
import { styles } from "./Styles.Buton";
import {} from "./Styles.Buton";


export function Buton() {
  

  return (
    <View style={styles.containerButtom}>
      <Pressable
        onPress={() => {
          console.log("Entrada ativada");
        }}
        style={styles.StyleButon}
      >
        <Text style={styles.textButon}>Acesse</Text>
       
      </Pressable>
    </View>
  );
}
