.class public final enum Lkotlin/text/CharCategory;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/text/CharCategory$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lkotlin/text/CharCategory;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lkotlin/text/CharCategory;

.field public static final enum COMBINING_SPACING_MARK:Lkotlin/text/CharCategory;

.field public static final enum CONNECTOR_PUNCTUATION:Lkotlin/text/CharCategory;

.field public static final enum CONTROL:Lkotlin/text/CharCategory;

.field public static final enum CURRENCY_SYMBOL:Lkotlin/text/CharCategory;

.field public static final Companion:Lkotlin/text/CharCategory$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final enum DASH_PUNCTUATION:Lkotlin/text/CharCategory;

.field public static final enum DECIMAL_DIGIT_NUMBER:Lkotlin/text/CharCategory;

.field public static final enum ENCLOSING_MARK:Lkotlin/text/CharCategory;

.field public static final enum END_PUNCTUATION:Lkotlin/text/CharCategory;

.field public static final enum FINAL_QUOTE_PUNCTUATION:Lkotlin/text/CharCategory;

.field public static final enum FORMAT:Lkotlin/text/CharCategory;

.field public static final enum INITIAL_QUOTE_PUNCTUATION:Lkotlin/text/CharCategory;

.field public static final enum LETTER_NUMBER:Lkotlin/text/CharCategory;

.field public static final enum LINE_SEPARATOR:Lkotlin/text/CharCategory;

.field public static final enum LOWERCASE_LETTER:Lkotlin/text/CharCategory;

.field public static final enum MATH_SYMBOL:Lkotlin/text/CharCategory;

.field public static final enum MODIFIER_LETTER:Lkotlin/text/CharCategory;

.field public static final enum MODIFIER_SYMBOL:Lkotlin/text/CharCategory;

.field public static final enum NON_SPACING_MARK:Lkotlin/text/CharCategory;

.field public static final enum OTHER_LETTER:Lkotlin/text/CharCategory;

.field public static final enum OTHER_NUMBER:Lkotlin/text/CharCategory;

.field public static final enum OTHER_PUNCTUATION:Lkotlin/text/CharCategory;

.field public static final enum OTHER_SYMBOL:Lkotlin/text/CharCategory;

.field public static final enum PARAGRAPH_SEPARATOR:Lkotlin/text/CharCategory;

.field public static final enum PRIVATE_USE:Lkotlin/text/CharCategory;

.field public static final enum SPACE_SEPARATOR:Lkotlin/text/CharCategory;

.field public static final enum START_PUNCTUATION:Lkotlin/text/CharCategory;

.field public static final enum SURROGATE:Lkotlin/text/CharCategory;

.field public static final enum TITLECASE_LETTER:Lkotlin/text/CharCategory;

.field public static final enum UNASSIGNED:Lkotlin/text/CharCategory;

.field public static final enum UPPERCASE_LETTER:Lkotlin/text/CharCategory;


# instance fields
.field private final code:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final value:I


