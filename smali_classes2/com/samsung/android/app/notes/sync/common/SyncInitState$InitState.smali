.class public final enum Lcom/samsung/android/app/notes/sync/common/SyncInitState$InitState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/notes/sync/common/SyncInitState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "InitState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/app/notes/sync/common/SyncInitState$InitState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/app/notes/sync/common/SyncInitState$InitState;

.field public static final enum Initializing:Lcom/samsung/android/app/notes/sync/common/SyncInitState$InitState;

.field public static final enum initialized:Lcom/samsung/android/app/notes/sync/common/SyncInitState$InitState;

.field public static final enum notInitialized:Lcom/samsung/android/app/notes/sync/common/SyncInitState$InitState;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/samsung/android/app/notes/sync/common/SyncInitState$InitState;

    const-string v1, "notInitialized"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/notes/sync/common/SyncInitState$InitState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/notes/sync/common/SyncInitState$InitState;->notInitialized:Lcom/samsung/android/app/notes/sync/common/SyncInitState$InitState;

    new-instance v1, Lcom/samsung/android/app/notes/sync/common/SyncInitState$InitState;

    const-string v3, "Initializing"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/app/notes/sync/common/SyncInitState$InitState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/app/notes/sync/common/SyncInitState$InitState;->Initializing:Lcom/samsung/android/app/notes/sync/common/SyncInitState$InitState;

    new-instance v3, Lcom/samsung/android/app/notes/sync/common/SyncInitState$InitState;

    const-string v5, "initialized"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/samsung/android/app/notes/sync/common/SyncInitState$InitState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/app/notes/sync/common/SyncInitState$InitState;->initialized:Lcom/samsung/android/app/notes/sync/common/SyncInitState$InitState;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/samsung/android/app/notes/sync/common/SyncInitState$InitState;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/samsung/android/app/notes/sync/common/SyncInitState$InitState;->$VALUES:[Lcom/samsung/android/app/notes/sync/common/SyncInitState$InitState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/app/notes/sync/common/SyncInitState$InitState;
    .locals 1

    const-class v0, Lcom/samsung/android/app/notes/sync/common/SyncInitState$InitState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/notes/sync/common/SyncInitState$InitState;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/app/notes/sync/common/SyncInitState$InitState;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/notes/sync/common/SyncInitState$InitState;->$VALUES:[Lcom/samsung/android/app/notes/sync/common/SyncInitState$InitState;

    invoke-virtual {v0}, [Lcom/samsung/android/app/notes/sync/common/SyncInitState$InitState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/app/notes/sync/common/SyncInitState$InitState;

    return-object v0
.end method
