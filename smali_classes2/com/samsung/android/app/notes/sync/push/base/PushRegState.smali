.class public final enum Lcom/samsung/android/app/notes/sync/push/base/PushRegState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/app/notes/sync/push/base/PushRegState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/app/notes/sync/push/base/PushRegState;

.field public static final enum NOT_REGISTERED:Lcom/samsung/android/app/notes/sync/push/base/PushRegState;

.field public static final enum REGISTERED:Lcom/samsung/android/app/notes/sync/push/base/PushRegState;

.field public static final enum REGISTERING:Lcom/samsung/android/app/notes/sync/push/base/PushRegState;


# instance fields
.field private mState:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/samsung/android/app/notes/sync/push/base/PushRegState;

    const-string v1, "NOT_REGISTERED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/samsung/android/app/notes/sync/push/base/PushRegState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/notes/sync/push/base/PushRegState;->NOT_REGISTERED:Lcom/samsung/android/app/notes/sync/push/base/PushRegState;

    new-instance v1, Lcom/samsung/android/app/notes/sync/push/base/PushRegState;

    const-string v3, "REGISTERING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v3}, Lcom/samsung/android/app/notes/sync/push/base/PushRegState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/samsung/android/app/notes/sync/push/base/PushRegState;->REGISTERING:Lcom/samsung/android/app/notes/sync/push/base/PushRegState;

    new-instance v3, Lcom/samsung/android/app/notes/sync/push/base/PushRegState;

    const-string v5, "REGISTERED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v5}, Lcom/samsung/android/app/notes/sync/push/base/PushRegState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/samsung/android/app/notes/sync/push/base/PushRegState;->REGISTERED:Lcom/samsung/android/app/notes/sync/push/base/PushRegState;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/samsung/android/app/notes/sync/push/base/PushRegState;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/samsung/android/app/notes/sync/push/base/PushRegState;->$VALUES:[Lcom/samsung/android/app/notes/sync/push/base/PushRegState;

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

    iput-object p3, p0, Lcom/samsung/android/app/notes/sync/push/base/PushRegState;->mState:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/app/notes/sync/push/base/PushRegState;
    .locals 1

    const-class v0, Lcom/samsung/android/app/notes/sync/push/base/PushRegState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/notes/sync/push/base/PushRegState;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/app/notes/sync/push/base/PushRegState;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/notes/sync/push/base/PushRegState;->$VALUES:[Lcom/samsung/android/app/notes/sync/push/base/PushRegState;

    invoke-virtual {v0}, [Lcom/samsung/android/app/notes/sync/push/base/PushRegState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/app/notes/sync/push/base/PushRegState;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/push/base/PushRegState;->mState:Ljava/lang/String;

    return-object v0
.end method
