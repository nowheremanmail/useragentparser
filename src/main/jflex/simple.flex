package com.dag.useragents;

import java_cup.runtime.Symbol;

%%

%cup
%public
%debug
%ignorecase
%implements sym
%line
%column



%{   
    private Symbol symbol(int type, String value) {
        return new Symbol(type, new Yytoken(value, yycolumn+1));
    }
%}


%%

";"             { return symbol(DOT_COMMA, yytext()); }
","             { return symbol(COMMA, yytext()); }
"("             { return symbol(LPAR, yytext()); }
")"             { return symbol(RPAR, yytext()); }

"["             { return symbol(LPARS, yytext()); }
"]"             { return symbol(RPARS, yytext()); }


"/"             { return symbol(DIV, yytext()); }

"MOZILLA"       { return symbol(MOZILLA, yytext()); }
"DALVIK"        { return symbol(DALVIK, yytext()); }
"OPERA"        { return symbol(OPERA, yytext()); }

"VERSION"        { return symbol(VERSION, yytext()); }
"MOBILE"        { return symbol(MOBILE, yytext()); }
"LG"            { return symbol(LG, yytext()); }
"LGE"            { return symbol(LGE, yytext()); }
"PHILIPS"            { return symbol(PHILIPS, yytext()); }
"BROWSER"       { return symbol(BROWSER, yytext()); }
"UNKNOWN"       { return symbol(UNKNOWN, yytext()); }

"FREEBSD" { return symbol(FREEBSD, yytext()); }
"VIERA"         { return symbol(VIERA, yytext()); }
"NETCAST"         { return symbol(NETCAST, yytext()); }
"NUC"         { return symbol(NUC, yytext()); }

"LINUX"         { return symbol(LINUX, yytext()); }
"ANDROID"       { return symbol(ANDROID, yytext()); }
"TIZEN"         { return symbol(TIZEN, yytext()); }
"BUILD"         { return symbol(BUILD, yytext()); }
"WEBOS"         { return symbol(WEBOS, yytext()); }
"TVOS"          { return symbol(TVOS, yytext()); }
"GEMOBAPP_IOS"  { return symbol(GEMOBAPP_IOS, yytext()); }
"GLBMOBAPP_IOS" { return symbol(GLBMOBAPP_IOS, yytext()); }
"GSHOWMOBAPP_IOS" { return symbol(GSHOWMOBAPP_IOS, yytext()); }
"WV"            { return symbol(WV, yytext()); }
"XDKANDROIDWEBVIEW"    { return symbol(XDKANDROIDWEBVIEW, yytext()); }

"IPAD"          {return symbol(IPAD,yytext()); }
"IPOD TOUCH"          {return symbol(IPOD,yytext()); }
"IPHONE"          {return symbol(IPHONE,yytext()); }
//"APPLE"          {return symbol(APPLE,yytext()); }
"TV"          {return symbol(TV,yytext()); }
"PLAYSTATION"       {return symbol(PLAYSTATION,yytext()); }

"CPU"           {return symbol(CPU,yytext()); }
"OS"    {return symbol(OS,yytext()); }
"IOS"    {return symbol(IOS,yytext()); }
"LIKE"  {return symbol(LIKE,yytext()); }
"MAC"   {return symbol(MAC,yytext()); }
"OS"    {return symbol(OS,yytext()); }
"SMARTTV"    {return symbol(SMARTTV,yytext()); }
//"X"      {return symbol(X,yytext()); }
//"U"      {return symbol(U,yytext()); }

"WINDOWS"            {return symbol(WINDOWS, yytext()); }
"MSIE"              {return symbol(MSIE, yytext()); }
"NT"            {return symbol(NT, yytext()); }
"MACINTOSH"         {return symbol(MACINTOSH, yytext()); }

"SMART-TV"         {return symbol(SMART_TV, yytext()); } // ??
//"SMARTHUB"         {return symbol(SMARTHUB, yytext()); } // ??
"DIRECTFB"         {return symbol(DIRECTFB, yytext()); }

//"ARMV7L"            {return symbol(ARMV7L, yytext()); }
"X11"            {return symbol(X11, yytext()); }
"XBOX"            {return symbol(XBOX, yytext()); }

"WIN64"            {return symbol(WIN64, yytext()); }
"WOW64"            {return symbol(WOW64, yytext()); }
"WIN32"            {return symbol(WIN32, yytext()); }
"X32"            {return symbol(X32, yytext()); }
"X64"            {return symbol(X64, yytext()); }
"CROS"           {return symbol(CROS, yytext()); }

"SONY"              {return symbol(SONY, yytext()); }
"%CATEGORY"         {return symbol(CATEGORY, yytext()); }
"HBBTV"                 {return symbol(HBBTV, yytext()); }


