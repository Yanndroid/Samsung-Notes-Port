.class synthetic Luk/ac/ed/ph/snuggletex/internal/TokenFixer$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Luk/ac/ed/ph/snuggletex/internal/TokenFixer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic $SwitchMap$uk$ac$ed$ph$snuggletex$definitions$LaTeXMode:[I

.field public static final synthetic $SwitchMap$uk$ac$ed$ph$snuggletex$semantics$MathBracketInterpretation$BracketType:[I

.field public static final synthetic $SwitchMap$uk$ac$ed$ph$snuggletex$tokens$TokenType:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    invoke-static {}, Luk/ac/ed/ph/snuggletex/semantics/MathBracketInterpretation$BracketType;->values()[Luk/ac/ed/ph/snuggletex/semantics/MathBracketInterpretation$BracketType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Luk/ac/ed/ph/snuggletex/internal/TokenFixer$1;->$SwitchMap$uk$ac$ed$ph$snuggletex$semantics$MathBracketInterpretation$BracketType:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Luk/ac/ed/ph/snuggletex/semantics/MathBracketInterpretation$BracketType;->OPENER:Luk/ac/ed/ph/snuggletex/semantics/MathBracketInterpretation$BracketType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Luk/ac/ed/ph/snuggletex/internal/TokenFixer$1;->$SwitchMap$uk$ac$ed$ph$snuggletex$semantics$MathBracketInterpretation$BracketType:[I

    sget-object v3, Luk/ac/ed/ph/snuggletex/semantics/MathBracketInterpretation$BracketType;->OPENER_OR_CLOSER:Luk/ac/ed/ph/snuggletex/semantics/MathBracketInterpretation$BracketType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Luk/ac/ed/ph/snuggletex/internal/TokenFixer$1;->$SwitchMap$uk$ac$ed$ph$snuggletex$semantics$MathBracketInterpretation$BracketType:[I

    sget-object v4, Luk/ac/ed/ph/snuggletex/semantics/MathBracketInterpretation$BracketType;->CLOSER:Luk/ac/ed/ph/snuggletex/semantics/MathBracketInterpretation$BracketType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    invoke-static {}, Luk/ac/ed/ph/snuggletex/tokens/TokenType;->values()[Luk/ac/ed/ph/snuggletex/tokens/TokenType;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Luk/ac/ed/ph/snuggletex/internal/TokenFixer$1;->$SwitchMap$uk$ac$ed$ph$snuggletex$tokens$TokenType:[I

    :try_start_3
    sget-object v4, Luk/ac/ed/ph/snuggletex/tokens/TokenType;->ARGUMENT_CONTAINER:Luk/ac/ed/ph/snuggletex/tokens/TokenType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v3, Luk/ac/ed/ph/snuggletex/internal/TokenFixer$1;->$SwitchMap$uk$ac$ed$ph$snuggletex$tokens$TokenType:[I

    sget-object v4, Luk/ac/ed/ph/snuggletex/tokens/TokenType;->COMMAND:Luk/ac/ed/ph/snuggletex/tokens/TokenType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v3, Luk/ac/ed/ph/snuggletex/internal/TokenFixer$1;->$SwitchMap$uk$ac$ed$ph$snuggletex$tokens$TokenType:[I

    sget-object v4, Luk/ac/ed/ph/snuggletex/tokens/TokenType;->ENVIRONMENT:Luk/ac/ed/ph/snuggletex/tokens/TokenType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    const/4 v3, 0x4

    :try_start_6
    sget-object v4, Luk/ac/ed/ph/snuggletex/internal/TokenFixer$1;->$SwitchMap$uk$ac$ed$ph$snuggletex$tokens$TokenType:[I

    sget-object v5, Luk/ac/ed/ph/snuggletex/tokens/TokenType;->BRACE_CONTAINER:Luk/ac/ed/ph/snuggletex/tokens/TokenType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v4, Luk/ac/ed/ph/snuggletex/internal/TokenFixer$1;->$SwitchMap$uk$ac$ed$ph$snuggletex$tokens$TokenType:[I

    sget-object v5, Luk/ac/ed/ph/snuggletex/tokens/TokenType;->TEXT_MODE_TEXT:Luk/ac/ed/ph/snuggletex/tokens/TokenType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    const/4 v6, 0x5

    aput v6, v4, v5
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v4, Luk/ac/ed/ph/snuggletex/internal/TokenFixer$1;->$SwitchMap$uk$ac$ed$ph$snuggletex$tokens$TokenType:[I

    sget-object v5, Luk/ac/ed/ph/snuggletex/tokens/TokenType;->VERBATIM_MODE_TEXT:Luk/ac/ed/ph/snuggletex/tokens/TokenType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    const/4 v6, 0x6

    aput v6, v4, v5
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v4, Luk/ac/ed/ph/snuggletex/internal/TokenFixer$1;->$SwitchMap$uk$ac$ed$ph$snuggletex$tokens$TokenType:[I

    sget-object v5, Luk/ac/ed/ph/snuggletex/tokens/TokenType;->LR_MODE_NEW_PARAGRAPH:Luk/ac/ed/ph/snuggletex/tokens/TokenType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    const/4 v6, 0x7

    aput v6, v4, v5
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v4, Luk/ac/ed/ph/snuggletex/internal/TokenFixer$1;->$SwitchMap$uk$ac$ed$ph$snuggletex$tokens$TokenType:[I

    sget-object v5, Luk/ac/ed/ph/snuggletex/tokens/TokenType;->MATH_NUMBER:Luk/ac/ed/ph/snuggletex/tokens/TokenType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    const/16 v6, 0x8

    aput v6, v4, v5
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v4, Luk/ac/ed/ph/snuggletex/internal/TokenFixer$1;->$SwitchMap$uk$ac$ed$ph$snuggletex$tokens$TokenType:[I

    sget-object v5, Luk/ac/ed/ph/snuggletex/tokens/TokenType;->MATH_CHARACTER:Luk/ac/ed/ph/snuggletex/tokens/TokenType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    const/16 v6, 0x9

    aput v6, v4, v5
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v4, Luk/ac/ed/ph/snuggletex/internal/TokenFixer$1;->$SwitchMap$uk$ac$ed$ph$snuggletex$tokens$TokenType:[I

    sget-object v5, Luk/ac/ed/ph/snuggletex/tokens/TokenType;->ERROR:Luk/ac/ed/ph/snuggletex/tokens/TokenType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    const/16 v6, 0xa

    aput v6, v4, v5
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    :try_start_d
    sget-object v4, Luk/ac/ed/ph/snuggletex/internal/TokenFixer$1;->$SwitchMap$uk$ac$ed$ph$snuggletex$tokens$TokenType:[I

    sget-object v5, Luk/ac/ed/ph/snuggletex/tokens/TokenType;->TAB_CHARACTER:Luk/ac/ed/ph/snuggletex/tokens/TokenType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    const/16 v6, 0xb

    aput v6, v4, v5
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    :try_start_e
    sget-object v4, Luk/ac/ed/ph/snuggletex/internal/TokenFixer$1;->$SwitchMap$uk$ac$ed$ph$snuggletex$tokens$TokenType:[I

    sget-object v5, Luk/ac/ed/ph/snuggletex/tokens/TokenType;->NEW_PARAGRAPH:Luk/ac/ed/ph/snuggletex/tokens/TokenType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    const/16 v6, 0xc

    aput v6, v4, v5
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    invoke-static {}, Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;->values()[Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Luk/ac/ed/ph/snuggletex/internal/TokenFixer$1;->$SwitchMap$uk$ac$ed$ph$snuggletex$definitions$LaTeXMode:[I

    :try_start_f
    sget-object v5, Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;->PARAGRAPH:Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :catch_f
    :try_start_10
    sget-object v1, Luk/ac/ed/ph/snuggletex/internal/TokenFixer$1;->$SwitchMap$uk$ac$ed$ph$snuggletex$definitions$LaTeXMode:[I

    sget-object v4, Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;->LR:Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v0, v1, v4
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    :catch_10
    :try_start_11
    sget-object v0, Luk/ac/ed/ph/snuggletex/internal/TokenFixer$1;->$SwitchMap$uk$ac$ed$ph$snuggletex$definitions$LaTeXMode:[I

    sget-object v1, Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;->MATH:Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    :catch_11
    :try_start_12
    sget-object v0, Luk/ac/ed/ph/snuggletex/internal/TokenFixer$1;->$SwitchMap$uk$ac$ed$ph$snuggletex$definitions$LaTeXMode:[I

    sget-object v1, Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;->VERBATIM:Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    :catch_12
    return-void
.end method
