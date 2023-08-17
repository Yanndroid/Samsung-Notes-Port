.class public final enum Lcom/samsung/android/app/notes/sync/push/base/PushType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/app/notes/sync/push/base/PushType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/app/notes/sync/push/base/PushType;

.field public static final enum SMP_FCM:Lcom/samsung/android/app/notes/sync/push/base/PushType;

.field public static final enum SMP_SPP:Lcom/samsung/android/app/notes/sync/push/base/PushType;


# instance fields
.field private mType:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/samsung/android/app/notes/sync/push/base/PushType;

    const-string v1, "SMP_FCM"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/samsung/android/app/notes/sync/push/base/PushType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/notes/sync/push/base/PushType;->SMP_FCM:Lcom/samsung/android/app/notes/sync/push/base/PushType;

    new-instance v1, Lcom/samsung/android/app/notes/sync/push/base/PushType;

    const-string v3, "SMP_SPP"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v3}, Lcom/samsung/android/app/notes/sync/push/base/PushType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/samsung/android/app/notes/sync/push/base/PushType;->SMP_SPP:Lcom/samsung/android/app/notes/sync/push/base/PushType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/samsung/android/app/notes/sync/push/base/PushType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/samsung/android/app/notes/sync/push/base/PushType;->$VALUES:[Lcom/samsung/android/app/notes/sync/push/base/PushType;

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

    iput-object p3, p0, Lcom/samsung/android/app/notes/sync/push/base/PushType;->mType:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/app/notes/sync/push/base/PushType;
    .locals 1

    const-class v0, Lcom/samsung/android/app/notes/sync/push/base/PushType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/notes/sync/push/base/PushType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/app/notes/sync/push/base/PushType;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/notes/sync/push/base/PushType;->$VALUES:[Lcom/samsung/android/app/notes/sync/push/base/PushType;

    invoke-virtual {v0}, [Lcom/samsung/android/app/notes/sync/push/base/PushType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/app/notes/sync/push/base/PushType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/push/base/PushType;->mType:Ljava/lang/String;

    return-object v0
.end method
