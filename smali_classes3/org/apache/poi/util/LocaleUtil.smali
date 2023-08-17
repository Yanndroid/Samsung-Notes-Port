.class public final Lorg/apache/poi/util/LocaleUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CHARSET_1252:Ljava/nio/charset/Charset;

.field public static final TIMEZONE_UTC:Ljava/util/TimeZone;

.field private static final userLocale:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation
.end field

.field private static final userTimeZone:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/TimeZone;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/util/LocaleUtil;->TIMEZONE_UTC:Ljava/util/TimeZone;

    const-string v0, "CP1252"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/util/LocaleUtil;->CHARSET_1252:Ljava/nio/charset/Charset;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/apache/poi/util/LocaleUtil;->userTimeZone:Ljava/lang/ThreadLocal;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/apache/poi/util/LocaleUtil;->userLocale:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLocaleCalendar()Ljava/util/Calendar;
    .locals 1

    invoke-static {}, Lorg/apache/poi/util/LocaleUtil;->getUserTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/util/LocaleUtil;->getLocaleCalendar(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method public static getLocaleCalendar(III)Ljava/util/Calendar;
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v0, p0

    move v1, p1

    move v2, p2

    invoke-static/range {v0 .. v5}, Lorg/apache/poi/util/LocaleUtil;->getLocaleCalendar(IIIIII)Ljava/util/Calendar;

    move-result-object p0

    return-object p0
.end method

.method public static getLocaleCalendar(IIIIII)Ljava/util/Calendar;
    .locals 8

    invoke-static {}, Lorg/apache/poi/util/LocaleUtil;->getLocaleCalendar()Ljava/util/Calendar;

    move-result-object v7

    move-object v0, v7

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    const/16 p0, 0xe

    invoke-virtual {v7, p0}, Ljava/util/Calendar;->clear(I)V

    return-object v7
.end method

.method public static getLocaleCalendar(Ljava/util/TimeZone;)Ljava/util/Calendar;
    .locals 1

    invoke-static {}, Lorg/apache/poi/util/LocaleUtil;->getUserLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p0

    return-object p0
.end method

.method public static getLocaleFromLCID(I)Ljava/lang/String;
    .locals 1

    const v0, 0xffff

    and-int/2addr p0, v0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_c

    const/4 v0, 0x2

    if-eq p0, v0, :cond_b

    const/4 v0, 0x3

    if-eq p0, v0, :cond_a

    const/4 v0, 0x4

    if-eq p0, v0, :cond_9

    const/4 v0, 0x5

    if-eq p0, v0, :cond_8

    const/4 v0, 0x6

    if-eq p0, v0, :cond_7

    const/4 v0, 0x7

    if-eq p0, v0, :cond_6

    const/16 v0, 0x803

    if-eq p0, v0, :cond_5

    const/16 v0, 0x804

    if-eq p0, v0, :cond_4

    const/16 v0, 0x809

    if-eq p0, v0, :cond_3

    const/16 v0, 0x80a

    if-eq p0, v0, :cond_2

    const/16 v0, 0x810

    if-eq p0, v0, :cond_1

    const/16 v0, 0x811

    if-eq p0, v0, :cond_0

    sparse-switch p0, :sswitch_data_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    packed-switch p0, :pswitch_data_3

    packed-switch p0, :pswitch_data_4

    packed-switch p0, :pswitch_data_5

    const-string p0, "invalid"

    return-object p0

    :pswitch_0
    const-string p0, "quc-CO"

    return-object p0

    :pswitch_1
    const-string p0, "ku-Arab-IQ"

    return-object p0

    :pswitch_2
    const-string p0, "gd-GB"

    return-object p0

    :pswitch_3
    const-string p0, "khb-Talu-CN"

    return-object p0

    :pswitch_4
    const-string/jumbo p0, "tdd-Tale-CN"

    return-object p0

    :pswitch_5
    const-string/jumbo p0, "zh-yue-HK"

    return-object p0

    :pswitch_6
    const-string p0, "plt-MG"

    return-object p0

    :pswitch_7
    const-string p0, "prs-AF"

    return-object p0

    :pswitch_8
    const-string/jumbo p0, "wo-SN"

    return-object p0

    :pswitch_9
    const-string p0, "rw-RW"

    return-object p0

    :pswitch_a
    const-string p0, "qut-GT"

    return-object p0

    :pswitch_b
    const-string p0, "sah-RU"

    return-object p0

    :pswitch_c
    const-string p0, "gsw-FR"

    return-object p0

    :pswitch_d
    const-string p0, "co-FR"

    return-object p0

    :pswitch_e
    const-string p0, "oc-FR"

    return-object p0

    :pswitch_f
    const-string p0, "mi-NZ"

    return-object p0

    :pswitch_10
    const-string/jumbo p0, "ug-CN"

    return-object p0

    :pswitch_11
    const-string p0, "arn-CL"

    return-object p0

    :pswitch_12
    const-string p0, "pap-x029"

    return-object p0

    :pswitch_13
    const-string p0, "ii-CN"

    return-object p0

    :pswitch_14
    const-string/jumbo p0, "so-SO"

    return-object p0

    :pswitch_15
    const-string p0, "la-Latn"

    return-object p0

    :pswitch_16
    const-string p0, "haw-US"

    return-object p0

    :pswitch_17
    const-string p0, "gn-PY"

    return-object p0

    :pswitch_18
    const-string/jumbo p0, "ti-ET"

    return-object p0

    :pswitch_19
    const-string p0, "om-Ethi-ET"

    return-object p0

    :pswitch_1a
    const-string p0, "kr-NG"

    return-object p0

    :pswitch_1b
    const-string p0, "ig-NG"

    return-object p0

    :pswitch_1c
    const-string p0, "kl-GL"

    return-object p0

    :pswitch_1d
    const-string p0, "lb-LU"

    return-object p0

    :pswitch_1e
    const-string p0, "ba-RU"

    return-object p0

    :pswitch_1f
    const-string p0, "nso-ZA"

    return-object p0

    :pswitch_20
    const-string p0, "quz-BO"

    return-object p0

    :pswitch_21
    const-string/jumbo p0, "yo-NG"

    return-object p0

    :pswitch_22
    const-string p0, "ibb-NG"

    return-object p0

    :pswitch_23
    const-string p0, "ha-Latn-NG"

    return-object p0

    :pswitch_24
    const-string p0, "fuv-NG"

    return-object p0

    :pswitch_25
    const-string p0, "bin-NG"

    return-object p0

    :pswitch_26
    const-string p0, "dv-MV"

    return-object p0

    :pswitch_27
    const-string p0, "fil-PH"

    return-object p0

    :pswitch_28
    const-string p0, "ps-AF"

    return-object p0

    :pswitch_29
    const-string p0, "fy-NL"

    return-object p0

    :pswitch_2a
    const-string p0, "ne-NP"

    return-object p0

    :pswitch_2b
    const-string p0, "ks-Arab"

    return-object p0

    :pswitch_2c
    const-string/jumbo p0, "tzm-Arab-MA"

    return-object p0

    :pswitch_2d
    const-string p0, "am-ET"

    return-object p0

    :pswitch_2e
    const-string p0, "iu-Cans-CA"

    return-object p0

    :pswitch_2f
    const-string p0, "chr-Cher-US"

    return-object p0

    :pswitch_30
    const-string/jumbo p0, "si-LK"

    return-object p0

    :pswitch_31
    const-string/jumbo p0, "syr-SY"

    return-object p0

    :pswitch_32
    const-string p0, "sd-Deva-IN"

    return-object p0

    :pswitch_33
    const-string p0, "mni-IN"

    return-object p0

    :pswitch_34
    const-string p0, "kok-IN"

    return-object p0

    :pswitch_35
    const-string p0, "gl-ES"

    return-object p0

    :pswitch_36
    const-string p0, "my-MM"

    return-object p0

    :pswitch_37
    const-string p0, "lo-LA"

    return-object p0

    :pswitch_38
    const-string p0, "km-KH"

    return-object p0

    :pswitch_39
    const-string p0, "cy-GB"

    return-object p0

    :pswitch_3a
    const-string p0, "bo-CN"

    return-object p0

    :pswitch_3b
    const-string p0, "mn-MN"

    return-object p0

    :pswitch_3c
    const-string p0, "sa-IN"

    return-object p0

    :pswitch_3d
    const-string p0, "mr-IN"

    return-object p0

    :pswitch_3e
    const-string p0, "as-IN"

    return-object p0

    :pswitch_3f
    const-string p0, "ml-IN"

    return-object p0

    :pswitch_40
    const-string p0, "kn-IN"

    return-object p0

    :pswitch_41
    const-string/jumbo p0, "te-IN"

    return-object p0

    :pswitch_42
    const-string/jumbo p0, "ta-IN"

    return-object p0

    :pswitch_43
    const-string p0, "or-IN"

    return-object p0

    :pswitch_44
    const-string p0, "gu-IN"

    return-object p0

    :pswitch_45
    const-string p0, "pa-IN"

    return-object p0

    :pswitch_46
    const-string p0, "bn-IN"

    return-object p0

    :pswitch_47
    const-string/jumbo p0, "tt-RU"

    return-object p0

    :pswitch_48
    const-string/jumbo p0, "uz-Latn-UZ"

    return-object p0

    :pswitch_49
    const-string/jumbo p0, "tk-TM"

    return-object p0

    :pswitch_4a
    const-string/jumbo p0, "sw-KE"

    return-object p0

    :pswitch_4b
    const-string p0, "ky-KG"

    return-object p0

    :pswitch_4c
    const-string p0, "kk-KZ"

    return-object p0

    :pswitch_4d
    const-string p0, "ms-MY"

    return-object p0

    :pswitch_4e
    const-string/jumbo p0, "yi-Hebr"

    return-object p0

    :pswitch_4f
    const-string p0, "se-NO"

    return-object p0

    :pswitch_50
    const-string p0, "mt-MT"

    return-object p0

    :pswitch_51
    const-string p0, "hi-IN"

    return-object p0

    :pswitch_52
    const-string p0, "fo-FO"

    return-object p0

    :pswitch_53
    const-string p0, "ka-GE"

    return-object p0

    :pswitch_54
    const-string p0, "af-ZA"

    return-object p0

    :pswitch_55
    const-string/jumbo p0, "zu-ZA"

    return-object p0

    :pswitch_56
    const-string/jumbo p0, "xh-ZA"

    return-object p0

    :pswitch_57
    const-string/jumbo p0, "ve-ZA"

    return-object p0

    :pswitch_58
    const-string/jumbo p0, "tn-ZA"

    return-object p0

    :pswitch_59
    const-string/jumbo p0, "ts-ZA"

    return-object p0

    :pswitch_5a
    const-string/jumbo p0, "st-ZA"

    return-object p0

    :pswitch_5b
    const-string p0, "mk-MK"

    return-object p0

    :pswitch_5c
    const-string p0, "hsb-DE"

    return-object p0

    :pswitch_5d
    const-string p0, "eu-ES"

    return-object p0

    :pswitch_5e
    const-string p0, "az-Latn-AZ"

    return-object p0

    :pswitch_5f
    const-string p0, "hy-AM"

    return-object p0

    :pswitch_60
    const-string/jumbo p0, "vi-VN"

    return-object p0

    :pswitch_61
    const-string p0, "fa-IR"

    return-object p0

    :pswitch_62
    const-string/jumbo p0, "tg-Cyrl-TJ"

    return-object p0

    :pswitch_63
    const-string p0, "lt-LT"

    return-object p0

    :pswitch_64
    const-string p0, "lv-LV"

    return-object p0

    :pswitch_65
    const-string p0, "et-EE"

    return-object p0

    :pswitch_66
    const-string/jumbo p0, "sl-SI"

    return-object p0

    :pswitch_67
    const-string p0, "be-BY"

    return-object p0

    :pswitch_68
    const-string/jumbo p0, "uk-UA"

    return-object p0

    :pswitch_69
    const-string p0, "id-ID"

    return-object p0

    :pswitch_6a
    const-string/jumbo p0, "ur-PK"

    return-object p0

    :pswitch_6b
    const-string/jumbo p0, "tr-TR"

    return-object p0

    :pswitch_6c
    const-string/jumbo p0, "th-TH"

    return-object p0

    :pswitch_6d
    const-string/jumbo p0, "sv-SE"

    return-object p0

    :pswitch_6e
    const-string/jumbo p0, "sq-AL"

    return-object p0

    :pswitch_6f
    const-string/jumbo p0, "sk-SK"

    return-object p0

    :pswitch_70
    const-string p0, "hr-HR"

    return-object p0

    :pswitch_71
    const-string p0, "ru-RU"

    return-object p0

    :pswitch_72
    const-string p0, "ro-RO"

    return-object p0

    :pswitch_73
    const-string p0, "rm-CH"

    return-object p0

    :pswitch_74
    const-string p0, "pt-BR"

    return-object p0

    :pswitch_75
    const-string p0, "pl-PL"

    return-object p0

    :pswitch_76
    const-string p0, "nb-NO"

    return-object p0

    :pswitch_77
    const-string p0, "nl-NL"

    return-object p0

    :pswitch_78
    const-string p0, "ko-KR"

    return-object p0

    :pswitch_79
    const-string p0, "ja-JP"

    return-object p0

    :pswitch_7a
    const-string p0, "it-IT"

    return-object p0

    :pswitch_7b
    const-string p0, "is-IS"

    return-object p0

    :pswitch_7c
    const-string p0, "hu-HU"

    return-object p0

    :pswitch_7d
    const-string p0, "he-IL"

    return-object p0

    :pswitch_7e
    const-string p0, "fr-FR"

    return-object p0

    :pswitch_7f
    const-string p0, "fi-FI"

    return-object p0

    :pswitch_80
    const-string p0, "es-ES_tradnl"

    return-object p0

    :pswitch_81
    const-string p0, "en-US"

    return-object p0

    :pswitch_82
    const-string p0, "el-GR"

    return-object p0

    :pswitch_83
    const-string p0, "de-DE"

    return-object p0

    :pswitch_84
    const-string p0, "da-DK"

    return-object p0

    :pswitch_85
    const-string p0, "cs-CZ"

    return-object p0

    :pswitch_86
    const-string/jumbo p0, "zh-TW"

    return-object p0

    :pswitch_87
    const-string p0, "ca-ES"

    return-object p0

    :pswitch_88
    const-string p0, "bg-BG"

    return-object p0

    :pswitch_89
    const-string p0, "ar-SA"

    return-object p0

    :pswitch_8a
    const-string p0, "quc"

    return-object p0

    :pswitch_8b
    const-string p0, "ku"

    return-object p0

    :pswitch_8c
    const-string p0, "gd"

    return-object p0

    :pswitch_8d
    const-string/jumbo p0, "wo"

    return-object p0

    :pswitch_8e
    const-string p0, "rw"

    return-object p0

    :pswitch_8f
    const-string p0, "qut"

    return-object p0

    :pswitch_90
    const-string p0, "sah"

    return-object p0

    :pswitch_91
    const-string p0, "gsw"

    return-object p0

    :pswitch_92
    const-string p0, "co"

    return-object p0

    :pswitch_93
    const-string p0, "oc"

    return-object p0

    :pswitch_94
    const-string p0, "mi"

    return-object p0

    :pswitch_95
    const-string/jumbo p0, "ug"

    return-object p0

    :sswitch_0
    const-string p0, "ku-Arab"

    return-object p0

    :sswitch_1
    const-string p0, "ha-Latn"

    return-object p0

    :sswitch_2
    const-string p0, "ff-Latn"

    return-object p0

    :sswitch_3
    const-string/jumbo p0, "tzm-Latn"

    return-object p0

    :sswitch_4
    const-string p0, "iu-Latn"

    return-object p0

    :sswitch_5
    const-string p0, "chr-Cher"

    return-object p0

    :sswitch_6
    const-string p0, "sd-Arab"

    return-object p0

    :sswitch_7
    const-string p0, "mn-Mong"

    return-object p0

    :sswitch_8
    const-string p0, "pa-Arab"

    return-object p0

    :sswitch_9
    const-string/jumbo p0, "uz-Latn"

    return-object p0

    :sswitch_a
    const-string/jumbo p0, "smj"

    return-object p0

    :sswitch_b
    const-string p0, "dsb"

    return-object p0

    :sswitch_c
    const-string/jumbo p0, "tg-Cyrl"

    return-object p0

    :sswitch_d
    const-string/jumbo p0, "sr"

    return-object p0

    :sswitch_e
    const-string p0, "nb"

    return-object p0

    :sswitch_f
    const-string/jumbo p0, "zh-Hant"

    return-object p0

    :sswitch_10
    const-string p0, "iu-Cans"

    return-object p0

    :sswitch_11
    const-string p0, "mn-Cyrl"

    return-object p0

    :sswitch_12
    const-string/jumbo p0, "uz-Cyrl"

    return-object p0

    :sswitch_13
    const-string/jumbo p0, "sma"

    return-object p0

    :sswitch_14
    const-string p0, "az-Latn"

    return-object p0

    :sswitch_15
    const-string p0, "bs"

    return-object p0

    :sswitch_16
    const-string p0, "nn"

    return-object p0

    :sswitch_17
    const-string/jumbo p0, "zh"

    return-object p0

    :sswitch_18
    const-string/jumbo p0, "sms"

    return-object p0

    :sswitch_19
    const-string p0, "az-Cyrl"

    return-object p0

    :sswitch_1a
    const-string/jumbo p0, "smn"

    return-object p0

    :sswitch_1b
    const-string/jumbo p0, "sr-Latn"

    return-object p0

    :sswitch_1c
    const-string/jumbo p0, "sr-Cyrl"

    return-object p0

    :sswitch_1d
    const-string p0, "bs-Latn"

    return-object p0

    :sswitch_1e
    const-string p0, "bs-Cyrl"

    return-object p0

    :sswitch_1f
    const-string p0, "en-YE"

    return-object p0

    :sswitch_20
    const-string p0, "en-TR"

    return-object p0

    :sswitch_21
    const-string p0, "en-KW"

    return-object p0

    :sswitch_22
    const-string p0, "en-JO"

    return-object p0

    :sswitch_23
    const-string p0, "es-US"

    return-object p0

    :sswitch_24
    const-string p0, "en-EG"

    return-object p0

    :sswitch_25
    const-string p0, "es-PR"

    return-object p0

    :sswitch_26
    const-string p0, "en-BH"

    return-object p0

    :sswitch_27
    const-string p0, "es-NI"

    return-object p0

    :sswitch_28
    const-string p0, "en-AE"

    return-object p0

    :sswitch_29
    const-string p0, "es-HN"

    return-object p0

    :sswitch_2a
    const-string p0, "en-SG"

    return-object p0

    :sswitch_2b
    const-string p0, "ar-145"

    return-object p0

    :sswitch_2c
    const-string p0, "es-SV"

    return-object p0

    :sswitch_2d
    const-string p0, "en-MY"

    return-object p0

    :sswitch_2e
    const-string p0, "ar-Ploc-SA"

    return-object p0

    :sswitch_2f
    const-string p0, "es-BO"

    return-object p0

    :sswitch_30
    const-string p0, "en-IN"

    return-object p0

    :sswitch_31
    const-string p0, "ar-QA"

    return-object p0

    :sswitch_32
    const-string p0, "fr-HT"

    return-object p0

    :sswitch_33
    const-string p0, "es-PY"

    return-object p0

    :sswitch_34
    const-string p0, "en-HK"

    return-object p0

    :sswitch_35
    const-string p0, "ar-BH"

    return-object p0

    :sswitch_36
    const-string p0, "fr-MA"

    return-object p0

    :sswitch_37
    const-string p0, "es-UY"

    return-object p0

    :sswitch_38
    const-string p0, "en-ID"

    return-object p0

    :sswitch_39
    const-string p0, "ar-AE"

    return-object p0

    :sswitch_3a
    const-string p0, "fr-ML"

    return-object p0

    :sswitch_3b
    const-string p0, "es-CL"

    return-object p0

    :sswitch_3c
    const-string p0, "en-PH"

    return-object p0

    :sswitch_3d
    const-string p0, "ar-KW"

    return-object p0

    :sswitch_3e
    const-string/jumbo p0, "sr-Cyrl-ME"

    return-object p0

    :sswitch_3f
    const-string p0, "fr-CI"

    return-object p0

    :sswitch_40
    const-string p0, "es-EC"

    return-object p0

    :sswitch_41
    const-string p0, "en-ZW"

    return-object p0

    :sswitch_42
    const-string p0, "ar-LB"

    return-object p0

    :sswitch_43
    const-string/jumbo p0, "sr-Latn-ME"

    return-object p0

    :sswitch_44
    const-string p0, "fr-CM"

    return-object p0

    :sswitch_45
    const-string p0, "es-AR"

    return-object p0

    :sswitch_46
    const-string p0, "en-TT"

    return-object p0

    :sswitch_47
    const-string p0, "ar-JO"

    return-object p0

    :sswitch_48
    const-string/jumbo p0, "sr-Cyrl-RS"

    return-object p0

    :sswitch_49
    const-string p0, "fr-SN"

    return-object p0

    :sswitch_4a
    const-string p0, "es-PE"

    return-object p0

    :sswitch_4b
    const-string p0, "en-BZ"

    return-object p0

    :sswitch_4c
    const-string p0, "ar-SY"

    return-object p0

    :sswitch_4d
    const-string/jumbo p0, "smn-FI"

    return-object p0

    :sswitch_4e
    const-string/jumbo p0, "sr-Latn-RS"

    return-object p0

    :sswitch_4f
    const-string p0, "fr-CG"

    return-object p0

    :sswitch_50
    const-string p0, "es-CO"

    return-object p0

    :sswitch_51
    const-string p0, "en-029"

    return-object p0

    :sswitch_52
    const-string p0, "ar-YE"

    return-object p0

    :sswitch_53
    const-string/jumbo p0, "sms-FI"

    return-object p0

    :sswitch_54
    const-string p0, "bs-Cyrl-BA"

    return-object p0

    :sswitch_55
    const-string p0, "fr-RE"

    return-object p0

    :sswitch_56
    const-string p0, "es-VE"

    return-object p0

    :sswitch_57
    const-string p0, "en-JM"

    return-object p0

    :sswitch_58
    const-string p0, "ar-OM"

    return-object p0

    :sswitch_59
    const-string/jumbo p0, "sma-SE"

    return-object p0

    :sswitch_5a
    const-string/jumbo p0, "sr-Cyrl-BA"

    return-object p0

    :sswitch_5b
    const-string p0, "es-DO"

    return-object p0

    :sswitch_5c
    const-string p0, "en-ZA"

    return-object p0

    :sswitch_5d
    const-string p0, "ar-TN"

    return-object p0

    :sswitch_5e
    const-string/jumbo p0, "sma-NO"

    return-object p0

    :sswitch_5f
    const-string/jumbo p0, "sr-Latn-BA"

    return-object p0

    :sswitch_60
    const-string p0, "fr-MC"

    return-object p0

    :sswitch_61
    const-string p0, "es-PA"

    return-object p0

    :sswitch_62
    const-string p0, "en-IE"

    return-object p0

    :sswitch_63
    const-string p0, "ar-MA"

    return-object p0

    :sswitch_64
    const-string/jumbo p0, "smj-SE"

    return-object p0

    :sswitch_65
    const-string p0, "bs-Latn-BA"

    return-object p0

    :sswitch_66
    const-string p0, "fr-LU"

    return-object p0

    :sswitch_67
    const-string p0, "es-CR"

    return-object p0

    :sswitch_68
    const-string p0, "en-NZ"

    return-object p0

    :sswitch_69
    const-string p0, "de-LI"

    return-object p0

    :sswitch_6a
    const-string/jumbo p0, "zh-MO"

    return-object p0

    :sswitch_6b
    const-string p0, "ar-DZ"

    return-object p0

    :sswitch_6c
    const-string/jumbo p0, "smj-NO"

    return-object p0

    :sswitch_6d
    const-string p0, "hr-BA"

    return-object p0

    :sswitch_6e
    const-string p0, "fr-CH"

    return-object p0

    :sswitch_6f
    const-string p0, "es-GT"

    return-object p0

    :sswitch_70
    const-string p0, "en-CA"

    return-object p0

    :sswitch_71
    const-string p0, "de-LU"

    return-object p0

    :sswitch_72
    const-string/jumbo p0, "zh-SG"

    return-object p0

    :sswitch_73
    const-string p0, "ar-LY"

    return-object p0

    :sswitch_74
    const-string p0, "quz-PE"

    return-object p0

    :sswitch_75
    const-string/jumbo p0, "tmz-MA"

    return-object p0

    :sswitch_76
    const-string p0, "se-FI"

    return-object p0

    :sswitch_77
    const-string/jumbo p0, "sr-Cyrl-CS"

    return-object p0

    :sswitch_78
    const-string p0, "fr-CA"

    return-object p0

    :sswitch_79
    const-string p0, "es-ES"

    return-object p0

    :sswitch_7a
    const-string p0, "en-AU"

    return-object p0

    :sswitch_7b
    const-string p0, "de-AT"

    return-object p0

    :sswitch_7c
    const-string/jumbo p0, "zh-HK"

    return-object p0

    :sswitch_7d
    const-string p0, "ar-EG"

    return-object p0

    :sswitch_7e
    const-string p0, "qps-plocm"

    return-object p0

    :sswitch_7f
    const-string/jumbo p0, "ti-ER"

    return-object p0

    :sswitch_80
    const-string p0, "quz-EC"

    return-object p0

    :sswitch_81
    const-string p0, "ff-Latn-SN"

    return-object p0

    :sswitch_82
    const-string p0, "ne-IN"

    return-object p0

    :sswitch_83
    const-string p0, "ks-Deva"

    return-object p0

    :sswitch_84
    const-string/jumbo p0, "tzm-Latn-DZ"

    return-object p0

    :sswitch_85
    const-string p0, "iu-Latn-CA"

    return-object p0

    :sswitch_86
    const-string p0, "sd-Arab-PK"

    return-object p0

    :sswitch_87
    const-string p0, "bo-BT"

    return-object p0

    :sswitch_88
    const-string p0, "mn-Mong-CN"

    return-object p0

    :sswitch_89
    const-string/jumbo p0, "ta-LK"

    return-object p0

    :sswitch_8a
    const-string p0, "pa-Arab-PK"

    return-object p0

    :sswitch_8b
    const-string p0, "bn-BD"

    return-object p0

    :sswitch_8c
    const-string/jumbo p0, "uz-Cyrl-UZ"

    return-object p0

    :sswitch_8d
    const-string p0, "ms-BN"

    return-object p0

    :sswitch_8e
    const-string p0, "ga-IE"

    return-object p0

    :sswitch_8f
    const-string p0, "se-SE"

    return-object p0

    :sswitch_90
    const-string/jumbo p0, "tn-BW"

    return-object p0

    :sswitch_91
    const-string p0, "dsb-DE"

    return-object p0

    :sswitch_92
    const-string p0, "az-Cyrl-AZ"

    return-object p0

    :sswitch_93
    const-string/jumbo p0, "ur-IN"

    return-object p0

    :sswitch_94
    const-string/jumbo p0, "sv-FI"

    return-object p0

    :sswitch_95
    const-string/jumbo p0, "sr-Latn-CS"

    return-object p0

    :sswitch_96
    const-string p0, "ru-MO"

    return-object p0

    :sswitch_97
    const-string p0, "ro-MO"

    return-object p0

    :sswitch_98
    const-string p0, "pt-PT"

    return-object p0

    :sswitch_99
    const-string p0, "nn-NO"

    return-object p0

    :sswitch_9a
    const-string p0, "nl-BE"

    return-object p0

    :sswitch_9b
    const-string p0, "fr-BE"

    return-object p0

    :sswitch_9c
    const-string p0, "de-CH"

    return-object p0

    :sswitch_9d
    const-string p0, "ar-IQ"

    return-object p0

    :sswitch_9e
    const-string p0, "qps-ploca"

    return-object p0

    :sswitch_9f
    const-string p0, "qps-ploc"

    return-object p0

    :sswitch_a0
    const-string p0, "br-FR"

    return-object p0

    :sswitch_a1
    const-string p0, "moh-CA"

    return-object p0

    :sswitch_a2
    const-string p0, "prs"

    return-object p0

    :sswitch_a3
    const-string p0, "br"

    return-object p0

    :sswitch_a4
    const-string p0, "moh"

    return-object p0

    :sswitch_a5
    const-string p0, "arn"

    return-object p0

    :sswitch_a6
    const-string p0, "pap"

    return-object p0

    :sswitch_a7
    const-string p0, "ii"

    return-object p0

    :sswitch_a8
    const-string/jumbo p0, "so"

    return-object p0

    :sswitch_a9
    const-string p0, "la"

    return-object p0

    :sswitch_aa
    const-string p0, "haw"

    return-object p0

    :sswitch_ab
    const-string p0, "gn"

    return-object p0

    :sswitch_ac
    const-string/jumbo p0, "ti"

    return-object p0

    :sswitch_ad
    const-string p0, "om"

    return-object p0

    :sswitch_ae
    const-string p0, "kr"

    return-object p0

    :sswitch_af
    const-string p0, "ig"

    return-object p0

    :sswitch_b0
    const-string p0, "kl"

    return-object p0

    :sswitch_b1
    const-string p0, "lb"

    return-object p0

    :sswitch_b2
    const-string p0, "ba"

    return-object p0

    :sswitch_b3
    const-string p0, "nso"

    return-object p0

    :sswitch_b4
    const-string p0, "quz"

    return-object p0

    :sswitch_b5
    const-string/jumbo p0, "yo"

    return-object p0

    :sswitch_b6
    const-string p0, "ibb"

    return-object p0

    :sswitch_b7
    const-string p0, "ha"

    return-object p0

    :sswitch_b8
    const-string p0, "ff"

    return-object p0

    :sswitch_b9
    const-string p0, "bin"

    return-object p0

    :sswitch_ba
    const-string p0, "dv"

    return-object p0

    :sswitch_bb
    const-string p0, "fil"

    return-object p0

    :sswitch_bc
    const-string p0, "ps"

    return-object p0

    :sswitch_bd
    const-string p0, "fy"

    return-object p0

    :sswitch_be
    const-string p0, "ne"

    return-object p0

    :sswitch_bf
    const-string p0, "ks"

    return-object p0

    :sswitch_c0
    const-string/jumbo p0, "tzm"

    return-object p0

    :sswitch_c1
    const-string p0, "am"

    return-object p0

    :sswitch_c2
    const-string p0, "iu"

    return-object p0

    :sswitch_c3
    const-string p0, "chr"

    return-object p0

    :sswitch_c4
    const-string/jumbo p0, "si"

    return-object p0

    :sswitch_c5
    const-string/jumbo p0, "syr"

    return-object p0

    :sswitch_c6
    const-string p0, "sd"

    return-object p0

    :sswitch_c7
    const-string p0, "mni"

    return-object p0

    :sswitch_c8
    const-string p0, "kok"

    return-object p0

    :sswitch_c9
    const-string p0, "gl"

    return-object p0

    :sswitch_ca
    const-string p0, "my"

    return-object p0

    :sswitch_cb
    const-string p0, "lo"

    return-object p0

    :sswitch_cc
    const-string p0, "km"

    return-object p0

    :sswitch_cd
    const-string p0, "cy"

    return-object p0

    :sswitch_ce
    const-string p0, "bo"

    return-object p0

    :sswitch_cf
    const-string p0, "mn"

    return-object p0

    :sswitch_d0
    const-string p0, "sa"

    return-object p0

    :sswitch_d1
    const-string p0, "mr"

    return-object p0

    :sswitch_d2
    const-string p0, "as"

    return-object p0

    :sswitch_d3
    const-string p0, "ml"

    return-object p0

    :sswitch_d4
    const-string p0, "kn"

    return-object p0

    :sswitch_d5
    const-string/jumbo p0, "te"

    return-object p0

    :sswitch_d6
    const-string/jumbo p0, "ta"

    return-object p0

    :sswitch_d7
    const-string p0, "or"

    return-object p0

    :sswitch_d8
    const-string p0, "gu"

    return-object p0

    :sswitch_d9
    const-string p0, "pa"

    return-object p0

    :sswitch_da
    const-string p0, "bn"

    return-object p0

    :sswitch_db
    const-string/jumbo p0, "tt"

    return-object p0

    :sswitch_dc
    const-string/jumbo p0, "uz"

    return-object p0

    :sswitch_dd
    const-string/jumbo p0, "tk"

    return-object p0

    :sswitch_de
    const-string/jumbo p0, "sw"

    return-object p0

    :sswitch_df
    const-string p0, "ky"

    return-object p0

    :sswitch_e0
    const-string p0, "kk"

    return-object p0

    :sswitch_e1
    const-string p0, "ms"

    return-object p0

    :sswitch_e2
    const-string/jumbo p0, "yi"

    return-object p0

    :sswitch_e3
    const-string p0, "ga"

    return-object p0

    :sswitch_e4
    const-string p0, "se"

    return-object p0

    :sswitch_e5
    const-string p0, "mt"

    return-object p0

    :sswitch_e6
    const-string p0, "hi"

    return-object p0

    :sswitch_e7
    const-string p0, "fo"

    return-object p0

    :sswitch_e8
    const-string p0, "ka"

    return-object p0

    :sswitch_e9
    const-string p0, "af"

    return-object p0

    :sswitch_ea
    const-string/jumbo p0, "zu"

    return-object p0

    :sswitch_eb
    const-string/jumbo p0, "xh"

    return-object p0

    :sswitch_ec
    const-string/jumbo p0, "ve"

    return-object p0

    :sswitch_ed
    const-string/jumbo p0, "tn"

    return-object p0

    :sswitch_ee
    const-string/jumbo p0, "ts"

    return-object p0

    :sswitch_ef
    const-string/jumbo p0, "st"

    return-object p0

    :sswitch_f0
    const-string p0, "mk"

    return-object p0

    :sswitch_f1
    const-string p0, "dsb or hsb"

    return-object p0

    :sswitch_f2
    const-string p0, "eu"

    return-object p0

    :sswitch_f3
    const-string p0, "az"

    return-object p0

    :sswitch_f4
    const-string p0, "hy"

    return-object p0

    :sswitch_f5
    const-string/jumbo p0, "vi"

    return-object p0

    :sswitch_f6
    const-string p0, "fa"

    return-object p0

    :sswitch_f7
    const-string/jumbo p0, "tg"

    return-object p0

    :sswitch_f8
    const-string p0, "lt"

    return-object p0

    :sswitch_f9
    const-string p0, "lv"

    return-object p0

    :sswitch_fa
    const-string p0, "et"

    return-object p0

    :sswitch_fb
    const-string/jumbo p0, "sl"

    return-object p0

    :sswitch_fc
    const-string p0, "be"

    return-object p0

    :sswitch_fd
    const-string/jumbo p0, "uk"

    return-object p0

    :sswitch_fe
    const-string p0, "id"

    return-object p0

    :sswitch_ff
    const-string/jumbo p0, "ur"

    return-object p0

    :sswitch_100
    const-string/jumbo p0, "tr"

    return-object p0

    :sswitch_101
    const-string/jumbo p0, "th"

    return-object p0

    :sswitch_102
    const-string/jumbo p0, "sv"

    return-object p0

    :sswitch_103
    const-string/jumbo p0, "sq"

    return-object p0

    :sswitch_104
    const-string/jumbo p0, "sk"

    return-object p0

    :sswitch_105
    const-string p0, "bs, hr, or sr"

    return-object p0

    :sswitch_106
    const-string p0, "ru"

    return-object p0

    :sswitch_107
    const-string p0, "ro"

    return-object p0

    :sswitch_108
    const-string p0, "rm"

    return-object p0

    :sswitch_109
    const-string p0, "pt"

    return-object p0

    :sswitch_10a
    const-string p0, "pl"

    return-object p0

    :sswitch_10b
    const-string p0, "no"

    return-object p0

    :sswitch_10c
    const-string p0, "nl"

    return-object p0

    :sswitch_10d
    const-string p0, "ko"

    return-object p0

    :sswitch_10e
    const-string p0, "ja"

    return-object p0

    :sswitch_10f
    const-string p0, "it"

    return-object p0

    :sswitch_110
    const-string p0, "is"

    return-object p0

    :sswitch_111
    const-string p0, "hu"

    return-object p0

    :sswitch_112
    const-string p0, "he"

    return-object p0

    :sswitch_113
    const-string p0, "fr"

    return-object p0

    :sswitch_114
    const-string p0, "fi"

    return-object p0

    :sswitch_115
    const-string p0, "es"

    return-object p0

    :sswitch_116
    const-string p0, "en"

    return-object p0

    :sswitch_117
    const-string p0, "el"

    return-object p0

    :cond_0
    const-string p0, "ja-Ploc-JP"

    return-object p0

    :cond_1
    const-string p0, "it-CH"

    return-object p0

    :cond_2
    const-string p0, "es-MX"

    return-object p0

    :cond_3
    const-string p0, "en-GB"

    return-object p0

    :cond_4
    const-string/jumbo p0, "zh-CN"

    return-object p0

    :cond_5
    const-string p0, "ca-ES-valencia"

    return-object p0

    :cond_6
    :sswitch_118
    const-string p0, "de"

    return-object p0

    :cond_7
    const-string p0, "da"

    return-object p0

    :cond_8
    const-string p0, "cs"

    return-object p0

    :cond_9
    const-string/jumbo p0, "zh-Hans"

    return-object p0

    :cond_a
    const-string p0, "ca"

    return-object p0

    :cond_b
    const-string p0, "bg"

    return-object p0

    :cond_c
    const-string p0, "ar"

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_118
        0x8 -> :sswitch_117
        0x9 -> :sswitch_116
        0xa -> :sswitch_115
        0xb -> :sswitch_114
        0xc -> :sswitch_113
        0xd -> :sswitch_112
        0xe -> :sswitch_111
        0xf -> :sswitch_110
        0x10 -> :sswitch_10f
        0x11 -> :sswitch_10e
        0x12 -> :sswitch_10d
        0x13 -> :sswitch_10c
        0x14 -> :sswitch_10b
        0x15 -> :sswitch_10a
        0x16 -> :sswitch_109
        0x17 -> :sswitch_108
        0x18 -> :sswitch_107
        0x19 -> :sswitch_106
        0x1a -> :sswitch_105
        0x1b -> :sswitch_104
        0x1c -> :sswitch_103
        0x1d -> :sswitch_102
        0x1e -> :sswitch_101
        0x1f -> :sswitch_100
        0x20 -> :sswitch_ff
        0x21 -> :sswitch_fe
        0x22 -> :sswitch_fd
        0x23 -> :sswitch_fc
        0x24 -> :sswitch_fb
        0x25 -> :sswitch_fa
        0x26 -> :sswitch_f9
        0x27 -> :sswitch_f8
        0x28 -> :sswitch_f7
        0x29 -> :sswitch_f6
        0x2a -> :sswitch_f5
        0x2b -> :sswitch_f4
        0x2c -> :sswitch_f3
        0x2d -> :sswitch_f2
        0x2e -> :sswitch_f1
        0x2f -> :sswitch_f0
        0x30 -> :sswitch_ef
        0x31 -> :sswitch_ee
        0x32 -> :sswitch_ed
        0x33 -> :sswitch_ec
        0x34 -> :sswitch_eb
        0x35 -> :sswitch_ea
        0x36 -> :sswitch_e9
        0x37 -> :sswitch_e8
        0x38 -> :sswitch_e7
        0x39 -> :sswitch_e6
        0x3a -> :sswitch_e5
        0x3b -> :sswitch_e4
        0x3c -> :sswitch_e3
        0x3d -> :sswitch_e2
        0x3e -> :sswitch_e1
        0x3f -> :sswitch_e0
        0x40 -> :sswitch_df
        0x41 -> :sswitch_de
        0x42 -> :sswitch_dd
        0x43 -> :sswitch_dc
        0x44 -> :sswitch_db
        0x45 -> :sswitch_da
        0x46 -> :sswitch_d9
        0x47 -> :sswitch_d8
        0x48 -> :sswitch_d7
        0x49 -> :sswitch_d6
        0x4a -> :sswitch_d5
        0x4b -> :sswitch_d4
        0x4c -> :sswitch_d3
        0x4d -> :sswitch_d2
        0x4e -> :sswitch_d1
        0x4f -> :sswitch_d0
        0x50 -> :sswitch_cf
        0x51 -> :sswitch_ce
        0x52 -> :sswitch_cd
        0x53 -> :sswitch_cc
        0x54 -> :sswitch_cb
        0x55 -> :sswitch_ca
        0x56 -> :sswitch_c9
        0x57 -> :sswitch_c8
        0x58 -> :sswitch_c7
        0x59 -> :sswitch_c6
        0x5a -> :sswitch_c5
        0x5b -> :sswitch_c4
        0x5c -> :sswitch_c3
        0x5d -> :sswitch_c2
        0x5e -> :sswitch_c1
        0x5f -> :sswitch_c0
        0x60 -> :sswitch_bf
        0x61 -> :sswitch_be
        0x62 -> :sswitch_bd
        0x63 -> :sswitch_bc
        0x64 -> :sswitch_bb
        0x65 -> :sswitch_ba
        0x66 -> :sswitch_b9
        0x67 -> :sswitch_b8
        0x68 -> :sswitch_b7
        0x69 -> :sswitch_b6
        0x6a -> :sswitch_b5
        0x6b -> :sswitch_b4
        0x6c -> :sswitch_b3
        0x6d -> :sswitch_b2
        0x6e -> :sswitch_b1
        0x6f -> :sswitch_b0
        0x70 -> :sswitch_af
        0x71 -> :sswitch_ae
        0x72 -> :sswitch_ad
        0x73 -> :sswitch_ac
        0x74 -> :sswitch_ab
        0x75 -> :sswitch_aa
        0x76 -> :sswitch_a9
        0x77 -> :sswitch_a8
        0x78 -> :sswitch_a7
        0x79 -> :sswitch_a6
        0x7a -> :sswitch_a5
        0x7c -> :sswitch_a4
        0x7e -> :sswitch_a3
        0x8c -> :sswitch_a2
        0x47c -> :sswitch_a1
        0x47e -> :sswitch_a0
        0x501 -> :sswitch_9f
        0x5fe -> :sswitch_9e
        0x801 -> :sswitch_9d
        0x807 -> :sswitch_9c
        0x80c -> :sswitch_9b
        0x813 -> :sswitch_9a
        0x814 -> :sswitch_99
        0x816 -> :sswitch_98
        0x818 -> :sswitch_97
        0x819 -> :sswitch_96
        0x81a -> :sswitch_95
        0x81d -> :sswitch_94
        0x820 -> :sswitch_93
        0x82c -> :sswitch_92
        0x82e -> :sswitch_91
        0x832 -> :sswitch_90
        0x83b -> :sswitch_8f
        0x83c -> :sswitch_8e
        0x83e -> :sswitch_8d
        0x843 -> :sswitch_8c
        0x845 -> :sswitch_8b
        0x846 -> :sswitch_8a
        0x849 -> :sswitch_89
        0x850 -> :sswitch_88
        0x851 -> :sswitch_87
        0x859 -> :sswitch_86
        0x85d -> :sswitch_85
        0x85f -> :sswitch_84
        0x860 -> :sswitch_83
        0x861 -> :sswitch_82
        0x867 -> :sswitch_81
        0x86b -> :sswitch_80
        0x873 -> :sswitch_7f
        0x9ff -> :sswitch_7e
        0xc01 -> :sswitch_7d
        0xc04 -> :sswitch_7c
        0xc07 -> :sswitch_7b
        0xc09 -> :sswitch_7a
        0xc0a -> :sswitch_79
        0xc0c -> :sswitch_78
        0xc1a -> :sswitch_77
        0xc3b -> :sswitch_76
        0xc5f -> :sswitch_75
        0xc6b -> :sswitch_74
        0x1001 -> :sswitch_73
        0x1004 -> :sswitch_72
        0x1007 -> :sswitch_71
        0x1009 -> :sswitch_70
        0x100a -> :sswitch_6f
        0x100c -> :sswitch_6e
        0x101a -> :sswitch_6d
        0x103b -> :sswitch_6c
        0x1401 -> :sswitch_6b
        0x1404 -> :sswitch_6a
        0x1407 -> :sswitch_69
        0x1409 -> :sswitch_68
        0x140a -> :sswitch_67
        0x140c -> :sswitch_66
        0x141a -> :sswitch_65
        0x143b -> :sswitch_64
        0x1801 -> :sswitch_63
        0x1809 -> :sswitch_62
        0x180a -> :sswitch_61
        0x180c -> :sswitch_60
        0x181a -> :sswitch_5f
        0x183b -> :sswitch_5e
        0x1c01 -> :sswitch_5d
        0x1c09 -> :sswitch_5c
        0x1c0a -> :sswitch_5b
        0x1c1a -> :sswitch_5a
        0x1c3b -> :sswitch_59
        0x2001 -> :sswitch_58
        0x2009 -> :sswitch_57
        0x200a -> :sswitch_56
        0x200c -> :sswitch_55
        0x201a -> :sswitch_54
        0x203b -> :sswitch_53
        0x2401 -> :sswitch_52
        0x2409 -> :sswitch_51
        0x240a -> :sswitch_50
        0x240c -> :sswitch_4f
        0x241a -> :sswitch_4e
        0x243b -> :sswitch_4d
        0x2801 -> :sswitch_4c
        0x2809 -> :sswitch_4b
        0x280a -> :sswitch_4a
        0x280c -> :sswitch_49
        0x281a -> :sswitch_48
        0x2c01 -> :sswitch_47
        0x2c09 -> :sswitch_46
        0x2c0a -> :sswitch_45
        0x2c0c -> :sswitch_44
        0x2c1a -> :sswitch_43
        0x3001 -> :sswitch_42
        0x3009 -> :sswitch_41
        0x300a -> :sswitch_40
        0x300c -> :sswitch_3f
        0x301a -> :sswitch_3e
        0x3401 -> :sswitch_3d
        0x3409 -> :sswitch_3c
        0x340a -> :sswitch_3b
        0x340c -> :sswitch_3a
        0x3801 -> :sswitch_39
        0x3809 -> :sswitch_38
        0x380a -> :sswitch_37
        0x380c -> :sswitch_36
        0x3c01 -> :sswitch_35
        0x3c09 -> :sswitch_34
        0x3c0a -> :sswitch_33
        0x3c0c -> :sswitch_32
        0x4001 -> :sswitch_31
        0x4009 -> :sswitch_30
        0x400a -> :sswitch_2f
        0x4401 -> :sswitch_2e
        0x4409 -> :sswitch_2d
        0x440a -> :sswitch_2c
        0x4801 -> :sswitch_2b
        0x4809 -> :sswitch_2a
        0x480a -> :sswitch_29
        0x4c09 -> :sswitch_28
        0x4c0a -> :sswitch_27
        0x5009 -> :sswitch_26
        0x500a -> :sswitch_25
        0x5409 -> :sswitch_24
        0x540a -> :sswitch_23
        0x5809 -> :sswitch_22
        0x5c09 -> :sswitch_21
        0x6009 -> :sswitch_20
        0x6409 -> :sswitch_1f
        0x641a -> :sswitch_1e
        0x681a -> :sswitch_1d
        0x6c1a -> :sswitch_1c
        0x701a -> :sswitch_1b
        0x703b -> :sswitch_1a
        0x742c -> :sswitch_19
        0x743b -> :sswitch_18
        0x7804 -> :sswitch_17
        0x7814 -> :sswitch_16
        0x781a -> :sswitch_15
        0x782c -> :sswitch_14
        0x783b -> :sswitch_13
        0x7843 -> :sswitch_12
        0x7850 -> :sswitch_11
        0x785d -> :sswitch_10
        0x7c04 -> :sswitch_f
        0x7c14 -> :sswitch_e
        0x7c1a -> :sswitch_d
        0x7c28 -> :sswitch_c
        0x7c2e -> :sswitch_b
        0x7c3b -> :sswitch_a
        0x7c43 -> :sswitch_9
        0x7c46 -> :sswitch_8
        0x7c50 -> :sswitch_7
        0x7c59 -> :sswitch_6
        0x7c5c -> :sswitch_5
        0x7c5d -> :sswitch_4
        0x7c5f -> :sswitch_3
        0x7c67 -> :sswitch_2
        0x7c68 -> :sswitch_1
        0x7c92 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_95
        :pswitch_94
        :pswitch_93
        :pswitch_92
        :pswitch_91
        :pswitch_90
        :pswitch_8f
        :pswitch_8e
        :pswitch_8d
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x91
        :pswitch_8c
        :pswitch_8b
        :pswitch_8a
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x401
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x43d
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x480
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x48c
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getUserLocale()Ljava/util/Locale;
    .locals 1
    .annotation build Lorg/apache/poi/util/SuppressForbidden;
        value = "implementation around default locales in POI"
    .end annotation

    sget-object v0, Lorg/apache/poi/util/LocaleUtil;->userLocale:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static getUserTimeZone()Ljava/util/TimeZone;
    .locals 1
    .annotation build Lorg/apache/poi/util/SuppressForbidden;
        value = "implementation around default locales in POI"
    .end annotation

    sget-object v0, Lorg/apache/poi/util/LocaleUtil;->userTimeZone:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/TimeZone;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static resetUserLocale()V
    .locals 1

    sget-object v0, Lorg/apache/poi/util/LocaleUtil;->userLocale:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    return-void
.end method

.method public static resetUserTimeZone()V
    .locals 1

    sget-object v0, Lorg/apache/poi/util/LocaleUtil;->userTimeZone:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    return-void
.end method

.method public static setUserLocale(Ljava/util/Locale;)V
    .locals 1

    sget-object v0, Lorg/apache/poi/util/LocaleUtil;->userLocale:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public static setUserTimeZone(Ljava/util/TimeZone;)V
    .locals 1

    sget-object v0, Lorg/apache/poi/util/LocaleUtil;->userTimeZone:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method
