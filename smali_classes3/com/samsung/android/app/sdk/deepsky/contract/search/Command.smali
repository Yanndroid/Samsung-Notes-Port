.class public final enum Lcom/samsung/android/app/sdk/deepsky/contract/search/Command;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/sdk/deepsky/contract/search/Command$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/app/sdk/deepsky/contract/search/Command;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0008\u0008\u0086\u0001\u0018\u0000 \n2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\nB\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\t\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/samsung/android/app/sdk/deepsky/contract/search/Command;",
        "",
        "id",
        "",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getId",
        "()Ljava/lang/String;",
        "UNKNOWN",
        "STATE",
        "CANCEL",
        "Companion",
        "deepsky-sdk-2.2.9_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/app/sdk/deepsky/contract/search/Command;

.field public static final enum CANCEL:Lcom/samsung/android/app/sdk/deepsky/contract/search/Command;

.field public static final Companion:Lcom/samsung/android/app/sdk/deepsky/contract/search/Command$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final enum STATE:Lcom/samsung/android/app/sdk/deepsky/contract/search/Command;

.field public static final enum UNKNOWN:Lcom/samsung/android/app/sdk/deepsky/contract/search/Command;


# instance fields
.field private final id:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method private static final synthetic $values()[Lcom/samsung/android/app/sdk/deepsky/contract/search/Command;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/samsung/android/app/sdk/deepsky/contract/search/Command;

    sget-object v1, Lcom/samsung/android/app/sdk/deepsky/contract/search/Command;->UNKNOWN:Lcom/samsung/android/app/sdk/deepsky/contract/search/Command;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/app/sdk/deepsky/contract/search/Command;->STATE:Lcom/samsung/android/app/sdk/deepsky/contract/search/Command;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/app/sdk/deepsky/contract/search/Command;->CANCEL:Lcom/samsung/android/app/sdk/deepsky/contract/search/Command;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/contract/search/Command;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    const-string/jumbo v3, "unknown"

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/app/sdk/deepsky/contract/search/Command;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/sdk/deepsky/contract/search/Command;->UNKNOWN:Lcom/samsung/android/app/sdk/deepsky/contract/search/Command;

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/contract/search/Command;

    const-string v1, "STATE"

    const/4 v2, 0x1

    const-string/jumbo v3, "state"

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/app/sdk/deepsky/contract/search/Command;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/sdk/deepsky/contract/search/Command;->STATE:Lcom/samsung/android/app/sdk/deepsky/contract/search/Command;

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/contract/search/Command;

    const-string v1, "CANCEL"

    const/4 v2, 0x2

    const-string v3, "cancel"

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/app/sdk/deepsky/contract/search/Command;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/sdk/deepsky/contract/search/Command;->CANCEL:Lcom/samsung/android/app/sdk/deepsky/contract/search/Command;

    invoke-static {}, Lcom/samsung/android/app/sdk/deepsky/contract/search/Command;->$values()[Lcom/samsung/android/app/sdk/deepsky/contract/search/Command;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/sdk/deepsky/contract/search/Command;->$VALUES:[Lcom/samsung/android/app/sdk/deepsky/contract/search/Command;

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/contract/search/Command$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/sdk/deepsky/contract/search/Command$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/sdk/deepsky/contract/search/Command;->Companion:Lcom/samsung/android/app/sdk/deepsky/contract/search/Command$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/samsung/android/app/sdk/deepsky/contract/search/Command;->id:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/app/sdk/deepsky/contract/search/Command;
    .locals 1

    const-class v0, Lcom/samsung/android/app/sdk/deepsky/contract/search/Command;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/sdk/deepsky/contract/search/Command;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/app/sdk/deepsky/contract/search/Command;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/sdk/deepsky/contract/search/Command;->$VALUES:[Lcom/samsung/android/app/sdk/deepsky/contract/search/Command;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/app/sdk/deepsky/contract/search/Command;

    return-object v0
.end method


# virtual methods
.method public final getId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/contract/search/Command;->id:Ljava/lang/String;

    return-object v0
.end method
