.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordingEventListenerImpl$RecordingEventAction;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordingEventListenerImpl$AbsRecordingEventAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordingEventListenerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RecordingEventAction"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordingEventListenerImpl;


# direct methods
.method private constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordingEventListenerImpl;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordingEventListenerImpl$RecordingEventAction;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordingEventListenerImpl;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordingEventListenerImpl$AbsRecordingEventAction;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordingEventListenerImpl;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/a;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordingEventListenerImpl;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordingEventListenerImpl$RecordingEventAction;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordingEventListenerImpl;)V

    return-void
.end method


# virtual methods
.method public getRecordingTimeState(I)I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordingEventListenerImpl$RecordingEventAction;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordingEventListenerImpl;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordingEventListenerImpl;->f(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordingEventListenerImpl;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->getAllRecordTime()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    add-int/2addr p1, v0

    return p1
.end method

.method public updateRecordStopState(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordingEventListenerImpl$RecordingEventAction;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordingEventListenerImpl;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordingEventListenerImpl;->e(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordingEventListenerImpl;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordListPresenter;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;->getPlayTime()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordListPresenter;->updateLastItemPlayTime(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordingEventListenerImpl$RecordingEventAction;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordingEventListenerImpl;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordingEventListenerImpl;->e(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordingEventListenerImpl;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordListPresenter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordListPresenter;->recordStop()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordingEventListenerImpl$RecordingEventAction;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordingEventListenerImpl;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordingEventListenerImpl;->e(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordingEventListenerImpl;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordListPresenter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordListPresenter;->showInitView()V

    return-void
.end method
