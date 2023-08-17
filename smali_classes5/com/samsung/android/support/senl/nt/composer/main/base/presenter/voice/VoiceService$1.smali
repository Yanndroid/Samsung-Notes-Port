.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager$OnStateChanged;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;I)V
    .locals 0

    return-void
.end method

.method public onPlayClicked(Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;)V
    .locals 0

    return-void
.end method

.method public onPlayComplete(Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;)V
    .locals 3

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPlayComplete, spenObjectVoice: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->e()Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->e()Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->hasCurrentObjectVoice(Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->e()Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->setStopData()V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;)V

    return-void
.end method

.method public onPlayComplete(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)V
    .locals 3

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPlayComplete, voiceData: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->e()Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->e()Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->hasCurrentVoiceData(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->e()Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->isLastVoiceData(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->e()Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->setStopData()V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;)V

    :cond_1
    return-void
.end method

.method public onPlayError(Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;I)V
    .locals 2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->c()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPlayError, spenObjectVoice: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->e()Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->e()Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->hasCurrentObjectVoice(Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->e()Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;

    move-result-object p1

    sget-object p2, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;->ERROR:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->setVoiceState(Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;)V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;)V

    return-void
.end method

.method public onPlayError(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;I)V
    .locals 3

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPlayError, voiceData: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", errorCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->e()Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->e()Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->hasCurrentVoiceData(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->e()Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;

    move-result-object p1

    sget-object p2, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;->ERROR:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->setVoiceState(Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;)V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;)V

    return-void
.end method

