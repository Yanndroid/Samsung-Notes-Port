.class final enum Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$ErrorType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ErrorType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$ErrorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$ErrorType;

.field public static final enum ERROR_TYPE_CANCEL:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$ErrorType;

.field public static final enum ERROR_TYPE_ERROR_MEMORY:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$ErrorType;

.field public static final enum ERROR_TYPE_ERROR_UNKNOWN:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$ErrorType;

.field public static final enum ERROR_TYPE_OVER_NOTE_SIZE:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$ErrorType;

.field public static final enum ERROR_TYPE_SUCCESS:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$ErrorType;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$ErrorType;

    const-string v1, "ERROR_TYPE_SUCCESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$ErrorType;->ERROR_TYPE_SUCCESS:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$ErrorType;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$ErrorType;

    const-string v3, "ERROR_TYPE_ERROR_MEMORY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$ErrorType;->ERROR_TYPE_ERROR_MEMORY:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$ErrorType;

    new-instance v3, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$ErrorType;

    const-string v5, "ERROR_TYPE_OVER_NOTE_SIZE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$ErrorType;->ERROR_TYPE_OVER_NOTE_SIZE:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$ErrorType;

    new-instance v5, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$ErrorType;

    const-string v7, "ERROR_TYPE_CANCEL"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$ErrorType;->ERROR_TYPE_CANCEL:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$ErrorType;

    new-instance v7, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$ErrorType;

    const-string v9, "ERROR_TYPE_ERROR_UNKNOWN"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$ErrorType;->ERROR_TYPE_ERROR_UNKNOWN:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$ErrorType;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$ErrorType;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$ErrorType;->$VALUES:[Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$ErrorType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$ErrorType;
    .locals 1

    const-class v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$ErrorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$ErrorType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$ErrorType;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$ErrorType;->$VALUES:[Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$ErrorType;

    invoke-virtual {v0}, [Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$ErrorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$ErrorType;

    return-object v0
.end method
