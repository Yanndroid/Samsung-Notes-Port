.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/MenuAttachManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DELAY_TIME_ATTACH_VIEW:I = 0xa

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mIsMenuAttached:Z

.field private final mMenuTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public final mSubManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;

.field public mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerSubContract$IView;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "MenuAttachManager"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/MenuAttachManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/MenuAttachManager;->mHandler:Landroid/os/Handler;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/MenuAttachManager;->mMenuTasks:Ljava/util/List;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/MenuAttachManager;->mSubManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/MenuAttachManager;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/MenuAttachManager;->attachHeavyView(ZZ)V

    return-void
.end method

.method private attachHeavyView(ZZ)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/MenuAttachManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "attachHeavyView# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/MenuAttachManager;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerSubContract$IView;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/MenuAttachManager;->mSubManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;->getMenuPresenterManager()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/MenuPresenterManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/MenuPresenterManager;->getRtToolbarPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/richtext/RtToolbarPresenter;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerSubContract$IView;->attachRichTextMenu(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/richtext/RtToolbarPresenter;Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/MenuAttachManager;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerSubContract$IView;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/MenuAttachManager;->mSubManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;->getMenuPresenterManager()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/MenuPresenterManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/MenuPresenterManager;->getHwToolbarPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/HwToolbarPresenter;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerSubContract$IView;->attachHwToolbarMenu(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/HwToolbarPresenter;Z)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/MenuAttachManager;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerSubContract$IView;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/MenuAttachManager;->mSubManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;->getMenuPresenterManager()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/MenuPresenterManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/MenuPresenterManager;->getDwToolbarPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/directwrite/DwToolbarPresenter;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerSubContract$IView;->attachDirectWriteMenu(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/directwrite/DwToolbarPresenter;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/MenuAttachManager;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerSubContract$IView;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/MenuAttachManager;->mSubManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;->getMenuPresenterManager()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/MenuPresenterManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/MenuPresenterManager;->getToolbarPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/ToolbarPresenter;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerSubContract$IView;->attachToolbar(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/ToolbarPresenter;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/MenuAttachManager;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerSubContract$IView;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/MenuAttachManager;->mSubManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;->getMenuPresenterManager()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/MenuPresenterManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/MenuPresenterManager;->getListPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/CompListPresenter;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerSubContract$IView;->attachCompList(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/CompListPresenter;)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/MenuAttachManager;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerSubContract$IView;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerSubContract$IView;->attachGuideTextView()V

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/MenuAttachManager;->mIsMenuAttached:Z

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/MenuAttachManager;->onAttachedHeavyView()V

    return-void
.end method

.method private onAttachedHeavyView()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/MenuAttachManager;->mSubManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;->getMenuPresenterManager()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/MenuPresenterManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/MenuPresenterManager;->updateToolbarByMode(Z)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/MenuAttachManager;->runMenuTasks()V

    return-void
.end method

.method private runMenuTasks()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/MenuAttachManager;->mMenuTasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/MenuAttachManager;->mMenuTasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method


# virtual methods
.method public addMenuTask(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/MenuAttachManager;->mMenuTasks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/MenuAttachManager;->mIsMenuAttached:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/MenuAttachManager;->runMenuTasks()V

    :cond_0
    return-void
.end method

.method public attachViews()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/MenuAttachManager;->mSubManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;->getComposerLifeState()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerLifeState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerLifeState;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerSubContract$IView;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/MenuAttachManager;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerSubContract$IView;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/MenuAttachManager;->mIsMenuAttached:Z

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/MenuAttachManager;->mSubManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;->getMenuPresenterManager()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/MenuPresenterManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/MenuPresenterManager;->getTitleEditorPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/title/TitleEditorPresenter;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerSubContract$IView;->attachTitle(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/title/TitleEditorPresenter;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/MenuAttachManager;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerSubContract$IView;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/MenuAttachManager;->mSubManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;->getMenuPresenterManager()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/MenuPresenterManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/MenuPresenterManager;->getSearchModePresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerSubContract$IView;->attachSearchModeView(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/MenuAttachManager;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerSubContract$IView;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/MenuAttachManager;->mSubManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;->getMenuPresenterManager()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/MenuPresenterManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/MenuPresenterManager;->getVoiceRecordMenuPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordMenuPresenter;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerSubContract$IView;->attachVoiceMenu(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordMenuPresenter;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/MenuAttachManager;->mSubManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;->getComposerModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getDocState()Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->isContentEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/MenuAttachManager;->mSubManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;->getComposerLifeState()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerLifeState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerLifeState;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/EntryAction;->isPdfViewAction(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/MenuAttachManager;->mSubManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;->getComposerModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getComposerSaveModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/ComposerSaveModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/ComposerSaveModel;->isAutoSaveOptionEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/MenuAttachManager;->mSubManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;->getComposerModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getCoeditAdapter()Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;->isCoeditNote()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/MenuAttachManager;->mSubManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;->getComposerLifeState()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerLifeState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerLifeState;->isChangingDoc()Z

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/MenuAttachManager;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/MenuAttachManager$1;

    invoke-direct {v3, p0, v1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/MenuAttachManager$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/MenuAttachManager;ZZ)V

    const-wide/16 v0, 0xa

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public clear()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/MenuAttachManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/MenuAttachManager;->mMenuTasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/MenuAttachManager;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerSubContract$IView;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/MenuAttachManager;->mIsMenuAttached:Z

    return-void
.end method
