.class Lcom/samsung/android/sdk/composer/voice/MediaKeyEventManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager$OnInnerStateChanged;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/composer/voice/MediaKeyEventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/composer/voice/MediaKeyEventManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/composer/voice/MediaKeyEventManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/composer/voice/MediaKeyEventManager$1;->this$0:Lcom/samsung/android/sdk/composer/voice/MediaKeyEventManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;I)V
    .locals 0

    return-void
.end method

.method public onPlayComplete(Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)V
    .locals 0

    return-void
.end method

.method public onPlayError(Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;I)V
    .locals 2

    iget-object p1, p0, Lcom/samsung/android/sdk/composer/voice/MediaKeyEventManager$1;->this$0:Lcom/samsung/android/sdk/composer/voice/MediaKeyEventManager;

    const/4 p2, 0x0

    const-wide/16 v0, 0x0

    const/4 p3, 0x0

    invoke-virtual {p1, p2, v0, v1, p3}, Lcom/samsung/android/sdk/composer/voice/MediaKeyEventManager;->updateMediaSessionState(IJF)V

    return-void
.end method

.method public onPlayPaused(Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)V
    .locals 3

    iget-object p1, p0, Lcom/samsung/android/sdk/composer/voice/MediaKeyEventManager$1;->this$0:Lcom/samsung/android/sdk/composer/voice/MediaKeyEventManager;

    const/4 p2, 0x2

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/samsung/android/sdk/composer/voice/MediaKeyEventManager;->updateMediaSessionState(IJF)V

    return-void
.end method

.method public onPlayPrepared(Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;I)V
    .locals 0

    return-void
.end method

.method public onPlayResumed(Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)V
    .locals 3

    iget-object p1, p0, Lcom/samsung/android/sdk/composer/voice/MediaKeyEventManager$1;->this$0:Lcom/samsung/android/sdk/composer/voice/MediaKeyEventManager;

    const/4 p2, 0x3

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/samsung/android/sdk/composer/voice/MediaKeyEventManager;->updateMediaSessionState(IJF)V

    return-void
.end method

.method public onPlaySeekComplete(Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;I)V
    .locals 0

    return-void
.end method

.method public onPlayStarted(Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)V
    .locals 3

    iget-object p1, p0, Lcom/samsung/android/sdk/composer/voice/MediaKeyEventManager$1;->this$0:Lcom/samsung/android/sdk/composer/voice/MediaKeyEventManager;

    const/4 p2, 0x3

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/samsung/android/sdk/composer/voice/MediaKeyEventManager;->updateMediaSessionState(IJF)V

    return-void
.end method

.method public onPlayStopped(Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)V
    .locals 3

    iget-object p1, p0, Lcom/samsung/android/sdk/composer/voice/MediaKeyEventManager$1;->this$0:Lcom/samsung/android/sdk/composer/voice/MediaKeyEventManager;

    const/4 p2, 0x0

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/samsung/android/sdk/composer/voice/MediaKeyEventManager;->updateMediaSessionState(IJF)V

    return-void
.end method

.method public onRecordCancelled(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)V
    .locals 4

    iget-object p1, p0, Lcom/samsung/android/sdk/composer/voice/MediaKeyEventManager$1;->this$0:Lcom/samsung/android/sdk/composer/voice/MediaKeyEventManager;

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/samsung/android/sdk/composer/voice/MediaKeyEventManager;->updateMediaSessionState(IJF)V

    return-void
.end method

.method public onRecordError(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;I)V
    .locals 3

    iget-object p1, p0, Lcom/samsung/android/sdk/composer/voice/MediaKeyEventManager$1;->this$0:Lcom/samsung/android/sdk/composer/voice/MediaKeyEventManager;

    const/4 p2, 0x0

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/samsung/android/sdk/composer/voice/MediaKeyEventManager;->updateMediaSessionState(IJF)V

    return-void
.end method

.method public onRecordPaused(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)V
    .locals 4

    iget-object p1, p0, Lcom/samsung/android/sdk/composer/voice/MediaKeyEventManager$1;->this$0:Lcom/samsung/android/sdk/composer/voice/MediaKeyEventManager;

    const/4 v0, 0x2

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/samsung/android/sdk/composer/voice/MediaKeyEventManager;->updateMediaSessionState(IJF)V

    return-void
.end method

.method public onRecordResumed(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)V
    .locals 4

    iget-object p1, p0, Lcom/samsung/android/sdk/composer/voice/MediaKeyEventManager$1;->this$0:Lcom/samsung/android/sdk/composer/voice/MediaKeyEventManager;

    const/4 v0, 0x3

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/samsung/android/sdk/composer/voice/MediaKeyEventManager;->updateMediaSessionState(IJF)V

    return-void
.end method

.method public onRecordStarted(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;Ljava/lang/String;)V
    .locals 3

    iget-object p1, p0, Lcom/samsung/android/sdk/composer/voice/MediaKeyEventManager$1;->this$0:Lcom/samsung/android/sdk/composer/voice/MediaKeyEventManager;

    const/4 p2, 0x3

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/samsung/android/sdk/composer/voice/MediaKeyEventManager;->updateMediaSessionState(IJF)V

    return-void
.end method

.method public onRecordStopped(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)V
    .locals 4

    iget-object p1, p0, Lcom/samsung/android/sdk/composer/voice/MediaKeyEventManager$1;->this$0:Lcom/samsung/android/sdk/composer/voice/MediaKeyEventManager;

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/samsung/android/sdk/composer/voice/MediaKeyEventManager;->updateMediaSessionState(IJF)V

    return-void
.end method

.method public onRecordUpdateTime(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;I)V
    .locals 0

    return-void
.end method
