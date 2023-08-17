.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordMenuPresenter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel$RestoreCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordMenuPresenter;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordMenuPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordMenuPresenter$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordMenuPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuUpdate()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordMenuPresenter$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordMenuPresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordMenuPresenter;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordMenuPresenter;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->isPlayingVoiceState()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordMenuPresenter$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordMenuPresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordMenuPresenter;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordMenuPresenter;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->isRecordingVoiceState()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordMenuPresenter$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordMenuPresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordMenuPresenter;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordMenuPresenter;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->getVoiceObject()Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordMenuPresenter$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordMenuPresenter;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordMenuPresenter;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordMenuPresenter;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->getObjectVoice()Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->hasObjectVoice(Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->getObjectVoice()Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;

    move-result-object v0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordMenuPresenter$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordMenuPresenter;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordMenuPresenter;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordMenuPresenter;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->getVoiceData()Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordMenuPresenter$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordMenuPresenter;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordMenuPresenter;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordMenuPresenter;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->getVoiceData()Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->hasVoiceData(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->getVoiceData()Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;

    move-result-object v1

    :cond_2
    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->isPlayingPaused()Z

    move-result v2

    if-eqz v2, :cond_4

    if-nez v0, :cond_3

    if-eqz v1, :cond_4

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordMenuPresenter$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordMenuPresenter;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordMenuPresenter;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordMenuPresenter;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;->PLAY_PAUSE:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->setVoiceState(Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;)V

    :cond_4
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordMenuPresenter$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordMenuPresenter;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordMenuPresenter;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordMenuPresenter;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->restorePlayData(Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)V

    return-void
.end method
