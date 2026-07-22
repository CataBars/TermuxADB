# TermuxADB
Connecting to ADB via Termux and Termux:API on Android 11+ using wireless debugging

ENG:

RUS:
Для начала обновите пакеты termux-api
```
pkg update && pkg install termux-api
```
Затем установите последнюю версию Termux-API из F-droid \
После установки зайдите в приложение и выполните то что там написано \
Клонируйте репозиторий
```
git clone https://github.com/CataBars/TermuxADB
```
Перейдите в него и запустите pair.sh
```
cd TermuxADB && source pair.sh
```
У вас должно появиться уведомление от Termux:API

<img src="images/notification.jpg" width="300" alt="Уведомление">

Зайдите в настройки и передите в "Система" > "Для разработчиков" > "Отладка по Wi-FI" (Включить)

<img src="images/wireless.jpg" width="300" alt="Отладка по Wi-Fi">

Нажмите на "Pair device with pairing code" \

<img src="images/code.jpg" width="300" alt="Айпи и код">

Полученный айпи, порт и 6-значный код введите в уведомление в формате: \
[IP]:[PORT] [CODE] \
Если вы ввели все правильно, то должно в терминале должно быть \
"Successfully pairing to [IP]:[PORT] [CODE] ... " \
Теперь ваше устройство сохранено навсегда, если вы сами не отзовете. \
Далее напишите 
```
adb connect [IP]:[PORT]
```
Где вместо [IP]:[PORT] должно стоят то что находится под "Device name" \
Далее напишите 
```
adb shell
```
И вы в Android Brigde Debug (ADB) \
Для выхода 
```
exit
```
