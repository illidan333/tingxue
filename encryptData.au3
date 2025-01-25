#include <Crypt.au3>
Local $text = InputBox ("text to encrypt", "enter your text to encrypt")
Local $key =  InputBox ("encryption key", "enter your encryption key")
Local $g_hKey = _Crypt_DeriveKey(StringToBinary($key), $CALG_RC4)
Local $result = _Crypt_EncryptData($text, $g_hKey, $CALG_RC4)
ConsoleWrite ($result & @CRLF)