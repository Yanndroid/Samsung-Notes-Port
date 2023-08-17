.class public final Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;
.super Lorg/apache/xmlbeans/StringEnumAbstractBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Enum"
.end annotation


# static fields
.field public static final INT_AIUEO:I = 0xd

.field public static final INT_AIUEO_FULL_WIDTH:I = 0x15

.field public static final INT_ARABIC_ABJAD:I = 0x35

.field public static final INT_ARABIC_ALPHA:I = 0x34

.field public static final INT_BULLET:I = 0x18

.field public static final INT_CARDINAL_TEXT:I = 0x7

.field public static final INT_CHICAGO:I = 0xa

.field public static final INT_CHINESE_COUNTING:I = 0x26

.field public static final INT_CHINESE_COUNTING_THOUSAND:I = 0x28

.field public static final INT_CHINESE_LEGAL_SIMPLIFIED:I = 0x27

.field public static final INT_CHOSUNG:I = 0x1a

.field public static final INT_DECIMAL:I = 0x1

.field public static final INT_DECIMAL_ENCLOSED_CIRCLE:I = 0x13

.field public static final INT_DECIMAL_ENCLOSED_CIRCLE_CHINESE:I = 0x1d

.field public static final INT_DECIMAL_ENCLOSED_FULLSTOP:I = 0x1b

.field public static final INT_DECIMAL_ENCLOSED_PAREN:I = 0x1c

.field public static final INT_DECIMAL_FULL_WIDTH:I = 0xf

.field public static final INT_DECIMAL_FULL_WIDTH_2:I = 0x14

.field public static final INT_DECIMAL_HALF_WIDTH:I = 0x10

.field public static final INT_DECIMAL_ZERO:I = 0x17

.field public static final INT_GANADA:I = 0x19

.field public static final INT_HEBREW_1:I = 0x32

.field public static final INT_HEBREW_2:I = 0x33

.field public static final INT_HEX:I = 0x9

.field public static final INT_HINDI_CONSONANTS:I = 0x37

.field public static final INT_HINDI_COUNTING:I = 0x39

.field public static final INT_HINDI_NUMBERS:I = 0x38

.field public static final INT_HINDI_VOWELS:I = 0x36

.field public static final INT_IDEOGRAPH_DIGITAL:I = 0xb

.field public static final INT_IDEOGRAPH_ENCLOSED_CIRCLE:I = 0x1e

.field public static final INT_IDEOGRAPH_LEGAL_TRADITIONAL:I = 0x23

.field public static final INT_IDEOGRAPH_TRADITIONAL:I = 0x1f

.field public static final INT_IDEOGRAPH_ZODIAC:I = 0x20

.field public static final INT_IDEOGRAPH_ZODIAC_TRADITIONAL:I = 0x21

.field public static final INT_IROHA:I = 0xe

.field public static final INT_IROHA_FULL_WIDTH:I = 0x16

.field public static final INT_JAPANESE_COUNTING:I = 0xc

.field public static final INT_JAPANESE_DIGITAL_TEN_THOUSAND:I = 0x12

.field public static final INT_JAPANESE_LEGAL:I = 0x11

.field public static final INT_KOREAN_COUNTING:I = 0x2a

.field public static final INT_KOREAN_DIGITAL:I = 0x29

.field public static final INT_KOREAN_DIGITAL_2:I = 0x2c

.field public static final INT_KOREAN_LEGAL:I = 0x2b

.field public static final INT_LOWER_LETTER:I = 0x5

.field public static final INT_LOWER_ROMAN:I = 0x3

.field public static final INT_NONE:I = 0x30

.field public static final INT_NUMBER_IN_DASH:I = 0x31

.field public static final INT_ORDINAL:I = 0x6

.field public static final INT_ORDINAL_TEXT:I = 0x8

.field public static final INT_RUSSIAN_LOWER:I = 0x2e

.field public static final INT_RUSSIAN_UPPER:I = 0x2f

.field public static final INT_TAIWANESE_COUNTING:I = 0x22

.field public static final INT_TAIWANESE_COUNTING_THOUSAND:I = 0x24

.field public static final INT_TAIWANESE_DIGITAL:I = 0x25

.field public static final INT_THAI_COUNTING:I = 0x3c

.field public static final INT_THAI_LETTERS:I = 0x3a

