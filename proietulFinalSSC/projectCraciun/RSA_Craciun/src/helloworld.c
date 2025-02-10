// #include "xil_printf.h"
// #include <stdio.h>
// #include "platform.h"
// #include "xparameters.h"
// #include "sleep.h"
// #include <stdlib.h>
// #include "xgpio.h"

// #define MAX_BUFFER_SIZE 100

// int main() {
//     XGpio pregatire_p_in, pregatire_q_in, pregatire_en_generare_prk, pregatire_puk, pregatire_character, ciphertext, deciphertext, process_done, private_key;
//     int encrypt_character, decrypt_character;
//     int en, done;
//     uint16_t p_in, q_in;
//     uint32_t public_key;
//     char buffer[MAX_BUFFER_SIZE];
//     char encrypted_buffer[MAX_BUFFER_SIZE];
//     char decrypted_buffer[MAX_BUFFER_SIZE];
//     int index = 0;

//     // Inițializare GPIO
//     XGpio_Initialize(&pregatire_p_in, XPAR_AXI_GPIO_0_BASEADDR);
//     XGpio_Initialize(&pregatire_q_in, XPAR_AXI_GPIO_1_BASEADDR);
//     XGpio_Initialize(&pregatire_puk, XPAR_AXI_GPIO_2_BASEADDR);
//     XGpio_Initialize(&pregatire_en_generare_prk, XPAR_AXI_GPIO_3_BASEADDR);
//     XGpio_Initialize(&pregatire_character, XPAR_AXI_GPIO_4_BASEADDR);
//     XGpio_Initialize(&ciphertext, XPAR_AXI_GPIO_5_BASEADDR);
//     XGpio_Initialize(&deciphertext, XPAR_AXI_GPIO_6_BASEADDR);
//     XGpio_Initialize(&process_done, XPAR_AXI_GPIO_7_BASEADDR);
//     XGpio_Initialize(&private_key, XPAR_AXI_GPIO_8_BASEADDR);

//     // Configurare direcție GPIO
//     XGpio_SetDataDirection(&pregatire_p_in, 1, 0x0);
//     XGpio_SetDataDirection(&pregatire_q_in, 1, 0x0);
//     XGpio_SetDataDirection(&pregatire_puk, 1, 0x0);
//     XGpio_SetDataDirection(&pregatire_en_generare_prk, 1, 0x0);
//     XGpio_SetDataDirection(&pregatire_character, 1, 0x0);
//     XGpio_SetDataDirection(&ciphertext, 1, 0xF);
//     XGpio_SetDataDirection(&deciphertext, 1, 0xF);
//     XGpio_SetDataDirection(&process_done, 1, 0xF);
//     XGpio_SetDataDirection(&private_key, 1, 0xF);

//     init_platform();
//     char c;

//     xil_printf("Introdu caractere:\r\n");

//     while (index < MAX_BUFFER_SIZE - 1) {
//         c = inbyte();
//         xil_printf("%c", c);  // Afișează caracterul imediat

//         if (c == '\r') {
//             char next = inbyte();
//             if (next == '\n') break;
//         } else if (c == '\n') {
//             break;
//         }

//         // Scriere în GPIO-uri pentru generarea cheilor și criptare
//         XGpio_DiscreteWrite(&pregatire_p_in, 1, 0b0000000000000111);
//         XGpio_DiscreteWrite(&pregatire_q_in, 1, 0b0000000000001011);
//         XGpio_DiscreteWrite(&pregatire_en_generare_prk, 1, 1);
//         XGpio_DiscreteWrite(&pregatire_puk, 1, 0b000000000000000000000000000000111);

//         XGpio_DiscreteWrite(&pregatire_character, 1, c);  // Trimite caracterul citit pentru criptare

//         // Citire rezultate criptare și decriptare
//         encrypt_character = XGpio_DiscreteRead(&ciphertext, 1);
//         decrypt_character = XGpio_DiscreteRead(&deciphertext, 1);
//         done = XGpio_DiscreteRead(&process_done, 1);

//         // Salvare în buffere
//         buffer[index] = c;
//         encrypted_buffer[index] = (char)(encrypt_character & 0xFF);  // Stocare doar ultimii 8 biți
//         decrypted_buffer[index] = (char)(decrypt_character & 0xFF);

//         index++;
//         usleep(200000);
//     }

//     buffer[index] = '\0';
//     encrypted_buffer[index] = '\0';
//     decrypted_buffer[index] = '\0';

//     // Afișare rezultate
//     xil_printf("\r\nSir complet citit: %s\r\n", buffer);
//     xil_printf("Sir criptat: %s\r\n", encrypted_buffer);
//     xil_printf("Sir decriptat: %s\r\n", decrypted_buffer);
//     xil_printf("Citirea s-a terminat.\r\n");

//     cleanup_platform();
//     return 0;
// }

#include "xil_printf.h"
#include <stdio.h>
#include "platform.h"
#include "xparameters.h"
#include "sleep.h"
#include <stdlib.h>
#include "xgpio.h"

#define MAX_BUFFER_SIZE 100

// Funcție pentru afiȟare în format binar
void print_binary(uint32_t value, int bits) {
    for (int i = bits - 1; i >= 0; i--) {
        xil_printf("%d", (value >> i) & 1);
    }
}

