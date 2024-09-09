import React, { useState } from "react";
import {View, Text, StyleSheet, TextInput, TouchableOpacity, } from "react-native";
import { styles } from "./Style.Cadastro";
import {Logo} from '../../components/Logo/LogoMed';


export default function Cadastro() {
  const [nome, setUsername] = useState("");
  const [cpf, setCpf] = useState("");
  const [Tel, setTel] = useState("");

  function handleSignIn() {
    if (nome === "" || cpf === "" || Tel === "") {
      alert("PREENCHA OS CAMPOS");
      return;
    }
    const data = {
      nome,
      cpf,
      Tel,
    };
    console.log(data);
  }
  return (
    <View style={styles.container}>
      <Text style={styles.Cadastrotitle}>Bem vindo(a)</Text>
      <Logo/>

      <TextInput
        style={styles.input}
        onChangeText={setUsername}
        value={nome}
        placeholder="Digite o seu Nome"
      />

      <TextInput
        style={styles.input}
        onChangeText={setCpf}
        value={cpf}
        placeholder="Digite o seu CPF"
      />

      <TextInput
        style={styles.input}
        onChangeText={setTel}
        value={Tel}
        placeholder="Digite o seu CPF"
      />

      <TouchableOpacity style={styles.button} onPress={handleSignIn}>
        <Text style={styles.buttonText}>Enviar</Text>
      </TouchableOpacity>
    </View>
  );
}
