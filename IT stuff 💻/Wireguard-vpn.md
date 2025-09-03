

wireguard-vpn/
├── docker-compose.yml
├── Dockerfile
├── config/
│   └── (будут храниться .conf и ключи)
├── scripts/
│   └── generate.sh   ← скрипт генерации ключей
└── wg-entrypoint.sh  ← точка входа, запускает wg внутри контейнера
