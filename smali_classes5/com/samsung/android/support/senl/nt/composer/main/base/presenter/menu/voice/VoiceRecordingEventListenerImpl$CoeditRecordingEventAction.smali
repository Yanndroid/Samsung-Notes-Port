.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordingEventListenerImpl$CoeditRecordingEventAction;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordingEventListenerImpl$AbsRecordingEventAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordingEventListenerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CoeditRecordingEventAction"
.end annotation


# instance fields
.field private final mComposerPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordingEventListenerImpl;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordingEventListenerImpl;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordingEventListenerImpl$CoeditRecordingEventAction;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordingEventListenerImpl;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordingEventListenerImpl$AbsRecordingEventAction;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordingEventListenerImpl;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/a;)V

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordingEventListenerImpl$CoeditRecordingEventAction;->mComposerPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

    return-void
.end method


# virtual methods
.method public getRecordingTimeState(I)I
    .locals 0

    return p1
.end method

.method public updateRecordStopState(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordingEventListenerImpl$CoeditRecordingEventAction;->mComposerPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->getPageManager()Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->getDocPageInfo()Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->getCurrentPageIndex()I

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordingEventListenerImpl$CoeditRecordingEventAction;->mComposerPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->getObjectManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;->getAttachedFile()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v1, v1, v4

    invoke-virtual {v2, v0, v3, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->insertObjectVoice(ILjava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordingEventListenerImpl$CoeditRecordingEventAction;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordingEventListenerImpl;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordingEventListenerImpl;->f(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordingEventListenerImpl;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->removeErrorVoiceData(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordingEventListenerImpl$CoeditRecordingEventAction;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordingEventListenerImpl;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordingEventListenerImpl;->e(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordingEventListenerImpl;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordListPresenter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordListPresenter;->recordStop()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordingEventListenerImpl$CoeditRecordingEventAction;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordingEventListenerImpl;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordingEventListenerImpl;->f(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordingEventListenerImpl;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->getVoiceDataListSize()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordingEventListenerImpl$CoeditRecordingEventAction;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordingEventListenerImpl;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordingEventListenerImpl;->e(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordingEventListenerImpl;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordListPresenter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordListPresenter;->hideAllView()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordingEventListenerImpl$CoeditRecordingEventAction;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordingEventListenerImpl;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordingEventListenerImpl;->e(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordingEventListenerImpl;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordListPresenter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordListPresenter;->showInitView()V

    :goto_0
    return-void
.end method
