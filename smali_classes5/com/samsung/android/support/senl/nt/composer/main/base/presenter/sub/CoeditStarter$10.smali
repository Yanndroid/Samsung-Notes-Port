.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$ActionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter;->requestReopen(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter;

.field public final synthetic val$docState:Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter;Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter$10;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter$10;->val$docState:Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private attachComposer()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter$10;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;->getComposerModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getDocState()Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter$10;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;->getComposerLifeState()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerLifeState;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter$10;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerLifeState;->setSavedInstanceState(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter$10;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;->getComposerLifeState()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerLifeState;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerLifeState;->setChangingDocState(Z)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter$10;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;->getComposerModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo;

    sget-object v3, Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo$OpenType;->Open:Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo$OpenType;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getUuid()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo$OpenType;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->setDocInfo(Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter$10;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;->getComposerLifeState()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerLifeState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerLifeState;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "new_doc"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter$10;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter$Contract;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter$Contract;->attachLoadedDoc(Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter$10;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;->getMenuPresenterManager()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/MenuPresenterManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/MenuPresenterManager;->getVoiceRecordMenuPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordMenuPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordMenuPresenter;->reloadVoiceMenu()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter$10;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;->getControllerManager()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;->getQuickSaveTimer()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/QuickSaveTimerController;

    move-result-object v0

    const-string v1, "reopenCoedit"

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/QuickSaveTimerController;->reset(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter$10;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter$Contract;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter$Contract;->getView()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerSubContract$IView;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerSubContract$IView;->removeCaptureComposerView()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter$10;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter;

    invoke-static {v0, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter;->e(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter;Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter$10;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;->getComposerModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getMdeManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;->setReopening(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter$10;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter;->f(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter$10;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter;->p(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter;)V

    return-void
.end method

.method private startOpenChannel(Z)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter$10;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter;->r(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter;)V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter$10;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;->getComposerModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getCoeditAdapter()Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter$10;->val$docState:Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getDoc()Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter$OpenChannelCallback;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter$10;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter;

    invoke-direct {v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter$OpenChannelCallback;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter;)V

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;->openCoeditChannel(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$ActionCallback;)V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter;->t()Ljava/lang/String;

    move-result-object v0

    const-string v1, "requestReopen#Snap# onCompleted#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter$10;->attachComposer()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter$10;->startOpenChannel(Z)V

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter;->t()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestReopen#Snap# Error# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter$10;->attachComposer()V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter$10;->startOpenChannel(Z)V

    return-void
.end method

.method public onStartOfflineMode(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter;->t()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestReopen#Snap# onDelayedError# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter$10;->onError(Ljava/lang/String;)V

    return-void
.end method
