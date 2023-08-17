.class public final enum Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$TokenisationMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TokenisationMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$TokenisationMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$TokenisationMode;

.field public static final enum BRACE:Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$TokenisationMode;

.field public static final enum BUILTIN_COMMAND_ARGUMENT:Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$TokenisationMode;

.field public static final enum BUILTIN_ENVIRONMENT_CONTENT:Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$TokenisationMode;

.field public static final enum MATH:Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$TokenisationMode;

.field public static final enum TOP_LEVEL:Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$TokenisationMode;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    new-instance v0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$TokenisationMode;

    const-string v1, "TOP_LEVEL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$TokenisationMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$TokenisationMode;->TOP_LEVEL:Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$TokenisationMode;

    new-instance v1, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$TokenisationMode;

    const-string v3, "BRACE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$TokenisationMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$TokenisationMode;->BRACE:Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$TokenisationMode;

    new-instance v3, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$TokenisationMode;

    const-string v5, "MATH"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$TokenisationMode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$TokenisationMode;->MATH:Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$TokenisationMode;

    new-instance v5, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$TokenisationMode;

    const-string v7, "BUILTIN_COMMAND_ARGUMENT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$TokenisationMode;-><init>(Ljava/lang/String;I)V

    sput-object v5, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$TokenisationMode;->BUILTIN_COMMAND_ARGUMENT:Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$TokenisationMode;

    new-instance v7, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$TokenisationMode;

    const-string v9, "BUILTIN_ENVIRONMENT_CONTENT"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$TokenisationMode;-><init>(Ljava/lang/String;I)V

    sput-object v7, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$TokenisationMode;->BUILTIN_ENVIRONMENT_CONTENT:Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$TokenisationMode;

    const/4 v9, 0x5

    new-array v9, v9, [Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$TokenisationMode;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$TokenisationMode;->$VALUES:[Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$TokenisationMode;

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

.method public static valueOf(Ljava/lang/String;)Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$TokenisationMode;
    .locals 1

    const-class v0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$TokenisationMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$TokenisationMode;

    return-object p0
.end method

.method public static values()[Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$TokenisationMode;
    .locals 1

    sget-object v0, Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$TokenisationMode;->$VALUES:[Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$TokenisationMode;

    invoke-virtual {v0}, [Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$TokenisationMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Luk/ac/ed/ph/snuggletex/internal/LaTeXTokeniser$TokenisationMode;

    return-object v0
.end method
