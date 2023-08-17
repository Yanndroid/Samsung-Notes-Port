.class final enum Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder$RecorderTaskState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RecorderTaskState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder$RecorderTaskState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder$RecorderTaskState;

.field public static final enum DO_IN_BACKGROUND:Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder$RecorderTaskState;

.field public static final enum IDLE:Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder$RecorderTaskState;

.field public static final enum ON_POST_EXECUTE:Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder$RecorderTaskState;

.field public static final enum READY:Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder$RecorderTaskState;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder$RecorderTaskState;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder$RecorderTaskState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder$RecorderTaskState;->IDLE:Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder$RecorderTaskState;

    new-instance v1, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder$RecorderTaskState;

    const-string v3, "READY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder$RecorderTaskState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder$RecorderTaskState;->READY:Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder$RecorderTaskState;

    new-instance v3, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder$RecorderTaskState;

    const-string v5, "DO_IN_BACKGROUND"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder$RecorderTaskState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder$RecorderTaskState;->DO_IN_BACKGROUND:Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder$RecorderTaskState;

    new-instance v5, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder$RecorderTaskState;

    const-string v7, "ON_POST_EXECUTE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder$RecorderTaskState;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder$RecorderTaskState;->ON_POST_EXECUTE:Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder$RecorderTaskState;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder$RecorderTaskState;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder$RecorderTaskState;->$VALUES:[Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder$RecorderTaskState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder$RecorderTaskState;
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder$RecorderTaskState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder$RecorderTaskState;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder$RecorderTaskState;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder$RecorderTaskState;->$VALUES:[Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder$RecorderTaskState;

    invoke-virtual {v0}, [Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder$RecorderTaskState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/composer/voice/AndroidMediaRecorder$RecorderTaskState;

    return-object v0
.end method