# direct methods
.method private static final synthetic $values()[Lkotlin/text/CharCategory;
    .locals 3

    const/16 v0, 0x1e

    new-array v0, v0, [Lkotlin/text/CharCategory;

    sget-object v1, Lkotlin/text/CharCategory;->UNASSIGNED:Lkotlin/text/CharCategory;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lkotlin/text/CharCategory;->UPPERCASE_LETTER:Lkotlin/text/CharCategory;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lkotlin/text/CharCategory;->LOWERCASE_LETTER:Lkotlin/text/CharCategory;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lkotlin/text/CharCategory;->TITLECASE_LETTER:Lkotlin/text/CharCategory;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lkotlin/text/CharCategory;->MODIFIER_LETTER:Lkotlin/text/CharCategory;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lkotlin/text/CharCategory;->OTHER_LETTER:Lkotlin/text/CharCategory;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lkotlin/text/CharCategory;->NON_SPACING_MARK:Lkotlin/text/CharCategory;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lkotlin/text/CharCategory;->ENCLOSING_MARK:Lkotlin/text/CharCategory;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lkotlin/text/CharCategory;->COMBINING_SPACING_MARK:Lkotlin/text/CharCategory;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lkotlin/text/CharCategory;->DECIMAL_DIGIT_NUMBER:Lkotlin/text/CharCategory;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lkotlin/text/CharCategory;->LETTER_NUMBER:Lkotlin/text/CharCategory;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lkotlin/text/CharCategory;->OTHER_NUMBER:Lkotlin/text/CharCategory;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lkotlin/text/CharCategory;->SPACE_SEPARATOR:Lkotlin/text/CharCategory;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lkotlin/text/CharCategory;->LINE_SEPARATOR:Lkotlin/text/CharCategory;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lkotlin/text/CharCategory;->PARAGRAPH_SEPARATOR:Lkotlin/text/CharCategory;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lkotlin/text/CharCategory;->CONTROL:Lkotlin/text/CharCategory;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lkotlin/text/CharCategory;->FORMAT:Lkotlin/text/CharCategory;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lkotlin/text/CharCategory;->PRIVATE_USE:Lkotlin/text/CharCategory;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lkotlin/text/CharCategory;->SURROGATE:Lkotlin/text/CharCategory;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lkotlin/text/CharCategory;->DASH_PUNCTUATION:Lkotlin/text/CharCategory;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lkotlin/text/CharCategory;->START_PUNCTUATION:Lkotlin/text/CharCategory;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lkotlin/text/CharCategory;->END_PUNCTUATION:Lkotlin/text/CharCategory;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lkotlin/text/CharCategory;->CONNECTOR_PUNCTUATION:Lkotlin/text/CharCategory;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lkotlin/text/CharCategory;->OTHER_PUNCTUATION:Lkotlin/text/CharCategory;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lkotlin/text/CharCategory;->MATH_SYMBOL:Lkotlin/text/CharCategory;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sget-object v1, Lkotlin/text/CharCategory;->CURRENCY_SYMBOL:Lkotlin/text/CharCategory;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sget-object v1, Lkotlin/text/CharCategory;->MODIFIER_SYMBOL:Lkotlin/text/CharCategory;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    sget-object v1, Lkotlin/text/CharCategory;->OTHER_SYMBOL:Lkotlin/text/CharCategory;

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    sget-object v1, Lkotlin/text/CharCategory;->INITIAL_QUOTE_PUNCTUATION:Lkotlin/text/CharCategory;

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    sget-object v1, Lkotlin/text/CharCategory;->FINAL_QUOTE_PUNCTUATION:Lkotlin/text/CharCategory;

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lkotlin/text/CharCategory;

    const-string v1, "UNASSIGNED"

    const/4 v2, 0x0

    const-string v3, "Cn"

    invoke-direct {v0, v1, v2, v2, v3}, Lkotlin/text/CharCategory;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lkotlin/text/CharCategory;->UNASSIGNED:Lkotlin/text/CharCategory;

    new-instance v0, Lkotlin/text/CharCategory;

    const-string v1, "UPPERCASE_LETTER"

    const/4 v2, 0x1

    const-string v3, "Lu"

    invoke-direct {v0, v1, v2, v2, v3}, Lkotlin/text/CharCategory;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lkotlin/text/CharCategory;->UPPERCASE_LETTER:Lkotlin/text/CharCategory;

    new-instance v0, Lkotlin/text/CharCategory;

    const-string v1, "LOWERCASE_LETTER"

    const/4 v2, 0x2

    const-string v3, "Ll"

    invoke-direct {v0, v1, v2, v2, v3}, Lkotlin/text/CharCategory;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lkotlin/text/CharCategory;->LOWERCASE_LETTER:Lkotlin/text/CharCategory;

    new-instance v0, Lkotlin/text/CharCategory;

    const-string v1, "TITLECASE_LETTER"

    const/4 v2, 0x3

    const-string v3, "Lt"

    invoke-direct {v0, v1, v2, v2, v3}, Lkotlin/text/CharCategory;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lkotlin/text/CharCategory;->TITLECASE_LETTER:Lkotlin/text/CharCategory;

    new-instance v0, Lkotlin/text/CharCategory;

    const-string v1, "MODIFIER_LETTER"

    const/4 v2, 0x4

    const-string v3, "Lm"

    invoke-direct {v0, v1, v2, v2, v3}, Lkotlin/text/CharCategory;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lkotlin/text/CharCategory;->MODIFIER_LETTER:Lkotlin/text/CharCategory;

    new-instance v0, Lkotlin/text/CharCategory;

    const-string v1, "OTHER_LETTER"

    const/4 v2, 0x5

    const-string v3, "Lo"

    invoke-direct {v0, v1, v2, v2, v3}, Lkotlin/text/CharCategory;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lkotlin/text/CharCategory;->OTHER_LETTER:Lkotlin/text/CharCategory;

    new-instance v0, Lkotlin/text/CharCategory;

    const-string v1, "NON_SPACING_MARK"

    const/4 v2, 0x6

    const-string v3, "Mn"

    invoke-direct {v0, v1, v2, v2, v3}, Lkotlin/text/CharCategory;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lkotlin/text/CharCategory;->NON_SPACING_MARK:Lkotlin/text/CharCategory;

    new-instance v0, Lkotlin/text/CharCategory;

    const-string v1, "ENCLOSING_MARK"

    const/4 v2, 0x7

    const-string v3, "Me"

    invoke-direct {v0, v1, v2, v2, v3}, Lkotlin/text/CharCategory;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lkotlin/text/CharCategory;->ENCLOSING_MARK:Lkotlin/text/CharCategory;

    new-instance v0, Lkotlin/text/CharCategory;

    const-string v1, "COMBINING_SPACING_MARK"

    const/16 v2, 0x8

    const-string v3, "Mc"

    invoke-direct {v0, v1, v2, v2, v3}, Lkotlin/text/CharCategory;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lkotlin/text/CharCategory;->COMBINING_SPACING_MARK:Lkotlin/text/CharCategory;

    new-instance v0, Lkotlin/text/CharCategory;

    const-string v1, "DECIMAL_DIGIT_NUMBER"

    const/16 v2, 0x9

    const-string v3, "Nd"

    invoke-direct {v0, v1, v2, v2, v3}, Lkotlin/text/CharCategory;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lkotlin/text/CharCategory;->DECIMAL_DIGIT_NUMBER:Lkotlin/text/CharCategory;

    new-instance v0, Lkotlin/text/CharCategory;

    const-string v1, "LETTER_NUMBER"

    const/16 v2, 0xa

    const-string v3, "Nl"

    invoke-direct {v0, v1, v2, v2, v3}, Lkotlin/text/CharCategory;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lkotlin/text/CharCategory;->LETTER_NUMBER:Lkotlin/text/CharCategory;

    new-instance v0, Lkotlin/text/CharCategory;

    const-string v1, "OTHER_NUMBER"

    const/16 v2, 0xb

    const-string v3, "No"

    invoke-direct {v0, v1, v2, v2, v3}, Lkotlin/text/CharCategory;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lkotlin/text/CharCategory;->OTHER_NUMBER:Lkotlin/text/CharCategory;

    new-instance v0, Lkotlin/text/CharCategory;

    const-string v1, "SPACE_SEPARATOR"

    const/16 v2, 0xc

    const-string v3, "Zs"

    invoke-direct {v0, v1, v2, v2, v3}, Lkotlin/text/CharCategory;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lkotlin/text/CharCategory;->SPACE_SEPARATOR:Lkotlin/text/CharCategory;

    new-instance v0, Lkotlin/text/CharCategory;

    const-string v1, "LINE_SEPARATOR"

    const/16 v2, 0xd

    const-string v3, "Zl"

    invoke-direct {v0, v1, v2, v2, v3}, Lkotlin/text/CharCategory;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lkotlin/text/CharCategory;->LINE_SEPARATOR:Lkotlin/text/CharCategory;

    new-instance v0, Lkotlin/text/CharCategory;

    const-string v1, "PARAGRAPH_SEPARATOR"

    const/16 v2, 0xe

    const-string v3, "Zp"

    invoke-direct {v0, v1, v2, v2, v3}, Lkotlin/text/CharCategory;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lkotlin/text/CharCategory;->PARAGRAPH_SEPARATOR:Lkotlin/text/CharCategory;

    new-instance v0, Lkotlin/text/CharCategory;

    const-string v1, "CONTROL"

    const/16 v2, 0xf

    const-string v3, "Cc"

    invoke-direct {v0, v1, v2, v2, v3}, Lkotlin/text/CharCategory;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lkotlin/text/CharCategory;->CONTROL:Lkotlin/text/CharCategory;

    new-instance v0, Lkotlin/text/CharCategory;

    const-string v1, "FORMAT"

    const/16 v2, 0x10

    const-string v3, "Cf"

    invoke-direct {v0, v1, v2, v2, v3}, Lkotlin/text/CharCategory;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lkotlin/text/CharCategory;->FORMAT:Lkotlin/text/CharCategory;

    new-instance v0, Lkotlin/text/CharCategory;

    const-string v1, "PRIVATE_USE"

    const/16 v2, 0x11

    const/16 v3, 0x12

    const-string v4, "Co"

    invoke-direct {v0, v1, v2, v3, v4}, Lkotlin/text/CharCategory;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lkotlin/text/CharCategory;->PRIVATE_USE:Lkotlin/text/CharCategory;

    new-instance v0, Lkotlin/text/CharCategory;

    const-string v1, "SURROGATE"

    const/16 v2, 0x13

    const-string v4, "Cs"

    invoke-direct {v0, v1, v3, v2, v4}, Lkotlin/text/CharCategory;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lkotlin/text/CharCategory;->SURROGATE:Lkotlin/text/CharCategory;

    new-instance v0, Lkotlin/text/CharCategory;

    const-string v1, "DASH_PUNCTUATION"

    const/16 v3, 0x14

    const-string v4, "Pd"

    invoke-direct {v0, v1, v2, v3, v4}, Lkotlin/text/CharCategory;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lkotlin/text/CharCategory;->DASH_PUNCTUATION:Lkotlin/text/CharCategory;

    new-instance v0, Lkotlin/text/CharCategory;

    const-string v1, "START_PUNCTUATION"

    const/16 v2, 0x15

    const-string v4, "Ps"

    invoke-direct {v0, v1, v3, v2, v4}, Lkotlin/text/CharCategory;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lkotlin/text/CharCategory;->START_PUNCTUATION:Lkotlin/text/CharCategory;

    new-instance v0, Lkotlin/text/CharCategory;

    const-string v1, "END_PUNCTUATION"

    const/16 v3, 0x16

    const-string v4, "Pe"

    invoke-direct {v0, v1, v2, v3, v4}, Lkotlin/text/CharCategory;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lkotlin/text/CharCategory;->END_PUNCTUATION:Lkotlin/text/CharCategory;

    new-instance v0, Lkotlin/text/CharCategory;

    const-string v1, "CONNECTOR_PUNCTUATION"

    const/16 v2, 0x17

    const-string v4, "Pc"

    invoke-direct {v0, v1, v3, v2, v4}, Lkotlin/text/CharCategory;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lkotlin/text/CharCategory;->CONNECTOR_PUNCTUATION:Lkotlin/text/CharCategory;

    new-instance v0, Lkotlin/text/CharCategory;

    const-string v1, "OTHER_PUNCTUATION"

    const/16 v3, 0x18

    const-string v4, "Po"

    invoke-direct {v0, v1, v2, v3, v4}, Lkotlin/text/CharCategory;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lkotlin/text/CharCategory;->OTHER_PUNCTUATION:Lkotlin/text/CharCategory;

    new-instance v0, Lkotlin/text/CharCategory;

    const-string v1, "MATH_SYMBOL"

    const/16 v2, 0x18

    const/16 v3, 0x19

    const-string v4, "Sm"

    invoke-direct {v0, v1, v2, v3, v4}, Lkotlin/text/CharCategory;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lkotlin/text/CharCategory;->MATH_SYMBOL:Lkotlin/text/CharCategory;

    new-instance v0, Lkotlin/text/CharCategory;

    const-string v1, "CURRENCY_SYMBOL"

    const/16 v2, 0x19

    const/16 v3, 0x1a

    const-string v4, "Sc"

    invoke-direct {v0, v1, v2, v3, v4}, Lkotlin/text/CharCategory;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lkotlin/text/CharCategory;->CURRENCY_SYMBOL:Lkotlin/text/CharCategory;

    new-instance v0, Lkotlin/text/CharCategory;

    const-string v1, "MODIFIER_SYMBOL"

    const/16 v2, 0x1a

    const/16 v3, 0x1b

    const-string v4, "Sk"

    invoke-direct {v0, v1, v2, v3, v4}, Lkotlin/text/CharCategory;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lkotlin/text/CharCategory;->MODIFIER_SYMBOL:Lkotlin/text/CharCategory;

    new-instance v0, Lkotlin/text/CharCategory;

    const-string v1, "OTHER_SYMBOL"

    const/16 v2, 0x1b

    const/16 v3, 0x1c

    const-string v4, "So"

    invoke-direct {v0, v1, v2, v3, v4}, Lkotlin/text/CharCategory;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lkotlin/text/CharCategory;->OTHER_SYMBOL:Lkotlin/text/CharCategory;

    new-instance v0, Lkotlin/text/CharCategory;

    const-string v1, "INITIAL_QUOTE_PUNCTUATION"

    const/16 v2, 0x1c

    const/16 v3, 0x1d

    const-string v4, "Pi"

    invoke-direct {v0, v1, v2, v3, v4}, Lkotlin/text/CharCategory;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lkotlin/text/CharCategory;->INITIAL_QUOTE_PUNCTUATION:Lkotlin/text/CharCategory;

    new-instance v0, Lkotlin/text/CharCategory;

    const-string v1, "FINAL_QUOTE_PUNCTUATION"

    const/16 v2, 0x1d

    const/16 v3, 0x1e

    const-string v4, "Pf"

    invoke-direct {v0, v1, v2, v3, v4}, Lkotlin/text/CharCategory;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lkotlin/text/CharCategory;->FINAL_QUOTE_PUNCTUATION:Lkotlin/text/CharCategory;

    invoke-static {}, Lkotlin/text/CharCategory;->$values()[Lkotlin/text/CharCategory;

    move-result-object v0

    sput-object v0, Lkotlin/text/CharCategory;->$VALUES:[Lkotlin/text/CharCategory;

    new-instance v1, Lkotlin/text/CharCategory$Companion;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lkotlin/text/CharCategory$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Lkotlin/text/CharCategory;->Companion:Lkotlin/text/CharCategory$Companion;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lkotlin/text/CharCategory;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lkotlin/text/CharCategory;->value:I

    iput-object p4, p0, Lkotlin/text/CharCategory;->code:Ljava/lang/String;

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lkotlin/text/CharCategory;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lkotlin/text/CharCategory;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lkotlin/text/CharCategory;
    .locals 1

    const-class v0, Lkotlin/text/CharCategory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lkotlin/text/CharCategory;

    return-object p0
.end method

.method public static values()[Lkotlin/text/CharCategory;
    .locals 1

    sget-object v0, Lkotlin/text/CharCategory;->$VALUES:[Lkotlin/text/CharCategory;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkotlin/text/CharCategory;

    return-object v0
.end method


# virtual methods
.method public final contains(C)Z
    .locals 1

    invoke-static {p1}, Ljava/lang/Character;->getType(C)I

    move-result p1

    iget v0, p0, Lkotlin/text/CharCategory;->value:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final getCode()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lkotlin/text/CharCategory;->code:Ljava/lang/String;

    return-object v0
.end method

.method public final getValue()I
    .locals 1

    iget v0, p0, Lkotlin/text/CharCategory;->value:I

    return v0
.end method
