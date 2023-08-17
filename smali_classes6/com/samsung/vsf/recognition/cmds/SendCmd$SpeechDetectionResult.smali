.class public final enum Lcom/samsung/vsf/recognition/cmds/SendCmd$SpeechDetectionResult;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/vsf/recognition/cmds/SendCmd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SpeechDetectionResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/vsf/recognition/cmds/SendCmd$SpeechDetectionResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/vsf/recognition/cmds/SendCmd$SpeechDetectionResult;

.field public static final enum NONE:Lcom/samsung/vsf/recognition/cmds/SendCmd$SpeechDetectionResult;

.field public static final enum SPEECH:Lcom/samsung/vsf/recognition/cmds/SendCmd$SpeechDetectionResult;

.field public static final enum SPEECH_END:Lcom/samsung/vsf/recognition/cmds/SendCmd$SpeechDetectionResult;

.field public static final enum SPEECH_START:Lcom/samsung/vsf/recognition/cmds/SendCmd$SpeechDetectionResult;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/samsung/vsf/recognition/cmds/SendCmd$SpeechDetectionResult;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/vsf/recognition/cmds/SendCmd$SpeechDetectionResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/vsf/recognition/cmds/SendCmd$SpeechDetectionResult;->NONE:Lcom/samsung/vsf/recognition/cmds/SendCmd$SpeechDetectionResult;

    new-instance v1, Lcom/samsung/vsf/recognition/cmds/SendCmd$SpeechDetectionResult;

    const-string v3, "SPEECH_START"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/vsf/recognition/cmds/SendCmd$SpeechDetectionResult;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/vsf/recognition/cmds/SendCmd$SpeechDetectionResult;->SPEECH_START:Lcom/samsung/vsf/recognition/cmds/SendCmd$SpeechDetectionResult;

    new-instance v3, Lcom/samsung/vsf/recognition/cmds/SendCmd$SpeechDetectionResult;

    const-string v5, "SPEECH"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/samsung/vsf/recognition/cmds/SendCmd$SpeechDetectionResult;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/vsf/recognition/cmds/SendCmd$SpeechDetectionResult;->SPEECH:Lcom/samsung/vsf/recognition/cmds/SendCmd$SpeechDetectionResult;

    new-instance v5, Lcom/samsung/vsf/recognition/cmds/SendCmd$SpeechDetectionResult;

    const-string v7, "SPEECH_END"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/samsung/vsf/recognition/cmds/SendCmd$SpeechDetectionResult;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/samsung/vsf/recognition/cmds/SendCmd$SpeechDetectionResult;->SPEECH_END:Lcom/samsung/vsf/recognition/cmds/SendCmd$SpeechDetectionResult;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/samsung/vsf/recognition/cmds/SendCmd$SpeechDetectionResult;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/samsung/vsf/recognition/cmds/SendCmd$SpeechDetectionResult;->$VALUES:[Lcom/samsung/vsf/recognition/cmds/SendCmd$SpeechDetectionResult;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/vsf/recognition/cmds/SendCmd$SpeechDetectionResult;
    .locals 1

    const-class v0, Lcom/samsung/vsf/recognition/cmds/SendCmd$SpeechDetectionResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/vsf/recognition/cmds/SendCmd$SpeechDetectionResult;

    return-object p0
.end method

.method public static values()[Lcom/samsung/vsf/recognition/cmds/SendCmd$SpeechDetectionResult;
    .locals 1

    sget-object v0, Lcom/samsung/vsf/recognition/cmds/SendCmd$SpeechDetectionResult;->$VALUES:[Lcom/samsung/vsf/recognition/cmds/SendCmd$SpeechDetectionResult;

    invoke-virtual {v0}, [Lcom/samsung/vsf/recognition/cmds/SendCmd$SpeechDetectionResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/vsf/recognition/cmds/SendCmd$SpeechDetectionResult;

    return-object v0
.end method
