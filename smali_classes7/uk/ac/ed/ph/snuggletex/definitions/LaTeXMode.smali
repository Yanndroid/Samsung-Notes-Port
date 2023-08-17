.class public final enum Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;

.field public static final enum LR:Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;

.field public static final enum MATH:Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;

.field public static final enum PARAGRAPH:Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;

.field public static final enum VERBATIM:Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;

    const-string v1, "PARAGRAPH"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;->PARAGRAPH:Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;

    new-instance v1, Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;

    const-string v3, "LR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;->LR:Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;

    new-instance v3, Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;

    const-string v5, "MATH"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;->MATH:Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;

    new-instance v5, Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;

    const-string v7, "VERBATIM"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;-><init>(Ljava/lang/String;I)V

    sput-object v5, Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;->VERBATIM:Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;

    const/4 v7, 0x4

    new-array v7, v7, [Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;->$VALUES:[Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;

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

.method public static valueOf(Ljava/lang/String;)Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;
    .locals 1

    const-class v0, Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;

    return-object p0
.end method

.method public static values()[Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;
    .locals 1

    sget-object v0, Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;->$VALUES:[Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;

    invoke-virtual {v0}, [Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;

    return-object v0
.end method
