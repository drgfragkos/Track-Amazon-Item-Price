#!/bin/bash

## getAmazonItemPrice_simple.sh -- A simple bash script to be used for those who want to build    ##
##                                 their own price tracking applications for Amazon items.        ##
##                                 Can find the price from Amazon sites in different countries    ##
##                                 that use different currency. e.g. £, $, USD, EUR, AED, etc.    ##
##                                                                                                ##
## You may modify, reuse and distribute the code freely as long as it is referenced back          ##
## to the author using the following line: ..based on getAmazonItemPrice_simple.sh by @drgfragkos ##
##                                                                                                ##


ItemDesc="Echo Dot (3rd Gen) - Smart speaker with Alexa - Charcoal Fabric"
URL="https://www.amazon.co.uk/Echo-Dot-3rd-Gen-Charcoal/dp/B07PJV3JPR/"

ItemPrice=$(lynx -source "$URL" | grep priceBlockBuyingPriceString | grep -E -o '(AED|USD|EUR|€|\$|£)\s?(\d{1,}(?:[.,]\d{3})*(?:[.,]\d{2}))|(\d{1,3}(?:[.,]\d{3})*(?:[.,]\d{2})?)\s?(USD|EUR)')
x=$(printf '.%.0s' {1..12})
echo $ItemDesc $x $ItemPrice

