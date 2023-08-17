.class public final enum Luk/ac/ed/ph/snuggletex/definitions/CoreErrorGroup;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Luk/ac/ed/ph/snuggletex/ErrorGroup;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Luk/ac/ed/ph/snuggletex/definitions/CoreErrorGroup;",
        ">;",
        "Luk/ac/ed/ph/snuggletex/ErrorGroup;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Luk/ac/ed/ph/snuggletex/definitions/CoreErrorGroup;

.field public static final enum TDE:Luk/ac/ed/ph/snuggletex/definitions/CoreErrorGroup;

.field public static final enum TFE:Luk/ac/ed/ph/snuggletex/definitions/CoreErrorGroup;

.field public static final enum TTE:Luk/ac/ed/ph/snuggletex/definitions/CoreErrorGroup;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Luk/ac/ed/ph/snuggletex/definitions/CoreErrorGroup;

    const-string v1, "TTE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Luk/ac/ed/ph/snuggletex/definitions/CoreErrorGroup;-><init>(Ljava/lang/String;I)V

    sput-object v0, Luk/ac/ed/ph/snuggletex/definitions/CoreErrorGroup;->TTE:Luk/ac/ed/ph/snuggletex/definitions/CoreErrorGroup;

    new-instance v1, Luk/ac/ed/ph/snuggletex/definitions/CoreErrorGroup;

    const-string v3, "TFE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Luk/ac/ed/ph/snuggletex/definitions/CoreErrorGroup;-><init>(Ljava/lang/String;I)V

    sput-object v1, Luk/ac/ed/ph/snuggletex/definitions/CoreErrorGroup;->TFE:Luk/ac/ed/ph/snuggletex/definitions/CoreErrorGroup;

    new-instance v3, Luk/ac/ed/ph/snuggletex/definitions/CoreErrorGroup;

    const-string v5, "TDE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Luk/ac/ed/ph/snuggletex/definitions/CoreErrorGroup;-><init>(Ljava/lang/String;I)V

    sput-object v3, Luk/ac/ed/ph/snuggletex/definitions/CoreErrorGroup;->TDE:Luk/ac/ed/ph/snuggletex/definitions/CoreErrorGroup;

    const/4 v5, 0x3

    new-array v5, v5, [Luk/ac/ed/ph/snuggletex/definitions/CoreErrorGroup;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Luk/ac/ed/ph/snuggletex/definitions/CoreErrorGroup;->$VALUES:[Luk/ac/ed/ph/snuggletex/definitions/CoreErrorGroup;

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

.method public static valueOf(Ljava/lang/String;)Luk/ac/ed/ph/snuggletex/definitions/CoreErrorGroup;
    .locals 1

    const-class v0, Luk/ac/ed/ph/snuggletex/definitions/CoreErrorGroup;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Luk/ac/ed/ph/snuggletex/definitions/CoreErrorGroup;

    return-object p0
.end method

.method public static values()[Luk/ac/ed/ph/snuggletex/definitions/CoreErrorGroup;
    .locals 1

    sget-object v0, Luk/ac/ed/ph/snuggletex/definitions/CoreErrorGroup;->$VALUES:[Luk/ac/ed/ph/snuggletex/definitions/CoreErrorGroup;

    invoke-virtual {v0}, [Luk/ac/ed/ph/snuggletex/definitions/CoreErrorGroup;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Luk/ac/ed/ph/snuggletex/definitions/CoreErrorGroup;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPackage()Luk/ac/ed/ph/snuggletex/SnugglePackage;
    .locals 1

    invoke-static {}, Luk/ac/ed/ph/snuggletex/definitions/CorePackageDefinitions;->getPackage()Luk/ac/ed/ph/snuggletex/SnugglePackage;

    move-result-object v0

    return-object v0
.end method