.method public onPlayPaused(Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;)V
    .locals 3

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPlayPaused, spenObjectVoice: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->e()Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->e()Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->hasCurrentObjectVoice(Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->e()Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;->PLAY_PAUSE:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->setVoiceState(Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotificationHelper;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotificationHelper;

    move-result-object p1

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->getPlayProgress()I

    move-result v1

    div-int/lit16 v1, v1, 0x3e8

    invoke-virtual {p1, v1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotificationHelper;->updatePlayStatus(ILcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;)V

    :cond_0
    return-void
.end method

.method public onPlayPaused(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)V
    .locals 3

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPlayPaused, voiceData: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->e()Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->e()Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->hasCurrentVoiceData(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->e()Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;->PLAY_PAUSE:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->setVoiceState(Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->e()Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->getVoiceDataIndex(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)I

    move-result p1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->e()Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->getVoiceDataTimeByIndex(I)I

    move-result p1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->e()Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->getRecordPlayingProgress()I

    move-result v0

    add-int/2addr p1, v0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotificationHelper;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotificationHelper;

    move-result-object v0

    div-int/lit16 p1, p1, 0x3e8

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotificationHelper;->updatePlayStatus(ILcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;)V

    :cond_0
    return-void
.end method

.method public onPlayPrepared(Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;I)V
    .locals 0

    return-void
.end method

.method public onPlayPrepared(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;I)V
    .locals 0

    return-void
.end method

.method public onPlayResumed(Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;)V
    .locals 3

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPlayResumed, spenObjectVoice: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->e()Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->e()Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->hasCurrentObjectVoice(Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->e()Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;->PLAY_RESUMED:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->setVoiceState(Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotificationHelper;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotificationHelper;

    move-result-object p1

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->getPlayProgress()I

    move-result v1

    div-int/lit16 v1, v1, 0x3e8

    invoke-virtual {p1, v1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotificationHelper;->updatePlayStatus(ILcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;)V

    :cond_0
    return-void
.end method

.method public onPlayResumed(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)V
    .locals 3

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPlayResumed, voiceData: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->e()Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->e()Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->hasCurrentVoiceData(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->e()Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;->PLAY_RESUMED:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->setVoiceState(Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->e()Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->getVoiceDataIndex(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)I

    move-result p1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->e()Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->getVoiceDataTimeByIndex(I)I

    move-result p1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->e()Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->getRecordPlayingProgress()I

    move-result v0

    add-int/2addr p1, v0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotificationHelper;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotificationHelper;

    move-result-object v0

    div-int/lit16 p1, p1, 0x3e8

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotificationHelper;->updatePlayStatus(ILcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;)V

    :cond_0
    return-void
.end method

.method public onPlaySeekComplete(Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;I)V
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->e()Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->e()Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->hasCurrentObjectVoice(Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->e()Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->setAudioProgress(I)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->e()Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;->PLAY_PROGRESS:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->setVoiceState(Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotificationHelper;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotificationHelper;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotificationHelper;->updatePlayTime(I)V

    :cond_0
    return-void
.end method

.method public onPlaySeekComplete(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;I)V
    .locals 2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->e()Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->e()Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->hasCurrentVoiceData(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->e()Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->getVoiceDataIndex(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)I

    move-result p1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->e()Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->setRecordPlayingInfo(II)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->e()Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;->PLAY_PROGRESS:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->setVoiceState(Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->e()Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->getVoiceDataTimeByIndex(I)I

    move-result p1

    add-int/2addr p1, p2

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotificationHelper;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->d()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotificationHelper;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotificationHelper;->updatePlayTime(I)V

    :cond_0
    return-void
.end method

.method public onPlayStarted(Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;)V
    .locals 3

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPlayStarted, spenObjectVoice: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->e()Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->e()Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->hasObjectVoice(Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->e()Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->setPlayData(Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotificationHelper;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotificationHelper;

    move-result-object p1

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->getPlayProgress()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;->PLAY_STARTED:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotificationHelper;->updatePlayStatus(ILcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;)V

    :cond_0
    return-void
.end method

.method public onPlayStarted(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)V
    .locals 3

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPlayStarted, voiceData: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->e()Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->e()Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->hasVoiceData(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->e()Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->isPlayingVoiceDataState()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotificationHelper;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->e()Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->getVoiceDataIndex(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)I

    move-result v0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->e()Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->getVoiceDataTimeByIndex(I)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotificationHelper;

    move-result-object v1

    div-int/lit16 v0, v0, 0x3e8

    sget-object v2, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;->PLAY_STARTED:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotificationHelper;->updatePlayStatus(ILcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;)V

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->e()Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->setPlayData(Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)V

    :cond_1
    return-void
.end method

.method public onPlayStopped(Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;)V
    .locals 3

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPlayStopped, spenObjectVoice: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->e()Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->e()Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->hasCurrentObjectVoice(Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->e()Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->setStopData()V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;)V

    return-void
.end method

.method public onPlayStopped(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)V
    .locals 3

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPlayStopped voiceData: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->e()Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->e()Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->hasCurrentVoiceData(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->e()Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->setStopData()V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;)V

    return-void
.end method

.method public onRecordCancelled(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)V
    .locals 3

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRecordCancelled, spenVoiceData: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->e()Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->e()Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->hasCurrentVoiceData(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->e()Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->removeErrorVoiceData(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->e()Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;->CANCEL:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->setVoiceState(Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;)V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;)V

    return-void
.end method

.method public onRecordError(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;I)V
    .locals 3

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRecordError, spenVoiceData: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", i: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->e()Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->e()Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->hasCurrentVoiceData(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->e()Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->removeErrorVoiceData(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->e()Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;

    move-result-object p1

    sget-object p2, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;->ERROR:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->setVoiceState(Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;)V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;)V

    return-void
.end method

.method public onRecordPaused(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)V
    .locals 3

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRecordPaused, spenVoiceData: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->e()Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->e()Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->hasCurrentVoiceData(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->e()Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;->RECORD_PAUSE:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->setVoiceState(Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->e()Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->getRecordingTime()I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotificationHelper;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotificationHelper;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotificationHelper;->updateRecordStatus(ILcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;)V

    :cond_0
    return-void
.end method

.method public onRecordResumed(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)V
    .locals 3

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRecordResumed, spenVoiceData: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->e()Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->e()Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->hasCurrentVoiceData(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->e()Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;->RECORD_RESUMED:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->setVoiceState(Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->e()Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->getRecordingTime()I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotificationHelper;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotificationHelper;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotificationHelper;->updateRecordStatus(ILcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;)V

    :cond_0
    return-void
.end method

.method public onRecordStarted(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->c()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRecordStarted, spenVoiceData: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->e()Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->e()Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->hasVoiceData(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->e()Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->setRecordData(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotificationHelper;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->e()Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->getVoiceDataIndex(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)I

    move-result p1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotificationHelper;

    move-result-object p2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->e()Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->getVoiceDataTimeByIndex(I)I

    move-result p1

    div-int/lit16 p1, p1, 0x3e8

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;->RECORD_STARTED:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;

    invoke-virtual {p2, p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotificationHelper;->updateRecordStatus(ILcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;)V

    :cond_0
    return-void
.end method

.method public onRecordStopped(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)V
    .locals 3

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRecordStopped, spenVoiceData: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->e()Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->e()Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->hasVoiceData(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->e()Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->setStopData()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotificationHelper;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotificationHelper;

    move-result-object p1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->e()Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->getAllRecordTime()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;->RECORD_IDLE:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotificationHelper;->updateNewRecordStatus(ILcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onRecordUpdateTime(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;I)V
    .locals 3

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRecordUpdateTime, spenVoiceData: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", i: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->e()Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->e()Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->hasCurrentVoiceData(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->e()Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->getVoiceDataIndex(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)I

    move-result p1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->e()Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->getVoiceDataTimeByIndex(I)I

    move-result p1

    div-int/lit16 p1, p1, 0x3e8

    add-int/2addr p1, p2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->e()Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->setRecordingTimeState(I)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotificationHelper;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->d()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotificationHelper;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotificationHelper;->updateRecordTime(I)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->e()Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->c()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onRecordUpdateTime, error. model is null"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
