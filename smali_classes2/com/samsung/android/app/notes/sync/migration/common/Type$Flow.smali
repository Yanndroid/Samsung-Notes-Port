.class public final enum Lcom/samsung/android/app/notes/sync/migration/common/Type$Flow;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/app/notes/sync/migration/common/Type$Flow;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/app/notes/sync/migration/common/Type$Flow;

.field public static final enum BACKUP:Lcom/samsung/android/app/notes/sync/migration/common/Type$Flow;

.field public static final enum RESTORE:Lcom/samsung/android/app/notes/sync/migration/common/Type$Flow;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/samsung/android/app/notes/sync/migration/common/Type$Flow;

    const-string v1, "BACKUP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/notes/sync/migration/common/Type$Flow;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/notes/sync/migration/common/Type$Flow;->BACKUP:Lcom/samsung/android/app/notes/sync/migration/common/Type$Flow;

    new-instance v1, Lcom/samsung/android/app/notes/sync/migration/common/Type$Flow;

    const-string v3, "RESTORE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/app/notes/sync/migration/common/Type$Flow;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/app/notes/sync/migration/common/Type$Flow;->RESTORE:Lcom/samsung/android/app/notes/sync/migration/common/Type$Flow;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/samsung/android/app/notes/sync/migration/common/Type$Flow;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/samsung/android/app/notes/sync/migration/common/Type$Flow;->$VALUES:[Lcom/samsung/android/app/notes/sync/migration/common/Type$Flow;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/app/notes/sync/migration/common/Type$Flow;
    .locals 1

    const-class v0, Lcom/samsung/android/app/notes/sync/migration/common/Type$Flow;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/notes/sync/migration/common/Type$Flow;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/app/notes/sync/migration/common/Type$Flow;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/notes/sync/migration/common/Type$Flow;->$VALUES:[Lcom/samsung/android/app/notes/sync/migration/common/Type$Flow;

    invoke-virtual {v0}, [Lcom/samsung/android/app/notes/sync/migration/common/Type$Flow;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/app/notes/sync/migration/common/Type$Flow;

    return-object v0
.end method
