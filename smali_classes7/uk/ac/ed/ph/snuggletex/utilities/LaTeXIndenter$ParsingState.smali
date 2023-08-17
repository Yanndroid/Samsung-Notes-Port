.class final enum Luk/ac/ed/ph/snuggletex/utilities/LaTeXIndenter$ParsingState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Luk/ac/ed/ph/snuggletex/utilities/LaTeXIndenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ParsingState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Luk/ac/ed/ph/snuggletex/utilities/LaTeXIndenter$ParsingState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Luk/ac/ed/ph/snuggletex/utilities/LaTeXIndenter$ParsingState;

.field public static final enum BEGIN_DECLARATION:Luk/ac/ed/ph/snuggletex/utilities/LaTeXIndenter$ParsingState;

.field public static final enum DEFAULT:Luk/ac/ed/ph/snuggletex/utilities/LaTeXIndenter$ParsingState;

.field public static final enum EMPTY_LINES:Luk/ac/ed/ph/snuggletex/utilities/LaTeXIndenter$ParsingState;

.field public static final enum END_DECLARATION:Luk/ac/ed/ph/snuggletex/utilities/LaTeXIndenter$ParsingState;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Luk/ac/ed/ph/snuggletex/utilities/LaTeXIndenter$ParsingState;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Luk/ac/ed/ph/snuggletex/utilities/LaTeXIndenter$ParsingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Luk/ac/ed/ph/snuggletex/utilities/LaTeXIndenter$ParsingState;->DEFAULT:Luk/ac/ed/ph/snuggletex/utilities/LaTeXIndenter$ParsingState;

    new-instance v1, Luk/ac/ed/ph/snuggletex/utilities/LaTeXIndenter$ParsingState;

    const-string v3, "EMPTY_LINES"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Luk/ac/ed/ph/snuggletex/utilities/LaTeXIndenter$ParsingState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Luk/ac/ed/ph/snuggletex/utilities/LaTeXIndenter$ParsingState;->EMPTY_LINES:Luk/ac/ed/ph/snuggletex/utilities/LaTeXIndenter$ParsingState;

    new-instance v3, Luk/ac/ed/ph/snuggletex/utilities/LaTeXIndenter$ParsingState;

    const-string v5, "BEGIN_DECLARATION"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Luk/ac/ed/ph/snuggletex/utilities/LaTeXIndenter$ParsingState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Luk/ac/ed/ph/snuggletex/utilities/LaTeXIndenter$ParsingState;->BEGIN_DECLARATION:Luk/ac/ed/ph/snuggletex/utilities/LaTeXIndenter$ParsingState;

    new-instance v5, Luk/ac/ed/ph/snuggletex/utilities/LaTeXIndenter$ParsingState;

    const-string v7, "END_DECLARATION"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Luk/ac/ed/ph/snuggletex/utilities/LaTeXIndenter$ParsingState;-><init>(Ljava/lang/String;I)V

    sput-object v5, Luk/ac/ed/ph/snuggletex/utilities/LaTeXIndenter$ParsingState;->END_DECLARATION:Luk/ac/ed/ph/snuggletex/utilities/LaTeXIndenter$ParsingState;

    const/4 v7, 0x4

    new-array v7, v7, [Luk/ac/ed/ph/snuggletex/utilities/LaTeXIndenter$ParsingState;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Luk/ac/ed/ph/snuggletex/utilities/LaTeXIndenter$ParsingState;->$VALUES:[Luk/ac/ed/ph/snuggletex/utilities/LaTeXIndenter$ParsingState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Luk/ac/ed/ph/snuggletex/utilities/LaTeXIndenter$ParsingState;
    .locals 1

    const-class v0, Luk/ac/ed/ph/snuggletex/utilities/LaTeXIndenter$ParsingState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Luk/ac/ed/ph/snuggletex/utilities/LaTeXIndenter$ParsingState;

    return-object p0
.end method

.method public static values()[Luk/ac/ed/ph/snuggletex/utilities/LaTeXIndenter$ParsingState;
    .locals 1

    sget-object v0, Luk/ac/ed/ph/snuggletex/utilities/LaTeXIndenter$ParsingState;->$VALUES:[Luk/ac/ed/ph/snuggletex/utilities/LaTeXIndenter$ParsingState;

    invoke-virtual {v0}, [Luk/ac/ed/ph/snuggletex/utilities/LaTeXIndenter$ParsingState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Luk/ac/ed/ph/snuggletex/utilities/LaTeXIndenter$ParsingState;

    return-object v0
.end method