.field public static final INT_THAI_NUMBERS:I = 0x3b

.field public static final INT_UPPER_LETTER:I = 0x4

.field public static final INT_UPPER_ROMAN:I = 0x2

.field public static final INT_VIETNAMESE_COUNTING:I = 0x2d

.field private static final serialVersionUID:J = 0x1L

.field public static final table:Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;

    const/16 v1, 0x3c

    new-array v2, v1, [Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    new-instance v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    const-string v4, "decimal"

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-instance v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    const-string v4, "upperRoman"

    const/4 v6, 0x2

    invoke-direct {v3, v4, v6}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    aput-object v3, v2, v5

    new-instance v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    const-string v4, "lowerRoman"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    aput-object v3, v2, v6

    new-instance v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    const-string v4, "upperLetter"

    const/4 v6, 0x4

    invoke-direct {v3, v4, v6}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    aput-object v3, v2, v5

    new-instance v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    const-string v4, "lowerLetter"

    const/4 v5, 0x5

    invoke-direct {v3, v4, v5}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    aput-object v3, v2, v6

    new-instance v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    const-string v4, "ordinal"

    const/4 v6, 0x6

    invoke-direct {v3, v4, v6}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    aput-object v3, v2, v5

    new-instance v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    const-string v4, "cardinalText"

    const/4 v5, 0x7

    invoke-direct {v3, v4, v5}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    aput-object v3, v2, v6

    new-instance v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    const-string v4, "ordinalText"

    const/16 v6, 0x8

    invoke-direct {v3, v4, v6}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    aput-object v3, v2, v5

    new-instance v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    const-string v4, "hex"

    const/16 v5, 0x9

    invoke-direct {v3, v4, v5}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    aput-object v3, v2, v6

    new-instance v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    const-string v4, "chicago"

    const/16 v6, 0xa

    invoke-direct {v3, v4, v6}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    aput-object v3, v2, v5

    new-instance v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    const-string v4, "ideographDigital"

    const/16 v5, 0xb

    invoke-direct {v3, v4, v5}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    aput-object v3, v2, v6

    new-instance v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    const-string v4, "japaneseCounting"

    const/16 v6, 0xc

    invoke-direct {v3, v4, v6}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    aput-object v3, v2, v5

    new-instance v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    const-string v4, "aiueo"

    const/16 v5, 0xd

    invoke-direct {v3, v4, v5}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    aput-object v3, v2, v6

    new-instance v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    const-string v4, "iroha"

    const/16 v6, 0xe

    invoke-direct {v3, v4, v6}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    aput-object v3, v2, v5

    new-instance v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    const-string v4, "decimalFullWidth"

    const/16 v5, 0xf

    invoke-direct {v3, v4, v5}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    aput-object v3, v2, v6

    new-instance v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    const-string v4, "decimalHalfWidth"

    const/16 v6, 0x10

    invoke-direct {v3, v4, v6}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    aput-object v3, v2, v5

    new-instance v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    const-string v4, "japaneseLegal"

    const/16 v5, 0x11

    invoke-direct {v3, v4, v5}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    aput-object v3, v2, v6

    new-instance v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    const-string v4, "japaneseDigitalTenThousand"

    const/16 v6, 0x12

    invoke-direct {v3, v4, v6}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    aput-object v3, v2, v5

    new-instance v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    const-string v4, "decimalEnclosedCircle"

    const/16 v5, 0x13

    invoke-direct {v3, v4, v5}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    aput-object v3, v2, v6

    new-instance v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    const-string v4, "decimalFullWidth2"

    const/16 v6, 0x14

    invoke-direct {v3, v4, v6}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    aput-object v3, v2, v5

    new-instance v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    const-string v4, "aiueoFullWidth"

    const/16 v5, 0x15

    invoke-direct {v3, v4, v5}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    aput-object v3, v2, v6

    new-instance v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    const-string v4, "irohaFullWidth"

    const/16 v6, 0x16

    invoke-direct {v3, v4, v6}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    aput-object v3, v2, v5

    new-instance v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    const-string v4, "decimalZero"

    const/16 v5, 0x17

    invoke-direct {v3, v4, v5}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    const/16 v4, 0x16

    aput-object v3, v2, v4

    new-instance v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    const-string v4, "bullet"

    const/16 v5, 0x18

    invoke-direct {v3, v4, v5}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    const/16 v4, 0x17

    aput-object v3, v2, v4

    new-instance v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    const-string v4, "ganada"

    const/16 v5, 0x19

    invoke-direct {v3, v4, v5}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    const/16 v4, 0x18

    aput-object v3, v2, v4

    new-instance v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    const-string v4, "chosung"

    const/16 v5, 0x1a

    invoke-direct {v3, v4, v5}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    const/16 v4, 0x19

    aput-object v3, v2, v4

    new-instance v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    const-string v4, "decimalEnclosedFullstop"

    const/16 v5, 0x1b

    invoke-direct {v3, v4, v5}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    const/16 v4, 0x1a

    aput-object v3, v2, v4

    new-instance v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    const-string v4, "decimalEnclosedParen"

    const/16 v5, 0x1c

    invoke-direct {v3, v4, v5}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    const/16 v4, 0x1b

    aput-object v3, v2, v4

    new-instance v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    const-string v4, "decimalEnclosedCircleChinese"

    const/16 v5, 0x1d

    invoke-direct {v3, v4, v5}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    const/16 v4, 0x1c

    aput-object v3, v2, v4

    new-instance v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    const-string v4, "ideographEnclosedCircle"

    const/16 v5, 0x1e

    invoke-direct {v3, v4, v5}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    const/16 v4, 0x1d

    aput-object v3, v2, v4

    new-instance v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    const-string v4, "ideographTraditional"

    const/16 v5, 0x1f

    invoke-direct {v3, v4, v5}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    const/16 v4, 0x1e

    aput-object v3, v2, v4

    new-instance v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    const-string v4, "ideographZodiac"

    const/16 v5, 0x20

    invoke-direct {v3, v4, v5}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    const/16 v4, 0x1f

    aput-object v3, v2, v4

    new-instance v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    const-string v4, "ideographZodiacTraditional"

    const/16 v5, 0x21

    invoke-direct {v3, v4, v5}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    const/16 v4, 0x20

    aput-object v3, v2, v4

    new-instance v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    const-string v4, "taiwaneseCounting"

    const/16 v5, 0x22

    invoke-direct {v3, v4, v5}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    const/16 v4, 0x21

    aput-object v3, v2, v4

    new-instance v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    const-string v4, "ideographLegalTraditional"

    const/16 v5, 0x23

    invoke-direct {v3, v4, v5}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    const/16 v4, 0x22

    aput-object v3, v2, v4

    new-instance v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    const-string v4, "taiwaneseCountingThousand"

    const/16 v5, 0x24

    invoke-direct {v3, v4, v5}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    const/16 v4, 0x23

    aput-object v3, v2, v4

    new-instance v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    const-string v4, "taiwaneseDigital"

    const/16 v5, 0x25

    invoke-direct {v3, v4, v5}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    const/16 v4, 0x24

    aput-object v3, v2, v4

    new-instance v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    const-string v4, "chineseCounting"

    const/16 v5, 0x26

    invoke-direct {v3, v4, v5}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    const/16 v4, 0x25

    aput-object v3, v2, v4

    new-instance v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    const-string v4, "chineseLegalSimplified"

    const/16 v5, 0x27

    invoke-direct {v3, v4, v5}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    const/16 v4, 0x26

    aput-object v3, v2, v4

    new-instance v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    const-string v4, "chineseCountingThousand"

    const/16 v5, 0x28

    invoke-direct {v3, v4, v5}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    const/16 v4, 0x27

    aput-object v3, v2, v4

    new-instance v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    const-string v4, "koreanDigital"

    const/16 v5, 0x29

    invoke-direct {v3, v4, v5}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    const/16 v4, 0x28

    aput-object v3, v2, v4

    new-instance v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    const-string v4, "koreanCounting"

    const/16 v5, 0x2a

    invoke-direct {v3, v4, v5}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    const/16 v4, 0x29

    aput-object v3, v2, v4

    new-instance v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    const-string v4, "koreanLegal"

    const/16 v5, 0x2b

    invoke-direct {v3, v4, v5}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    const/16 v4, 0x2a

    aput-object v3, v2, v4

    new-instance v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    const-string v4, "koreanDigital2"

    const/16 v5, 0x2c

    invoke-direct {v3, v4, v5}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    const/16 v4, 0x2b

    aput-object v3, v2, v4

    new-instance v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    const-string v4, "vietnameseCounting"

    const/16 v5, 0x2d

    invoke-direct {v3, v4, v5}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    const/16 v4, 0x2c

    aput-object v3, v2, v4

    new-instance v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    const-string v4, "russianLower"

    const/16 v5, 0x2e

    invoke-direct {v3, v4, v5}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    const/16 v4, 0x2d

    aput-object v3, v2, v4

    new-instance v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    const-string v4, "russianUpper"

    const/16 v5, 0x2f

    invoke-direct {v3, v4, v5}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    const/16 v4, 0x2e

    aput-object v3, v2, v4

    new-instance v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    const-string v4, "none"

    const/16 v5, 0x30

    invoke-direct {v3, v4, v5}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    const/16 v4, 0x2f

    aput-object v3, v2, v4

    new-instance v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    const-string v4, "numberInDash"

    const/16 v5, 0x31

    invoke-direct {v3, v4, v5}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    const/16 v4, 0x30

    aput-object v3, v2, v4

    new-instance v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    const-string v4, "hebrew1"

    const/16 v5, 0x32

    invoke-direct {v3, v4, v5}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    const/16 v4, 0x31

    aput-object v3, v2, v4

    new-instance v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    const-string v4, "hebrew2"

    const/16 v5, 0x33

    invoke-direct {v3, v4, v5}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    const/16 v4, 0x32

    aput-object v3, v2, v4

    new-instance v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    const-string v4, "arabicAlpha"

    const/16 v5, 0x34

    invoke-direct {v3, v4, v5}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    const/16 v4, 0x33

    aput-object v3, v2, v4

    new-instance v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    const-string v4, "arabicAbjad"

    const/16 v5, 0x35

    invoke-direct {v3, v4, v5}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    const/16 v4, 0x34

    aput-object v3, v2, v4

    new-instance v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    const-string v4, "hindiVowels"

    const/16 v5, 0x36

    invoke-direct {v3, v4, v5}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    const/16 v4, 0x35

    aput-object v3, v2, v4

    new-instance v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    const-string v4, "hindiConsonants"

    const/16 v5, 0x37

    invoke-direct {v3, v4, v5}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    const/16 v4, 0x36

    aput-object v3, v2, v4

    new-instance v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    const-string v4, "hindiNumbers"

    const/16 v5, 0x38

    invoke-direct {v3, v4, v5}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    const/16 v4, 0x37

    aput-object v3, v2, v4

    new-instance v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    const-string v4, "hindiCounting"

    const/16 v5, 0x39

    invoke-direct {v3, v4, v5}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    const/16 v4, 0x38

    aput-object v3, v2, v4

    new-instance v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    const-string v4, "thaiLetters"

    const/16 v5, 0x3a

    invoke-direct {v3, v4, v5}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    const/16 v4, 0x39

    aput-object v3, v2, v4

    new-instance v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    const-string v4, "thaiNumbers"

    const/16 v5, 0x3b

    invoke-direct {v3, v4, v5}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    const/16 v4, 0x3a

    aput-object v3, v2, v4

    new-instance v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    const-string v4, "thaiCounting"

    invoke-direct {v3, v4, v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;-><init>(Ljava/lang/String;I)V

    const/16 v1, 0x3b

    aput-object v3, v2, v1

    invoke-direct {v0, v2}, Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;-><init>([Lorg/apache/xmlbeans/StringEnumAbstractBase;)V

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;->table:Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/xmlbeans/StringEnumAbstractBase;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static forInt(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;
    .locals 1

    sget-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;->table:Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;

    invoke-virtual {v0, p0}, Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;->forInt(I)Lorg/apache/xmlbeans/StringEnumAbstractBase;

    move-result-object p0

    check-cast p0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    return-object p0
.end method

.method public static forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;
    .locals 1

    sget-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;->table:Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;

    invoke-virtual {v0, p0}, Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;->forString(Ljava/lang/String;)Lorg/apache/xmlbeans/StringEnumAbstractBase;

    move-result-object p0

    check-cast p0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    return-object p0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/StringEnumAbstractBase;->intValue()I

    move-result v0

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;->forInt(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;

    move-result-object v0

    return-object v0
.end method
