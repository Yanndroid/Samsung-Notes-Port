.class public final enum Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;

.field public static final enum CANCEL:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;

.field public static final enum ERROR:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;

.field public static final enum INFO:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;

.field public static final enum NONE:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;

.field public static final enum PLAY_IDLE:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;

.field public static final enum PLAY_PAUSE:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;

.field public static final enum PLAY_PROGRESS:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;

.field public static final enum PLAY_RESUMED:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;

.field public static final enum PLAY_STARTED:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;

.field public static final enum PLAY_TOTAL_TIME_UPDATE:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;

.field public static final enum RECORD_IDLE:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;

.field public static final enum RECORD_INIT:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;

.field public static final enum RECORD_PAUSE:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;

.field public static final enum RECORD_PROGRESS:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;

.field public static final enum RECORD_RESUMED:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;

.field public static final enum RECORD_STARTED:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;


# direct methods
.method public static constructor <clinit>()V
    .locals 19

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;->NONE:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;

    const-string v3, "RECORD_INIT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;->RECORD_INIT:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;

    new-instance v3, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;

    const-string v5, "RECORD_STARTED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;->RECORD_STARTED:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;

    new-instance v5, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;

    const-string v7, "RECORD_RESUMED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;->RECORD_RESUMED:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;

    new-instance v7, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;

    const-string v9, "RECORD_PROGRESS"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;->RECORD_PROGRESS:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;

    new-instance v9, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;

    const-string v11, "RECORD_PAUSE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;->RECORD_PAUSE:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;

    new-instance v11, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;

    const-string v13, "RECORD_IDLE"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;->RECORD_IDLE:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;

    new-instance v13, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;

    const-string v15, "PLAY_TOTAL_TIME_UPDATE"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;->PLAY_TOTAL_TIME_UPDATE:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;

    new-instance v15, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;

    const-string v14, "PLAY_STARTED"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;->PLAY_STARTED:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;

    new-instance v14, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;

    const-string v12, "PLAY_PROGRESS"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;->PLAY_PROGRESS:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;

    new-instance v12, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;

    const-string v10, "PLAY_RESUMED"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;->PLAY_RESUMED:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;

    new-instance v10, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;

    const-string v8, "PLAY_PAUSE"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;->PLAY_PAUSE:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;

    new-instance v8, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;

    const-string v6, "PLAY_IDLE"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;->PLAY_IDLE:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;

    new-instance v6, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;

    const-string v4, "CANCEL"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;->CANCEL:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;

    new-instance v4, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;

    const-string v2, "ERROR"

    move-object/from16 v17, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;->ERROR:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;

    const-string v6, "INFO"

    move-object/from16 v18, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;->INFO:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;

    const/16 v6, 0x10

    new-array v6, v6, [Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;

    const/16 v16, 0x0

    aput-object v0, v6, v16

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v3, v6, v0

    const/4 v0, 0x3

    aput-object v5, v6, v0

    const/4 v0, 0x4

    aput-object v7, v6, v0

    const/4 v0, 0x5

    aput-object v9, v6, v0

    const/4 v0, 0x6

    aput-object v11, v6, v0

    const/4 v0, 0x7

    aput-object v13, v6, v0

    const/16 v0, 0x8

    aput-object v15, v6, v0

    const/16 v0, 0x9

    aput-object v14, v6, v0

    const/16 v0, 0xa

    aput-object v12, v6, v0

    const/16 v0, 0xb

    aput-object v10, v6, v0

    const/16 v0, 0xc

    aput-object v8, v6, v0

    const/16 v0, 0xd

    aput-object v17, v6, v0

    const/16 v0, 0xe

    aput-object v18, v6, v0

    aput-object v2, v6, v4

    sput-object v6, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;->$VALUES:[Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;
    .locals 1

    const-class v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;->$VALUES:[Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;

    invoke-virtual {v0}, [Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;

    return-object v0
.end method
