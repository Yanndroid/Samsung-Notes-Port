.class public final enum Lcom/samsung/android/app/notes/sync/migration/common/Type$Work;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/app/notes/sync/migration/common/Type$Work;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/app/notes/sync/migration/common/Type$Work;

.field public static final enum ENTIRE:Lcom/samsung/android/app/notes/sync/migration/common/Type$Work;

.field public static final enum INSTANT:Lcom/samsung/android/app/notes/sync/migration/common/Type$Work;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/samsung/android/app/notes/sync/migration/common/Type$Work;

    const-string v1, "ENTIRE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/notes/sync/migration/common/Type$Work;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/notes/sync/migration/common/Type$Work;->ENTIRE:Lcom/samsung/android/app/notes/sync/migration/common/Type$Work;

    new-instance v1, Lcom/samsung/android/app/notes/sync/migration/common/Type$Work;

    const-string v3, "INSTANT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/app/notes/sync/migration/common/Type$Work;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/app/notes/sync/migration/common/Type$Work;->INSTANT:Lcom/samsung/android/app/notes/sync/migration/common/Type$Work;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/samsung/android/app/notes/sync/migration/common/Type$Work;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/samsung/android/app/notes/sync/migration/common/Type$Work;->$VALUES:[Lcom/samsung/android/app/notes/sync/migration/common/Type$Work;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/app/notes/sync/migration/common/Type$Work;
    .locals 1

    const-class v0, Lcom/samsung/android/app/notes/sync/migration/common/Type$Work;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/notes/sync/migration/common/Type$Work;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/app/notes/sync/migration/common/Type$Work;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/notes/sync/migration/common/Type$Work;->$VALUES:[Lcom/samsung/android/app/notes/sync/migration/common/Type$Work;

    invoke-virtual {v0}, [Lcom/samsung/android/app/notes/sync/migration/common/Type$Work;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/app/notes/sync/migration/common/Type$Work;

    return-object v0
.end method
