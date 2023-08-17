.class Lcom/sec/vsg/voiceframework/process/BaseAudioProcess$StereoObject;
.super Lcom/sec/vsg/voiceframework/process/ObjectAudio;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/vsg/voiceframework/process/BaseAudioProcess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StereoObject"
.end annotation


# instance fields
.field public is2MicNS:Z

.field public final synthetic this$0:Lcom/sec/vsg/voiceframework/process/BaseAudioProcess;


# direct methods
.method public constructor <init>(Lcom/sec/vsg/voiceframework/process/BaseAudioProcess;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/vsg/voiceframework/process/BaseAudioProcess$StereoObject;->this$0:Lcom/sec/vsg/voiceframework/process/BaseAudioProcess;

    invoke-direct {p0}, Lcom/sec/vsg/voiceframework/process/ObjectAudio;-><init>()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sec/vsg/voiceframework/process/BaseAudioProcess$StereoObject;->is2MicNS:Z

    return-void
.end method

.method public constructor <init>(Lcom/sec/vsg/voiceframework/process/BaseAudioProcess;Z)V
    .locals 0

    iput-object p1, p0, Lcom/sec/vsg/voiceframework/process/BaseAudioProcess$StereoObject;->this$0:Lcom/sec/vsg/voiceframework/process/BaseAudioProcess;

    invoke-direct {p0}, Lcom/sec/vsg/voiceframework/process/ObjectAudio;-><init>()V

    iput-boolean p2, p0, Lcom/sec/vsg/voiceframework/process/BaseAudioProcess$StereoObject;->is2MicNS:Z

    return-void
.end method


# virtual methods
.method public process([SI[SI)I
    .locals 3

    div-int/lit8 v0, p2, 0x2

    new-array v1, v0, [S

    iget-boolean v2, p0, Lcom/sec/vsg/voiceframework/process/BaseAudioProcess$StereoObject;->is2MicNS:Z

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/sec/vsg/voiceframework/process/BaseAudioProcess$StereoObject;->this$0:Lcom/sec/vsg/voiceframework/process/BaseAudioProcess;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sec/vsg/voiceframework/process/BaseAudioProcess;->processUnit([SI[SI)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    invoke-static {p1, v1, v0, p2}, Lcom/sec/vsg/voiceframework/process/SignalFormat;->parseStereoToMono([S[SII)V

    iget-object p1, p0, Lcom/sec/vsg/voiceframework/process/BaseAudioProcess$StereoObject;->this$0:Lcom/sec/vsg/voiceframework/process/BaseAudioProcess;

    invoke-virtual {p1, v1, v0, p3, v0}, Lcom/sec/vsg/voiceframework/process/BaseAudioProcess;->processUnit([SI[SI)I

    move-result p1

    :goto_0
    return p1
.end method
