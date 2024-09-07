import React from "react";
import { Text, View } from "react-native";
import styles from './HOME.style';
import { Logo } from "../../components/Logo/LogoMed";
import {Butom} from "../../components/Butom/butom"

export default function Home() {
  return (

    <View style={styles.AppContainer}>
      <View style={styles.logoContainer}>
        <Logo />
      </View>
      <View>
        <Butom/>
      </View>
    </View>

  );
}

