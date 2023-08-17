.class public final enum Luk/ac/ed/ph/snuggletex/internal/util/DumpMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Luk/ac/ed/ph/snuggletex/internal/util/DumpMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Luk/ac/ed/ph/snuggletex/internal/util/DumpMode;

.field public static final enum DEEP:Luk/ac/ed/ph/snuggletex/internal/util/DumpMode;

.field public static final enum IGNORE:Luk/ac/ed/ph/snuggletex/internal/util/DumpMode;

.field public static final enum TO_STRING:Luk/ac/ed/ph/snuggletex/internal/util/DumpMode;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Luk/ac/ed/ph/snuggletex/internal/util/DumpMode;

    const-string v1, "IGNORE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Luk/ac/ed/ph/snuggletex/internal/util/DumpMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Luk/ac/ed/ph/snuggletex/internal/util/DumpMode;->IGNORE:Luk/ac/ed/ph/snuggletex/internal/util/DumpMode;

    new-instance v1, Luk/ac/ed/ph/snuggletex/internal/util/DumpMode;

    const-string v3, "TO_STRING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Luk/ac/ed/ph/snuggletex/internal/util/DumpMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Luk/ac/ed/ph/snuggletex/internal/util/DumpMode;->TO_STRING:Luk/ac/ed/ph/snuggletex/internal/util/DumpMode;

    new-instance v3, Luk/ac/ed/ph/snuggletex/internal/util/DumpMode;

    const-string v5, "DEEP"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Luk/ac/ed/ph/snuggletex/internal/util/DumpMode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Luk/ac/ed/ph/snuggletex/internal/util/DumpMode;->DEEP:Luk/ac/ed/ph/snuggletex/internal/util/DumpMode;

    const/4 v5, 0x3

    new-array v5, v5, [Luk/ac/ed/ph/snuggletex/internal/util/DumpMode;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Luk/ac/ed/ph/snuggletex/internal/util/DumpMode;->$VALUES:[Luk/ac/ed/ph/snuggletex/internal/util/DumpMode;

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

.method public static valueOf(Ljava/lang/String;)Luk/ac/ed/ph/snuggletex/internal/util/DumpMode;
    .locals 1

    const-class v0, Luk/ac/ed/ph/snuggletex/internal/util/DumpMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Luk/ac/ed/ph/snuggletex/internal/util/DumpMode;

    return-object p0
.end method

.method public static values()[Luk/ac/ed/ph/snuggletex/internal/util/DumpMode;
    .locals 1

    sget-object v0, Luk/ac/ed/ph/snuggletex/internal/util/DumpMode;->$VALUES:[Luk/ac/ed/ph/snuggletex/internal/util/DumpMode;

    invoke-virtual {v0}, [Luk/ac/ed/ph/snuggletex/internal/util/DumpMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Luk/ac/ed/ph/snuggletex/internal/util/DumpMode;

    return-object v0
.end method
