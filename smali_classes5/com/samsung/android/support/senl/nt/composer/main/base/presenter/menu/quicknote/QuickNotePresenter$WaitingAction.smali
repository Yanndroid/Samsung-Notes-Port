.class public abstract Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$WaitingAction;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "WaitingAction"
.end annotation


# instance fields
.field public mHasActionCancelProgress:Z

.field public mInfo:Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfo;

.field public mInputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote$InputValues;

.field public mIsBodyTextSelected:Z

.field public mSuggestedContent:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote$SuggestedContent;

.field public mTaskQuickNote:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote;

.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfo;ZZ)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$WaitingAction;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$WaitingAction;->mInfo:Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfo;

    invoke-virtual {p0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$WaitingAction;->createSuggestedContent(Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfo;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote$SuggestedContent;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$WaitingAction;->mSuggestedContent:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote$SuggestedContent;

    iput-boolean p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$WaitingAction;->mIsBodyTextSelected:Z

    iput-boolean p4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$WaitingAction;->mHasActionCancelProgress:Z

    return-void
.end method


# virtual methods
.method public declared-synchronized checkInvalid(Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfo;)Z
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    if-nez p1, :cond_0

    monitor-exit p0

    return v0

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfo;->isValidExecution()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->n()Ljava/lang/String;

    move-result-object p1

    const-string v0, "checkInvalid#"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$WaitingAction;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;)Landroid/app/Activity;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$WaitingAction$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$WaitingAction$3;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$WaitingAction;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$WaitingAction;->mTaskQuickNote:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote;

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote;->cancel(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$ICancelCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    const/4 p1, 0x1

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized clear()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$WaitingAction;->mInfo:Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfo;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$WaitingAction;->mTaskQuickNote:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$WaitingAction;->mInputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote$InputValues;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$WaitingAction;->mSuggestedContent:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote$SuggestedContent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract createSuggestedContent(Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfo;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote$SuggestedContent;
.end method

.method public createSuggestedContent(Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfo;I)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote$SuggestedContent;
    .locals 2

    instance-of v0, p1, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/MediaObjectSuggestionInfo;

    if-eqz v0, :cond_0

    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote$GalleryContent;

    invoke-direct {p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote$GalleryContent;-><init>(I)V

    return-object p1

    :cond_0
    instance-of v0, p1, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/WebPageSuggestionInfo;

    if-eqz v0, :cond_1

    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote$SBrowserContent;

    invoke-direct {p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote$SBrowserContent;-><init>(I)V

    return-object p1

    :cond_1
    instance-of v0, p1, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/MessageSuggestionInfo;

    if-eqz v0, :cond_2

    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote$MessageContent;

    invoke-direct {p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote$MessageContent;-><init>(I)V

    return-object p1

    :cond_2
    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->n()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createSuggestedContent# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public executeTask()V
    .locals 13

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$WaitingAction;->mTaskQuickNote:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$WaitingAction;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->getPageManager()Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->getDocPageInfo()Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->getCurrentPageIndex()I

    move-result v10

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$WaitingAction;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->getComposerModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getCoeditAdapter()Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;->isCoeditNote()Z

    move-result v12

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote$InputValues;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$WaitingAction;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;)Landroid/app/Activity;

    move-result-object v2

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$WaitingAction;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->getNoteManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;

    move-result-object v3

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$WaitingAction;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->getPdfManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager;

    move-result-object v4

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$WaitingAction;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->getPageManager()Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

    move-result-object v5

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$WaitingAction;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->getTextManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;

    move-result-object v6

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$WaitingAction;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->getObjectManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    move-result-object v7

    new-instance v8, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$WaitingAction$1;

    invoke-direct {v8, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$WaitingAction$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$WaitingAction;)V

    iget-object v9, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$WaitingAction;->mSuggestedContent:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote$SuggestedContent;

    iget-boolean v11, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$WaitingAction;->mIsBodyTextSelected:Z

    move-object v1, v0

    invoke-direct/range {v1 .. v12}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote$InputValues;-><init>(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager;Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/common/TaskContract$IPageScroller;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote$SuggestedContent;IZZ)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$WaitingAction;->mInputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote$InputValues;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$WaitingAction;->mInfo:Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfo;

    instance-of v1, v0, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/WebPageSuggestionInfo;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$WaitingAction$2;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$WaitingAction$2;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$WaitingAction;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$WaitingAction;->mTaskQuickNote:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote;->getDefaultCallback()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;

    move-result-object v1

    :goto_0
    move-object v5, v1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$WaitingAction;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;->getTaskController()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$WaitingAction;->mTaskQuickNote:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote;

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$WaitingAction;->mInputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote$InputValues;

    const/4 v6, 0x0

    iget-boolean v7, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$WaitingAction;->mHasActionCancelProgress:Z

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;->execute(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$InputValues;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;ZZ)Z

    return-void
.end method

.method public declared-synchronized isUpdatedTask()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$WaitingAction;->mSuggestedContent:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote$SuggestedContent;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote$SuggestedContent;->getSuggestionInfo()Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfo;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract run()V
.end method

.method public declared-synchronized updateTask(Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfo;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$WaitingAction;->mSuggestedContent:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote$SuggestedContent;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote$SuggestedContent;->setSuggestionInfo(Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfo;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$WaitingAction;->mTaskQuickNote:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote;->wakeUp()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
