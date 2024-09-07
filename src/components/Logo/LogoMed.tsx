import React from 'react';
import { View, Text, Image, TouchableOpacity } from 'react-native';
import { styles } from './StyleLogo';
import LogoTela from '../../../assets/ícone-app.png'

export function Logo() {
    return (
        <View>
            <Text style={styles.title}>
                TOP-Clinica
            </Text>
            <View>
                <Image
                    source={LogoTela}
                    style={{
                        resizeMode: 'contain',
                        height: 180
                    }}
                />
            </View>
        </View>
    );
}

