.class public final enum Lcom/samsung/android/app/notes/sync/infos/ModelType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/app/notes/sync/infos/ModelType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/app/notes/sync/infos/ModelType;

.field public static final enum IMPORT:Lcom/samsung/android/app/notes/sync/infos/ModelType;

.field public static final enum SHARE:Lcom/samsung/android/app/notes/sync/infos/ModelType;

.field public static final enum SYNC:Lcom/samsung/android/app/notes/sync/infos/ModelType;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/samsung/android/app/notes/sync/infos/ModelType;

    const-string v1, "SYNC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/notes/sync/infos/ModelType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/notes/sync/infos/ModelType;->SYNC:Lcom/samsung/android/app/notes/sync/infos/ModelType;

    new-instance v1, Lcom/samsung/android/app/notes/sync/infos/ModelType;

    const-string v3, "IMPORT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/app/notes/sync/infos/ModelType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/app/notes/sync/infos/ModelType;->IMPORT:Lcom/samsung/android/app/notes/sync/infos/ModelType;

    new-instance v3, Lcom/samsung/android/app/notes/sync/infos/ModelType;

    const-string v5, "SHARE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/samsung/android/app/notes/sync/infos/ModelType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/app/notes/sync/infos/ModelType;->SHARE:Lcom/samsung/android/app/notes/sync/infos/ModelType;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/samsung/android/app/notes/sync/infos/ModelType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/samsung/android/app/notes/sync/infos/ModelType;->$VALUES:[Lcom/samsung/android/app/notes/sync/infos/ModelType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/app/notes/sync/infos/ModelType;
    .locals 1

    const-class v0, Lcom/samsung/android/app/notes/sync/infos/ModelType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/notes/sync/infos/ModelType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/app/notes/sync/infos/ModelType;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/notes/sync/infos/ModelType;->$VALUES:[Lcom/samsung/android/app/notes/sync/infos/ModelType;

    invoke-virtual {v0}, [Lcom/samsung/android/app/notes/sync/infos/ModelType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/app/notes/sync/infos/ModelType;

    return-object v0
.end method