int main() {
    XGpio pregatire_p_in, pregatire_q_in, pregatire_en_generare_prk, pregatire_puk, pregatire_character, ciphertext, deciphertext, process_done, generated_private_key;
    int encrypt_character, decrypt_character;
    int en, done;
    uint16_t p_in, q_in;
    uint32_t public_key, private_key;
    int original_character; // Transmis pe 7 biți
    char buffer[MAX_BUFFER_SIZE];
    int encrypted_buffer[MAX_BUFFER_SIZE];
    int decrypted_buffer[MAX_BUFFER_SIZE];
    int index = 0;

    // Inițializare GPIO
    XGpio_Initialize(&pregatire_p_in, XPAR_AXI_GPIO_0_BASEADDR);
    XGpio_Initialize(&pregatire_q_in, XPAR_AXI_GPIO_1_BASEADDR);
    XGpio_Initialize(&pregatire_puk, XPAR_AXI_GPIO_2_BASEADDR);
    XGpio_Initialize(&pregatire_en_generare_prk, XPAR_AXI_GPIO_3_BASEADDR);
    XGpio_Initialize(&pregatire_character, XPAR_AXI_GPIO_4_BASEADDR);
    XGpio_Initialize(&ciphertext, XPAR_AXI_GPIO_5_BASEADDR);
    XGpio_Initialize(&deciphertext, XPAR_AXI_GPIO_6_BASEADDR);
    XGpio_Initialize(&process_done, XPAR_AXI_GPIO_7_BASEADDR);
    XGpio_Initialize(&generated_private_key, XPAR_AXI_GPIO_8_BASEADDR);

    // Configurare direcție GPIO
    XGpio_SetDataDirection(&pregatire_p_in, 1, 0x0);
    XGpio_SetDataDirection(&pregatire_q_in, 1, 0x0);
    XGpio_SetDataDirection(&pregatire_puk, 1, 0x0);
    XGpio_SetDataDirection(&pregatire_en_generare_prk, 1, 0x0);
    XGpio_SetDataDirection(&pregatire_character, 1, 0x0);
    XGpio_SetDataDirection(&ciphertext, 1, 0xF);
    XGpio_SetDataDirection(&deciphertext, 1, 0xF);
    XGpio_SetDataDirection(&process_done, 1, 0xF);
    XGpio_SetDataDirection(&generated_private_key, 1, 0xF);

    init_platform();

    xil_printf("Introdu caractere (maxim %d):\r\n", MAX_BUFFER_SIZE - 1);

    while (index < MAX_BUFFER_SIZE - 1) {
        char c = inbyte();
        original_character = c & 0x7F;  // Păstrează doar 7 biți

        xil_printf("Original (8 bti binar): ");
        print_binary(original_character, 8);
        xil_printf(" ");
        xil_printf("Hexa: %02X\r\n", original_character);

        if (c == '\r') {
            char next = inbyte();
            if (next == '\n') break;
        } else if (c == '\n') {
            break;
        }

        // Scriere în GPIO-uri pentru generarea cheilor și criptare
        XGpio_DiscreteWrite(&pregatire_p_in, 1, 0b0000000000000111);
        XGpio_DiscreteWrite(&pregatire_q_in, 1, 0b0000000000001011);
        XGpio_DiscreteWrite(&pregatire_en_generare_prk, 1, 1);
        XGpio_DiscreteWrite(&pregatire_puk, 1, 0b000000000000000000000000000000111);

        XGpio_DiscreteWrite(&pregatire_character, 1, original_character);  // Trimite caracterul pe 7 biți

        // Citire rezultate criptare și decriptare
        encrypt_character = XGpio_DiscreteRead(&ciphertext, 1) & 0xFFFFFFFF;  // Păstrează 32 biți
        decrypt_character = XGpio_DiscreteRead(&deciphertext, 1) & 0xFF;     // Păstrează doar 8 biți

        done = XGpio_DiscreteRead(&process_done, 1);

        // Salvare în buffere
        buffer[index] = original_character;
        encrypted_buffer[index] = encrypt_character;
        decrypted_buffer[index] = decrypt_character;

        // Afiȟare litera curentă în format binar și hexazecimal
        xil_printf("Criptata (32 biti binar): ");
        print_binary(encrypt_character, 32);
        xil_printf(" ");
        xil_printf("Hexa: %08X\r\n", encrypt_character);

        xil_printf("Decriptata (8 biti binar): ");
        print_binary(decrypt_character, 8);
        xil_printf(" ");
        xil_printf("Hexa: %02X\r\n", decrypt_character);

        index++;
        usleep(200000);
    }

    buffer[index] = '\0';

    // Citirea cheii private
    private_key = XGpio_DiscreteRead(&generated_private_key, 1);

    // Afiȟare rezultate finale
    xil_printf("\r\nSir complet citit: ");
    for (int i = 0; i < index; i++) {
        xil_printf("%c", buffer[i]);
    }
    xil_printf("\r\n");

    xil_printf("Sir criptat (32 biti binar):\r\n");
    for (int i = 0; i < index; i++) {
        print_binary(encrypted_buffer[i], 32);
        xil_printf(" ");
    }
    xil_printf("\r\nSir criptat (hexazecimal):\r\n");
    for (int i = 0; i < index; i++) {
        xil_printf("%08X ", encrypted_buffer[i]);
    }
    xil_printf("\r\n");

    xil_printf("Sir decriptat (8 biti binar):\r\n");
    for (int i = 0; i < index; i++) {
        print_binary(decrypted_buffer[i], 8);
        xil_printf(" ");
    }
    xil_printf("\r\nSir decriptat (hexazecimal):\r\n");
    for (int i = 0; i < index; i++) {
        xil_printf("%02X ", decrypted_buffer[i]);
    }
    xil_printf("\r\n");

    // Afișare cheia privată
    xil_printf("Cheia privata (binar): ");
    print_binary(private_key, 32);
    xil_printf(" ");
    xil_printf("Cheia privata (hexazecimal): %08X\r\n", private_key);

    xil_printf("Citirea s-a terminat.\r\n");

    cleanup_platform();
    return 0;
}
