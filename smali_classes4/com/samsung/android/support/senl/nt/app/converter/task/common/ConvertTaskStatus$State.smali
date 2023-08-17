.class public final enum Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskStatus$State;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskStatus$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskStatus$State;

.field public static final enum CANCELLD:Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskStatus$State;

.field public static final enum FAILED:Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskStatus$State;

.field public static final enum FINISHED:Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskStatus$State;

.field public static final enum PROGRESSING:Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskStatus$State;

.field public static final enum SUB_TASK_SUCCESS:Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskStatus$State;

.field public static final enum WAITING:Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskStatus$State;


# direct methods
.method public static constructor <clinit>()V
    .locals 13

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskStatus$State;

    const-string v1, "WAITING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskStatus$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskStatus$State;->WAITING:Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskStatus$State;

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskStatus$State;

    const-string v3, "PROGRESSING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskStatus$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskStatus$State;->PROGRESSING:Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskStatus$State;

    new-instance v3, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskStatus$State;

    const-string v5, "FAILED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskStatus$State;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskStatus$State;->FAILED:Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskStatus$State;

    new-instance v5, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskStatus$State;

    const-string v7, "CANCELLD"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskStatus$State;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskStatus$State;->CANCELLD:Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskStatus$State;

    new-instance v7, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskStatus$State;

    const-string v9, "SUB_TASK_SUCCESS"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskStatus$State;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskStatus$State;->SUB_TASK_SUCCESS:Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskStatus$State;

    new-instance v9, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskStatus$State;

    const-string v11, "FINISHED"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskStatus$State;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskStatus$State;->FINISHED:Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskStatus$State;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskStatus$State;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskStatus$State;->$VALUES:[Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskStatus$State;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskStatus$State;
    .locals 1

    const-class v0, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskStatus$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskStatus$State;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskStatus$State;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskStatus$State;->$VALUES:[Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskStatus$State;

    invoke-virtual {v0}, [Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskStatus$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskStatus$State;

    return-object v0
.end method
