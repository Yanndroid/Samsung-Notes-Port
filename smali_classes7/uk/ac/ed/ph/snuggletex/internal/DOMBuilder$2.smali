.class synthetic Luk/ac/ed/ph/snuggletex/internal/DOMBuilder$2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic $SwitchMap$uk$ac$ed$ph$snuggletex$DOMOutputOptions$ErrorOutputOptions:[I

.field public static final synthetic $SwitchMap$uk$ac$ed$ph$snuggletex$definitions$MathCharacter$MathCharacterType:[I

.field public static final synthetic $SwitchMap$uk$ac$ed$ph$snuggletex$tokens$TokenType:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 13

    invoke-static {}, Luk/ac/ed/ph/snuggletex/DOMOutputOptions$ErrorOutputOptions;->values()[Luk/ac/ed/ph/snuggletex/DOMOutputOptions$ErrorOutputOptions;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder$2;->$SwitchMap$uk$ac$ed$ph$snuggletex$DOMOutputOptions$ErrorOutputOptions:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Luk/ac/ed/ph/snuggletex/DOMOutputOptions$ErrorOutputOptions;->NO_OUTPUT:Luk/ac/ed/ph/snuggletex/DOMOutputOptions$ErrorOutputOptions;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder$2;->$SwitchMap$uk$ac$ed$ph$snuggletex$DOMOutputOptions$ErrorOutputOptions:[I

    sget-object v3, Luk/ac/ed/ph/snuggletex/DOMOutputOptions$ErrorOutputOptions;->XML_FULL:Luk/ac/ed/ph/snuggletex/DOMOutputOptions$ErrorOutputOptions;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder$2;->$SwitchMap$uk$ac$ed$ph$snuggletex$DOMOutputOptions$ErrorOutputOptions:[I

    sget-object v4, Luk/ac/ed/ph/snuggletex/DOMOutputOptions$ErrorOutputOptions;->XML_SHORT:Luk/ac/ed/ph/snuggletex/DOMOutputOptions$ErrorOutputOptions;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v3, 0x4

    :try_start_3
    sget-object v4, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder$2;->$SwitchMap$uk$ac$ed$ph$snuggletex$DOMOutputOptions$ErrorOutputOptions:[I

    sget-object v5, Luk/ac/ed/ph/snuggletex/DOMOutputOptions$ErrorOutputOptions;->XHTML:Luk/ac/ed/ph/snuggletex/DOMOutputOptions$ErrorOutputOptions;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    invoke-static {}, Luk/ac/ed/ph/snuggletex/definitions/MathCharacter$MathCharacterType;->values()[Luk/ac/ed/ph/snuggletex/definitions/MathCharacter$MathCharacterType;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder$2;->$SwitchMap$uk$ac$ed$ph$snuggletex$definitions$MathCharacter$MathCharacterType:[I

    :try_start_4
    sget-object v5, Luk/ac/ed/ph/snuggletex/definitions/MathCharacter$MathCharacterType;->ALPHA:Luk/ac/ed/ph/snuggletex/definitions/MathCharacter$MathCharacterType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v4, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder$2;->$SwitchMap$uk$ac$ed$ph$snuggletex$definitions$MathCharacter$MathCharacterType:[I

    sget-object v5, Luk/ac/ed/ph/snuggletex/definitions/MathCharacter$MathCharacterType;->ORD:Luk/ac/ed/ph/snuggletex/definitions/MathCharacter$MathCharacterType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v4, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder$2;->$SwitchMap$uk$ac$ed$ph$snuggletex$definitions$MathCharacter$MathCharacterType:[I

    sget-object v5, Luk/ac/ed/ph/snuggletex/definitions/MathCharacter$MathCharacterType;->BIN:Luk/ac/ed/ph/snuggletex/definitions/MathCharacter$MathCharacterType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v2, v4, v5
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v4, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder$2;->$SwitchMap$uk$ac$ed$ph$snuggletex$definitions$MathCharacter$MathCharacterType:[I

    sget-object v5, Luk/ac/ed/ph/snuggletex/definitions/MathCharacter$MathCharacterType;->OP:Luk/ac/ed/ph/snuggletex/definitions/MathCharacter$MathCharacterType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    const/4 v4, 0x5

    :try_start_8
    sget-object v5, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder$2;->$SwitchMap$uk$ac$ed$ph$snuggletex$definitions$MathCharacter$MathCharacterType:[I

    sget-object v6, Luk/ac/ed/ph/snuggletex/definitions/MathCharacter$MathCharacterType;->PUNCT:Luk/ac/ed/ph/snuggletex/definitions/MathCharacter$MathCharacterType;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    const/4 v5, 0x6

    :try_start_9
    sget-object v6, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder$2;->$SwitchMap$uk$ac$ed$ph$snuggletex$definitions$MathCharacter$MathCharacterType:[I

    sget-object v7, Luk/ac/ed/ph/snuggletex/definitions/MathCharacter$MathCharacterType;->REL:Luk/ac/ed/ph/snuggletex/definitions/MathCharacter$MathCharacterType;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aput v5, v6, v7
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    const/4 v6, 0x7

    :try_start_a
    sget-object v7, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder$2;->$SwitchMap$uk$ac$ed$ph$snuggletex$definitions$MathCharacter$MathCharacterType:[I

    sget-object v8, Luk/ac/ed/ph/snuggletex/definitions/MathCharacter$MathCharacterType;->CLOSE:Luk/ac/ed/ph/snuggletex/definitions/MathCharacter$MathCharacterType;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aput v6, v7, v8
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    const/16 v7, 0x8

    :try_start_b
    sget-object v8, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder$2;->$SwitchMap$uk$ac$ed$ph$snuggletex$definitions$MathCharacter$MathCharacterType:[I

    sget-object v9, Luk/ac/ed/ph/snuggletex/definitions/MathCharacter$MathCharacterType;->FENCE:Luk/ac/ed/ph/snuggletex/definitions/MathCharacter$MathCharacterType;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aput v7, v8, v9
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    const/16 v8, 0x9

    :try_start_c
    sget-object v9, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder$2;->$SwitchMap$uk$ac$ed$ph$snuggletex$definitions$MathCharacter$MathCharacterType:[I

    sget-object v10, Luk/ac/ed/ph/snuggletex/definitions/MathCharacter$MathCharacterType;->OPEN:Luk/ac/ed/ph/snuggletex/definitions/MathCharacter$MathCharacterType;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aput v8, v9, v10
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    const/16 v9, 0xa

    :try_start_d
    sget-object v10, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder$2;->$SwitchMap$uk$ac$ed$ph$snuggletex$definitions$MathCharacter$MathCharacterType:[I

    sget-object v11, Luk/ac/ed/ph/snuggletex/definitions/MathCharacter$MathCharacterType;->NUMERIC:Luk/ac/ed/ph/snuggletex/definitions/MathCharacter$MathCharacterType;

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    aput v9, v10, v11
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    :try_start_e
    sget-object v10, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder$2;->$SwitchMap$uk$ac$ed$ph$snuggletex$definitions$MathCharacter$MathCharacterType:[I

    sget-object v11, Luk/ac/ed/ph/snuggletex/definitions/MathCharacter$MathCharacterType;->ACCENT:Luk/ac/ed/ph/snuggletex/definitions/MathCharacter$MathCharacterType;

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    const/16 v12, 0xb

    aput v12, v10, v11
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    invoke-static {}, Luk/ac/ed/ph/snuggletex/tokens/TokenType;->values()[Luk/ac/ed/ph/snuggletex/tokens/TokenType;

    move-result-object v10

    array-length v10, v10

    new-array v10, v10, [I

    sput-object v10, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder$2;->$SwitchMap$uk$ac$ed$ph$snuggletex$tokens$TokenType:[I

    :try_start_f
    sget-object v11, Luk/ac/ed/ph/snuggletex/tokens/TokenType;->COMMAND:Luk/ac/ed/ph/snuggletex/tokens/TokenType;

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    aput v1, v10, v11
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :catch_f
    :try_start_10
    sget-object v1, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder$2;->$SwitchMap$uk$ac$ed$ph$snuggletex$tokens$TokenType:[I

    sget-object v10, Luk/ac/ed/ph/snuggletex/tokens/TokenType;->ENVIRONMENT:Luk/ac/ed/ph/snuggletex/tokens/TokenType;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aput v0, v1, v10
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    :catch_10
    :try_start_11
    sget-object v0, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder$2;->$SwitchMap$uk$ac$ed$ph$snuggletex$tokens$TokenType:[I

    sget-object v1, Luk/ac/ed/ph/snuggletex/tokens/TokenType;->BRACE_CONTAINER:Luk/ac/ed/ph/snuggletex/tokens/TokenType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    :catch_11
    :try_start_12
    sget-object v0, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder$2;->$SwitchMap$uk$ac$ed$ph$snuggletex$tokens$TokenType:[I

    sget-object v1, Luk/ac/ed/ph/snuggletex/tokens/TokenType;->ERROR:Luk/ac/ed/ph/snuggletex/tokens/TokenType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    :catch_12
    :try_start_13
    sget-object v0, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder$2;->$SwitchMap$uk$ac$ed$ph$snuggletex$tokens$TokenType:[I

    sget-object v1, Luk/ac/ed/ph/snuggletex/tokens/TokenType;->TEXT_MODE_TEXT:Luk/ac/ed/ph/snuggletex/tokens/TokenType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v4, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_13

    :catch_13
    :try_start_14
    sget-object v0, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder$2;->$SwitchMap$uk$ac$ed$ph$snuggletex$tokens$TokenType:[I

    sget-object v1, Luk/ac/ed/ph/snuggletex/tokens/TokenType;->VERBATIM_MODE_TEXT:Luk/ac/ed/ph/snuggletex/tokens/TokenType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v5, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_14

    :catch_14
    :try_start_15
    sget-object v0, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder$2;->$SwitchMap$uk$ac$ed$ph$snuggletex$tokens$TokenType:[I

    sget-object v1, Luk/ac/ed/ph/snuggletex/tokens/TokenType;->LR_MODE_NEW_PARAGRAPH:Luk/ac/ed/ph/snuggletex/tokens/TokenType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v6, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_15

    :catch_15
    :try_start_16
    sget-object v0, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder$2;->$SwitchMap$uk$ac$ed$ph$snuggletex$tokens$TokenType:[I

    sget-object v1, Luk/ac/ed/ph/snuggletex/tokens/TokenType;->MATH_NUMBER:Luk/ac/ed/ph/snuggletex/tokens/TokenType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v7, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_16

    :catch_16
    :try_start_17
    sget-object v0, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder$2;->$SwitchMap$uk$ac$ed$ph$snuggletex$tokens$TokenType:[I

    sget-object v1, Luk/ac/ed/ph/snuggletex/tokens/TokenType;->MATH_CHARACTER:Luk/ac/ed/ph/snuggletex/tokens/TokenType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v8, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_17

    :catch_17
    :try_start_18
    sget-object v0, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder$2;->$SwitchMap$uk$ac$ed$ph$snuggletex$tokens$TokenType:[I

    sget-object v1, Luk/ac/ed/ph/snuggletex/tokens/TokenType;->TAB_CHARACTER:Luk/ac/ed/ph/snuggletex/tokens/TokenType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v9, v0, v1
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_18

    :catch_18
    return-void
.end method
