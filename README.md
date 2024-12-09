# Effective_mobile_test_task

Установка:
1. Добавить файлы test_monior.service и test_monitor.timer в директорию /etc/systemd/system
2. Создать директорию /etc/test_process_monitor и положить в нее файл скрипта test_process_monitor.sh
3. Добавить файлу скрипта право на исполнение с помощью команды chmod +x /etc/test_process_monitor/test_process_monitor.sh
4. Перезагрузить конфигурацию системного менеджера командой systemctl daemon-reload
5. Активировать и запустить системный таймер командой systemctl enable test_monitor.timer &  systemctl start test_monitor.timer
