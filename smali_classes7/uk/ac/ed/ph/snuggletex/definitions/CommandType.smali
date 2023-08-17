.class public final enum Luk/ac/ed/ph/snuggletex/definitions/CommandType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Luk/ac/ed/ph/snuggletex/definitions/CommandType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Luk/ac/ed/ph/snuggletex/definitions/CommandType;

.field public static final enum COMBINER:Luk/ac/ed/ph/snuggletex/definitions/CommandType;

.field public static final enum COMPLEX:Luk/ac/ed/ph/snuggletex/definitions/CommandType;

.field public static final enum SIMPLE:Luk/ac/ed/ph/snuggletex/definitions/CommandType;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Luk/ac/ed/ph/snuggletex/definitions/CommandType;

    const-string v1, "SIMPLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Luk/ac/ed/ph/snuggletex/definitions/CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Luk/ac/ed/ph/snuggletex/definitions/CommandType;->SIMPLE:Luk/ac/ed/ph/snuggletex/definitions/CommandType;

    new-instance v1, Luk/ac/ed/ph/snuggletex/definitions/CommandType;

    const-string v3, "COMBINER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Luk/ac/ed/ph/snuggletex/definitions/CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Luk/ac/ed/ph/snuggletex/definitions/CommandType;->COMBINER:Luk/ac/ed/ph/snuggletex/definitions/CommandType;

    new-instance v3, Luk/ac/ed/ph/snuggletex/definitions/CommandType;

    const-string v5, "COMPLEX"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Luk/ac/ed/ph/snuggletex/definitions/CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Luk/ac/ed/ph/snuggletex/definitions/CommandType;->COMPLEX:Luk/ac/ed/ph/snuggletex/definitions/CommandType;

    const/4 v5, 0x3

    new-array v5, v5, [Luk/ac/ed/ph/snuggletex/definitions/CommandType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Luk/ac/ed/ph/snuggletex/definitions/CommandType;->$VALUES:[Luk/ac/ed/ph/snuggletex/definitions/CommandType;

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

.method public static valueOf(Ljava/lang/String;)Luk/ac/ed/ph/snuggletex/definitions/CommandType;
    .locals 1

    const-class v0, Luk/ac/ed/ph/snuggletex/definitions/CommandType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Luk/ac/ed/ph/snuggletex/definitions/CommandType;

    return-object p0
.end method

.method public static values()[Luk/ac/ed/ph/snuggletex/definitions/CommandType;
    .locals 1

    sget-object v0, Luk/ac/ed/ph/snuggletex/definitions/CommandType;->$VALUES:[Luk/ac/ed/ph/snuggletex/definitions/CommandType;

    invoke-virtual {v0}, [Luk/ac/ed/ph/snuggletex/definitions/CommandType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Luk/ac/ed/ph/snuggletex/definitions/CommandType;

    return-object v0
.end method