//"RV:"[0-9]+\.[0-9]+            {return symbol(PLATFORM, yytext()); }
//"TRIDENT/"[0-9]+\.[0-9]+            {return symbol(PLATFORM, yytext()); }

"CHROME"            {return symbol(CHROME, yytext()); }
"CRKEY"            {return symbol(CRKEY, yytext()); }
"SAFARI"         {return symbol(SAFARI, yytext()); }
"APPLEWEBKIT"   {return symbol(APPLEWEBKIT, yytext()); }
"GECKO"   {return symbol(GECKO, yytext()); }
"FIREFOX"   {return symbol(FIREFOX, yytext()); }
"MODEL"   {return symbol(MODEL, yytext()); }

"BEIN CONNECT"  {return symbol(CUSTOM,yytext()); }
"NOWSOCCER" {return symbol(CUSTOM,yytext()); }
"RAKUTEN-VIDEO-IOS" {return symbol(CUSTOM,yytext()); }
"PROXIMUS TV" {return symbol(CUSTOM,yytext()); }
"40/29 NEWS"    {return symbol(CUSTOM,yytext()); }
"5SPORTS"       {return symbol(CUSTOM,yytext()); }
"6PLAY"         {return symbol(CUSTOM,yytext()); }
"APPPLAYIOS"    {return symbol(CUSTOM,yytext()); }
"BLOOMBERG-TVOS"    {return symbol(CUSTOM,yytext()); }
"BOOM"          {return symbol(CUSTOM,yytext()); }
"APPLE TV"      {return symbol(APPLE_TV,yytext()); }

"APPLETV"       {return symbol(APPLE_TV,yytext()); }
"SE.HARBOURFRONT.VIASATONDEMAND" {return symbol(HARBOURFRONT,yytext()); }

"APPPLAYIOS"    {return symbol(CUSTOM,yytext()); }
"AMCMOBILEIOS"  {return symbol(CUSTOM,yytext()); }
"APPLE TV - TVOS (LIGHTBOXATV" {return symbol(CUSTOM,yytext()); }
"DIGITALCONCERTHALL"    {return symbol(CUSTOM,yytext()); }
"DOC CLUB"      {return symbol(CUSTOM,yytext()); }
"DRAMAFEVER"    {return symbol(CUSTOM,yytext()); }
"F1"            {return symbol(CUSTOM,yytext()); }
"TV4PLAY"        {return symbol(CUSTOM,yytext()); }
"SONYLIV"          {return symbol(CUSTOM,yytext()); }
"SHAHID-IOS_RELEASE" {return symbol(CUSTOM,yytext()); }
"(NULL)"        {return symbol(CUSTOM,yytext()); }
"TOGGLE"         {return symbol(CUSTOM,yytext()); }
"SKY"            {return symbol(CUSTOM,yytext()); }
"MYTV"          {return symbol(CUSTOM,yytext()); }
"FILMIN"        {return symbol(CUSTOM,yytext()); }
"FLOOXER"       {return symbol(CUSTOM,yytext()); }
"FOX PLAY"      {return symbol(CUSTOM,yytext()); }
"FOX"           {return symbol(CUSTOM,yytext()); }
"FOXPLUS"       {return symbol(CUSTOM,yytext()); }
"TVNZ-TV"       {return symbol(CUSTOM,yytext()); }
"STARZ PLAY"       {return symbol(CUSTOM,yytext()); }
"NOWPLAYERX"       {return symbol(CUSTOM,yytext()); }
"MY5"       {return symbol(CUSTOM,yytext()); }
"SHUDDER"       {return symbol(CUSTOM,yytext()); }
"ONDEMAND"       {return symbol(CUSTOM,yytext()); }
"MYTF1"       {return symbol(CUSTOM,yytext()); }

