.class Lcom/sec/vsg/voiceframework/process/BaseAudioProcess$MonoObject;
.super Lcom/sec/vsg/voiceframework/process/ObjectAudio;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/vsg/voiceframework/process/BaseAudioProcess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MonoObject"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/sec/vsg/voiceframework/process/BaseAudioProcess;


# direct methods
.method public constructor <init>(Lcom/sec/vsg/voiceframework/process/BaseAudioProcess;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/vsg/voiceframework/process/BaseAudioProcess$MonoObject;->this$0:Lcom/sec/vsg/voiceframework/process/BaseAudioProcess;

    invoke-direct {p0}, Lcom/sec/vsg/voiceframework/process/ObjectAudio;-><init>()V

    return-void
.end method


# virtual methods
.method public process([SI[SI)I
    .locals 1

    iget-object v0, p0, Lcom/sec/vsg/voiceframework/process/BaseAudioProcess$MonoObject;->this$0:Lcom/sec/vsg/voiceframework/process/BaseAudioProcess;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sec/vsg/voiceframework/process/BaseAudioProcess;->processUnit([SI[SI)I

    move-result p1

    return p1
.end method
