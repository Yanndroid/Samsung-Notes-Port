.class public final enum Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;

.field public static final enum EDIT:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;

.field public static final enum EXTEND:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;

.field public static final enum HIDE:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;

.field public static final enum LIST:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;

.field public static final enum NONE:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;

.field public static final enum NORMAL_PLAY:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;

.field public static final enum RECORD:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;

.field public static final enum RECORD_MINIMIZED:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;

.field public static final enum VOICEINIT:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;

.field public static final enum VOICEINIT_MINIMIZED:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;->NONE:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;

    const-string v3, "HIDE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;->HIDE:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;

    new-instance v3, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;

    const-string v5, "VOICEINIT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;->VOICEINIT:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;

    new-instance v5, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;

    const-string v7, "VOICEINIT_MINIMIZED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;->VOICEINIT_MINIMIZED:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;

    new-instance v7, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;

    const-string v9, "RECORD"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;->RECORD:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;

    new-instance v9, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;

    const-string v11, "RECORD_MINIMIZED"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;->RECORD_MINIMIZED:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;

    new-instance v11, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;

    const-string v13, "EXTEND"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;->EXTEND:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;

    new-instance v13, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;

    const-string v15, "LIST"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;->LIST:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;

    new-instance v15, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;

    const-string v14, "EDIT"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;->EDIT:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;

    new-instance v14, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;

    const-string v12, "NORMAL_PLAY"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;->NORMAL_PLAY:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;

    const/16 v12, 0xa

    new-array v12, v12, [Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;

    aput-object v0, v12, v2

    aput-object v1, v12, v4

    aput-object v3, v12, v6

    aput-object v5, v12, v8

    const/4 v0, 0x4

    aput-object v7, v12, v0

    const/4 v0, 0x5

    aput-object v9, v12, v0

    const/4 v0, 0x6

    aput-object v11, v12, v0

    const/4 v0, 0x7

    aput-object v13, v12, v0

    const/16 v0, 0x8

    aput-object v15, v12, v0

    aput-object v14, v12, v10

    sput-object v12, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;->$VALUES:[Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;
    .locals 1

    const-class v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;->$VALUES:[Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;

    invoke-virtual {v0}, [Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;

    return-object v0
.end method