"FOXSPORTS"       {return symbol(CUSTOM,yytext()); }
"GAIA TVOS APP" {return symbol(CUSTOM,yytext()); }
"GAIA"          {return symbol(CUSTOM,yytext()); }
"GET TV"          {return symbol(CUSTOM,yytext()); }
"HUDL"          {return symbol(CUSTOM,yytext()); }
"HOLLYSTAR"     {return symbol(CUSTOM,yytext()); }
"IPADAPP"       {return symbol(CUSTOM,yytext()); }
"IPHONEAPP"     {return symbol(CUSTOM,yytext()); }
"KCCI"          {return symbol(CUSTOM,yytext()); }
"KCRA"          {return symbol(CUSTOM,yytext()); }
"KETV"          {return symbol(CUSTOM,yytext()); }
"KMBC"          {return symbol(CUSTOM,yytext()); }
"KOAT"          {return symbol(CUSTOM,yytext()); }
"KOCO"          {return symbol(CUSTOM,yytext()); }
"KSBW"          {return symbol(CUSTOM,yytext()); }
"LCI"          {return symbol(CUSTOM,yytext()); }
"LEBARA PLAY"   {return symbol(CUSTOM,yytext()); }
"LIGHTBOX"      {return symbol(CUSTOM,yytext()); }
"LIGHTBOXATV"   {return symbol(CUSTOM,yytext()); }
"LYNX"          {return symbol(CUSTOM,yytext()); }
"MEDIACORD"     {return symbol(CUSTOM,yytext()); }
"MOLOTOV"     {return symbol(MOLOTOV,yytext()); }
"ELECTRON"     {return symbol(ELECTRON,yytext()); }
"MOTOGP"     {return symbol(CUSTOM,yytext()); }
"MOVISTARGO"     {return symbol(CUSTOM,yytext()); }
"MOVISTARPLAY"     {return symbol(CUSTOM,yytext()); }
"MOVISTARTV-COSTARICA" {return symbol(CUSTOM,yytext()); }
"MOVISTARTV-NICARAGUA" {return symbol(CUSTOM,yytext()); }
"MOVISTARTV-PANAMA" {return symbol(CUSTOM,yytext()); }
"MOVISTARTV-PERU" {return symbol(CUSTOM,yytext()); }
"ECUADOR" {return symbol(CUSTOM,yytext()); }
"EIPLUS" {return symbol(CUSTOM,yytext()); }
"FILMINCAT" {return symbol(CUSTOM,yytext()); }
"FILMIN_LATINO" {return symbol(CUSTOM,yytext()); }
"WYFF"              {return symbol(CUSTOM,yytext()); }
"WXII"              {return symbol(CUSTOM,yytext()); }
"WVTM"              {return symbol(CUSTOM,yytext()); }
"WUAKI"              {return symbol(CUSTOM,yytext()); }
"WUAKI.TV PLAYER"    {return symbol(CUSTOM,yytext()); }
"UNIREST-JAVA"          {return symbol(UNIREST_JAVA,yytext()); }
"WTAE"               {return symbol(CUSTOM,yytext()); }
"WPBF"              {return symbol(CUSTOM,yytext()); }
"WMUR"              {return symbol(CUSTOM,yytext()); }
"WMTW"              {return symbol(CUSTOM,yytext()); }
"WLWT"              {return symbol(CUSTOM,yytext()); }
"WLKY"               {return symbol(CUSTOM,yytext()); }
"WISN"              {return symbol(CUSTOM,yytext()); }
"WJCL"                {return symbol(CUSTOM,yytext()); }
"WGAL"                {return symbol(CUSTOM,yytext()); }
"WESH"                {return symbol(CUSTOM,yytext()); }
"WDSU"                {return symbol(CUSTOM,yytext()); }
"WCVB"                {return symbol(CUSTOM,yytext()); }
"WBAL"                {return symbol(CUSTOM,yytext()); }
"MEDIACORP"                {return symbol(CUSTOM,yytext()); }
"ATRESPLAYERTV"                {return symbol(CUSTOM,yytext()); }

"WARNERARCHIVE"         {return symbol(CUSTOM,yytext()); }
"WAPT"         {return symbol(CUSTOM,yytext()); }
"VIVOPLAY"         {return symbol(CUSTOM,yytext()); }
"AMCMOBILEIOS"         {return symbol(CUSTOM,yytext()); }
"GEMIUSSDK"         {return symbol(GEMIUSSDK,yytext()); }
"KINDER-TABLET-1.0-WELTBILD-MOZILLA" {return symbol(KINDER_MOZILLA,yytext()); }

"VIAPLAY"         {return symbol(VIAPLAY,yytext()); }
"VIAFREE"         {return symbol(VIAFREE,yytext()); }
"HLNAPP"         {return symbol(HLNAPP,yytext()); }
"EKIOH"                      {return symbol(EKIOH,yytext()); }
"ROKU"                      {return symbol(ROKU,yytext()); }
"DEVICEUID:" {return symbol(DEVICEUID,yytext()); }

([a-zA-Z][a-zA-Z])?[-_][a-zA-Z][a-zA-Z] { return symbol(LANGUAGE,yytext()); }

[+a-zA-Z#]([^,;()/\[\] ])* { return symbol(LITERAL,yytext()); }
[0-9]([^,;()/\[\] ])* { return symbol(NUMBER,yytext()); }

\([a-zA-Z0-9]+\) { return symbol(LITERAL,yytext()); }

[\ \t\b\f\r\n]+ { /* eat whitespace */ }
.               { throw new Error("Unexpected character ["+yytext()+"]"); }
