#!/usr/bin/env python3

import configparser
import sys
import requests
from decimal import Decimal
from os.path import expanduser

config = configparser.ConfigParser()
config_file_dir = "~/dotfiles/.config/polybar/scripts/crypto-config"
with open(expanduser(config_file_dir), 'r', encoding='utf-8') as f:
    config.read_file(f)


currencies = [x for x in config.sections() if x != 'general']
config_display = config['general']['display']
config_base_currency = config['general']['base_currency']
config_symbol = config["general"]['symbol']
config_padding = int(config["general"]['padding'])


for currency in currencies:
    api_link = f'https://api.coingecko.com/api/v3/coins/{currency}'
    json = requests.get(api_link,).json()

    get_symbol = json["symbol"]
    get_local_price = json["market_data"]["current_price"][f'{config_base_currency.lower()}']
    get_change_24 = json["market_data"]['price_change_percentage_24h']


    symbol = ""
    local_price = round(Decimal(get_local_price), 2)
    change_24 = float(get_change_24)


    if(config_symbol.lower() == "true"):
        symbol = get_symbol.upper() + " "

    if config_display == 'both' or config_display == None:
        sys.stdout.write(f'{symbol}{local_price} ({change_24:.2f}%)')

    if config_display == 'percentage':
        sys.stdout.write(f'{symbol}{change_24:+}%')

    if config_display == 'price':
        sys.stdout.write(f'{symbol}{local_price}')

    if(currency != currencies[-1]):
        sys.stdout.write(f'{" " * config_padding}|{" " * config_padding}')
