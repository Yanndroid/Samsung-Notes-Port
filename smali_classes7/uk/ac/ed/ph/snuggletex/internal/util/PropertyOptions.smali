.class public final enum Luk/ac/ed/ph/snuggletex/internal/util/PropertyOptions;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Luk/ac/ed/ph/snuggletex/internal/util/PropertyOptions;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Luk/ac/ed/ph/snuggletex/internal/util/PropertyOptions;

.field public static final enum HIDE_VALUE:Luk/ac/ed/ph/snuggletex/internal/util/PropertyOptions;

.field public static final enum IGNORE_PROPERTY:Luk/ac/ed/ph/snuggletex/internal/util/PropertyOptions;

.field public static final enum SHOW_FULL:Luk/ac/ed/ph/snuggletex/internal/util/PropertyOptions;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Luk/ac/ed/ph/snuggletex/internal/util/PropertyOptions;

    const-string v1, "IGNORE_PROPERTY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Luk/ac/ed/ph/snuggletex/internal/util/PropertyOptions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Luk/ac/ed/ph/snuggletex/internal/util/PropertyOptions;->IGNORE_PROPERTY:Luk/ac/ed/ph/snuggletex/internal/util/PropertyOptions;

    new-instance v1, Luk/ac/ed/ph/snuggletex/internal/util/PropertyOptions;

    const-string v3, "HIDE_VALUE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Luk/ac/ed/ph/snuggletex/internal/util/PropertyOptions;-><init>(Ljava/lang/String;I)V

    sput-object v1, Luk/ac/ed/ph/snuggletex/internal/util/PropertyOptions;->HIDE_VALUE:Luk/ac/ed/ph/snuggletex/internal/util/PropertyOptions;

    new-instance v3, Luk/ac/ed/ph/snuggletex/internal/util/PropertyOptions;

    const-string v5, "SHOW_FULL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Luk/ac/ed/ph/snuggletex/internal/util/PropertyOptions;-><init>(Ljava/lang/String;I)V

    sput-object v3, Luk/ac/ed/ph/snuggletex/internal/util/PropertyOptions;->SHOW_FULL:Luk/ac/ed/ph/snuggletex/internal/util/PropertyOptions;

    const/4 v5, 0x3

    new-array v5, v5, [Luk/ac/ed/ph/snuggletex/internal/util/PropertyOptions;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Luk/ac/ed/ph/snuggletex/internal/util/PropertyOptions;->$VALUES:[Luk/ac/ed/ph/snuggletex/internal/util/PropertyOptions;

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

.method public static valueOf(Ljava/lang/String;)Luk/ac/ed/ph/snuggletex/internal/util/PropertyOptions;
    .locals 1

    const-class v0, Luk/ac/ed/ph/snuggletex/internal/util/PropertyOptions;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Luk/ac/ed/ph/snuggletex/internal/util/PropertyOptions;

    return-object p0
.end method

.method public static values()[Luk/ac/ed/ph/snuggletex/internal/util/PropertyOptions;
    .locals 1

    sget-object v0, Luk/ac/ed/ph/snuggletex/internal/util/PropertyOptions;->$VALUES:[Luk/ac/ed/ph/snuggletex/internal/util/PropertyOptions;

    invoke-virtual {v0}, [Luk/ac/ed/ph/snuggletex/internal/util/PropertyOptions;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Luk/ac/ed/ph/snuggletex/internal/util/PropertyOptions;

    return-object v0
.end method
