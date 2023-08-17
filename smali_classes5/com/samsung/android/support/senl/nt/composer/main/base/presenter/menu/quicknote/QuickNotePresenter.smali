.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/quicknote/QuickNoteModel$OnUpdateListener;
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter$ActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$PreTouchListenerImpl;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$TaskChangeCallbackImpl;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$AddContent;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$AddLink;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$WaitingAction;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$PostJobManager;
    }
.end annotation


# static fields
.field private static final KEY:Ljava/lang/String; = "QuickNotePresenter"

.field private static final SUBSCRIBE_SUGGESTION_DELAY:J = 0x3e8L

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mCanceled:Z

.field private mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

.field private mComposerViewPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

.field private mControllerManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;

.field private mDialogManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;

.field private mDisabled:Z

.field private mExternalListenerManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/common/QuickNotePresenterContract$IExternalListenerManager;

.field private mFragment:Landroidx/fragment/app/Fragment;

.field private final mFrontTaskChecker:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/FrontTaskChecker;

.field private mInsertedIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingChangeLayout:Z

.field private mPendingInit:Z

.field private mPendingPermission:Z

.field private mPendingStart:Z

.field private final mPostJobManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$PostJobManager;

.field private final mPreTouchListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$PreTouchListenerImpl;

.field private mQuickNoteModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/quicknote/QuickNoteModel;

.field private mResultSuggested:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/quicknote/QuickNoteModel$SuggestedData;

.field private final mTaskChangeCallback:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$TaskChangeCallbackImpl;

.field private mWaitingAction:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$WaitingAction;

.field private mWindowMode:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "QuickNotePresenter"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->mPendingStart:Z

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->mPendingInit:Z

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->mPendingChangeLayout:Z

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->mPendingPermission:Z

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$PostJobManager;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$PostJobManager;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->mPostJobManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$PostJobManager;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/ContextAwarenessFeature;->isContextAwarenessEnabled()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->mDisabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->mCanceled:Z

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/FrontTaskChecker;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/FrontTaskChecker;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->mFrontTaskChecker:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/FrontTaskChecker;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->mInsertedIds:Ljava/util/ArrayList;

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$TaskChangeCallbackImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$TaskChangeCallbackImpl;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/e;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->mTaskChangeCallback:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$TaskChangeCallbackImpl;

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$PreTouchListenerImpl;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$PreTouchListenerImpl;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/d;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->mPreTouchListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$PreTouchListenerImpl;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->mComposerViewPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

    return-object p0
.end method

.method private canNotAdd(Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfo;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getMdeManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;->getCoeditAdapter()Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;->isCoeditNote()Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of p1, p1, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/MediaObjectSuggestionInfo;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getComposerSpenDocModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerSpenDocModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerSpenDocModel;->getLargeSizeItemsCount()I

    move-result p1

    const/16 v0, 0x64

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->TAG:Ljava/lang/String;

    const-string v0, "canNotAdd#"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Restriction;->showToastCoeditErrorOverLargeMaxCount(Landroid/content/Context;)Z

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private checkDuplicatedIds(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfo;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfo;

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->mInsertedIds:Ljava/util/ArrayList;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSuggested# duplicated# "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    invoke-virtual {p0, v4, p1, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->hideQuickNoteDialog(Ljava/lang/String;Ljava/util/List;Z)V

    goto :goto_1

    :cond_2
    const-string p1, "onSuggested# duplicated# remove items"

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->hideQuickNoteDialog(Ljava/lang/String;Ljava/util/List;Z)V

    :cond_3
    :goto_1
    return-object v0
.end method

.method private clearWaitingAction()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->TAG:Ljava/lang/String;

    const-string v1, "clearWaitingAction# "

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->mWaitingAction:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$WaitingAction;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$WaitingAction;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->mWaitingAction:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$WaitingAction;

    :cond_0
    return-void
.end method

.method public static bridge synthetic d(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->mControllerManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->mDialogManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;)Landroidx/fragment/app/Fragment;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->mFragment:Landroidx/fragment/app/Fragment;

    return-object p0
.end method

.method public static bridge synthetic g(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/FrontTaskChecker;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->mFrontTaskChecker:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/FrontTaskChecker;

    return-object p0
.end method

.method public static bridge synthetic h(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/quicknote/QuickNoteModel;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->mQuickNoteModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/quicknote/QuickNoteModel;

    return-object p0
.end method

.method public static bridge synthetic i(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/quicknote/QuickNoteModel$SuggestedData;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->mResultSuggested:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/quicknote/QuickNoteModel$SuggestedData;

    return-object p0
.end method

.method private isBodyTextSelected()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->mComposerViewPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->getObjectManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->isSelectedBodyText()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getModeManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;->Text:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;->isMode(Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->isSelectedObjectOfObjectSpan()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isNotAvailableToUpdate()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->mControllerManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;->getViewState()Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/ViewState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/ViewState;->isStopped()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->TAG:Ljava/lang/String;

    const-string v2, "isNotAvailableToUpdate# view state is stopped"

    :goto_0
    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->isEditable()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getMdeInfo()Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;->hasWritePermission()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->getMultiWindowMode(Landroid/app/Activity;)I

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->TAG:Ljava/lang/String;

    const-string v2, "isNotAvailableToUpdate# full mode"

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getModeManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;->isDeleteOnlyMode()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->TAG:Ljava/lang/String;

    const-string v2, "isNotAvailableToUpdate# delete only"

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getModeManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;->isEditModeWithoutReadOnly()Z

    move-result v0

    xor-int/2addr v0, v1

    return v0

    :cond_4
    :goto_1
    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->TAG:Ljava/lang/String;

    const-string v2, "isNotAvailableToUpdate# not editable or mde member"

    goto :goto_0
.end method

.method private isNotEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->mDisabled:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->mCanceled:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isNotInitialized()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->mDialogManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isOptionEnabled()Z
    .locals 3

    const-string v0, "Settings"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    const-string v1, "settings_clipping_options"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static bridge synthetic j(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$WaitingAction;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->mWaitingAction:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$WaitingAction;

    return-object p0
.end method

.method public static bridge synthetic k(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->mPendingPermission:Z

    return-void
.end method

.method public static bridge synthetic l(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->clearWaitingAction()V

    return-void
.end method

.method public static bridge synthetic m(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;)Z
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->isNotInitialized()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic n()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private onPreAddAction(Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfo;Lcom/samsung/android/support/senl/cm/base/framework/support/BOOLEAN;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->requestExecuteAction(Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfo;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->isBodyTextSelected()Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/BOOLEAN;->setValue(Z)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->mComposerViewPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->getObjectManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->clearSelectObject()V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->mInsertedIds:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfo;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private requestExecuteAction(Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfo;)V
    .locals 3

    invoke-static {}, Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessController;->getInstance()Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessController;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/param/ContextAwarenessParam$ContextAwarenessParamBuilder;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/param/ContextAwarenessParam$ContextAwarenessParamBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/param/ContextAwarenessParam$ContextAwarenessParamBuilder;->setActivity(Landroid/app/Activity;)Lcom/samsung/android/support/senl/nt/model/contextawareness/common/param/ContextAwarenessParam$ContextAwarenessParamBuilder;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/param/IContextAwarenessParam$Type;->EXECUTE_ACTION:Lcom/samsung/android/support/senl/nt/model/contextawareness/common/param/IContextAwarenessParam$Type;

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/param/ContextAwarenessParam$ContextAwarenessParamBuilder;->setType(Lcom/samsung/android/support/senl/nt/model/contextawareness/common/param/IContextAwarenessParam$Type;)Lcom/samsung/android/support/senl/nt/model/contextawareness/common/param/ContextAwarenessParam$ContextAwarenessParamBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/param/ContextAwarenessParam$ContextAwarenessParamBuilder;->setSuggestionInfo(Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfo;)Lcom/samsung/android/support/senl/nt/model/contextawareness/common/param/ContextAwarenessParam$ContextAwarenessParamBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/param/ContextAwarenessParam$ContextAwarenessParamBuilder;->build()Lcom/samsung/android/support/senl/nt/model/contextawareness/common/param/ContextAwarenessParam;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessController;->postContextAwarenessTask(Lcom/samsung/android/support/senl/nt/model/contextawareness/common/param/ContextAwarenessParam;)V

    return-void
.end method

.method private requestSubscribeSuggestion()V
    .locals 3

    invoke-static {}, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/ContextAwarenessFeature;->needDelayWhenRequestSubscribe()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->mPostJobManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$PostJobManager;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$PostJobManager;->postSubscribe(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessController;->getInstance()Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessController;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/param/ContextAwarenessParam$ContextAwarenessParamBuilder;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/param/ContextAwarenessParam$ContextAwarenessParamBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/param/ContextAwarenessParam$ContextAwarenessParamBuilder;->setCaller(I)Lcom/samsung/android/support/senl/nt/model/contextawareness/common/param/ContextAwarenessParam$ContextAwarenessParamBuilder;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/param/IContextAwarenessParam$Type;->SUBSCRIBE_SUGGESTION:Lcom/samsung/android/support/senl/nt/model/contextawareness/common/param/IContextAwarenessParam$Type;

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/param/ContextAwarenessParam$ContextAwarenessParamBuilder;->setType(Lcom/samsung/android/support/senl/nt/model/contextawareness/common/param/IContextAwarenessParam$Type;)Lcom/samsung/android/support/senl/nt/model/contextawareness/common/param/ContextAwarenessParam$ContextAwarenessParamBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/param/ContextAwarenessParam$ContextAwarenessParamBuilder;->build()Lcom/samsung/android/support/senl/nt/model/contextawareness/common/param/ContextAwarenessParam;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessController;->postContextAwarenessTask(Lcom/samsung/android/support/senl/nt/model/contextawareness/common/param/ContextAwarenessParam;)V

    :goto_0
    return-void
.end method

.method private requestSuggestion()V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->isNotEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->isOptionEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->mFrontTaskChecker:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/FrontTaskChecker;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->mActivity:Landroid/app/Activity;

    sget-object v2, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/ContextAwarenessFeature;->SUPPORTED_DONATED_APPS:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/FrontTaskChecker;->isFrontTask(Landroid/app/Activity;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->TAG:Ljava/lang/String;

    const-string v1, "requestSuggestion#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessController;->getInstance()Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessController;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/param/ContextAwarenessParam$ContextAwarenessParamBuilder;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/param/ContextAwarenessParam$ContextAwarenessParamBuilder;-><init>()V

    sget-object v2, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/param/IContextAwarenessParam$Type;->REQUEST_SUGGESTION:Lcom/samsung/android/support/senl/nt/model/contextawareness/common/param/IContextAwarenessParam$Type;

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/param/ContextAwarenessParam$ContextAwarenessParamBuilder;->setType(Lcom/samsung/android/support/senl/nt/model/contextawareness/common/param/IContextAwarenessParam$Type;)Lcom/samsung/android/support/senl/nt/model/contextawareness/common/param/ContextAwarenessParam$ContextAwarenessParamBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/param/ContextAwarenessParam$ContextAwarenessParamBuilder;->build()Lcom/samsung/android/support/senl/nt/model/contextawareness/common/param/ContextAwarenessParam;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessController;->postContextAwarenessTask(Lcom/samsung/android/support/senl/nt/model/contextawareness/common/param/ContextAwarenessParam;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private requestUnsubscribeSuggestion()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->mPostJobManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$PostJobManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$PostJobManager;->clearSubscribeRunnable()V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessController;->getInstance()Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessController;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/param/ContextAwarenessParam$ContextAwarenessParamBuilder;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/param/ContextAwarenessParam$ContextAwarenessParamBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/param/ContextAwarenessParam$ContextAwarenessParamBuilder;->setCaller(I)Lcom/samsung/android/support/senl/nt/model/contextawareness/common/param/ContextAwarenessParam$ContextAwarenessParamBuilder;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/param/IContextAwarenessParam$Type;->UNSUBSCRIBE_SUGGESTION:Lcom/samsung/android/support/senl/nt/model/contextawareness/common/param/IContextAwarenessParam$Type;

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/param/ContextAwarenessParam$ContextAwarenessParamBuilder;->setType(Lcom/samsung/android/support/senl/nt/model/contextawareness/common/param/IContextAwarenessParam$Type;)Lcom/samsung/android/support/senl/nt/model/contextawareness/common/param/ContextAwarenessParam$ContextAwarenessParamBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/param/ContextAwarenessParam$ContextAwarenessParamBuilder;->build()Lcom/samsung/android/support/senl/nt/model/contextawareness/common/param/ContextAwarenessParam;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessController;->postContextAwarenessTask(Lcom/samsung/android/support/senl/nt/model/contextawareness/common/param/ContextAwarenessParam;)V

    return-void
.end method

.method private showOnlyFirstWebCardPreview(Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfo;)Z
    .locals 1

    instance-of p1, p1, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/WebPageSuggestionInfo;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/WebCardUtil;->isFirstCheckToShowWebPreviewsPopup()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/WebCardUtil;->isShowWebPreviewsSettingEnabled()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->mDialogManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$4;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;)V

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/WebCardUtil;->showOnlyFirstWebCardPreviewDialog(Lcom/samsung/android/support/senl/nt/composer/main/base/util/WebCardUtil$IDialogManager;Landroid/content/DialogInterface$OnDismissListener;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method private start()V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->isNotEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->isNotInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->TAG:Ljava/lang/String;

    const-string v1, "start# not initialized"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->mPendingStart:Z

    return-void

    :cond_1
    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->TAG:Ljava/lang/String;

    const-string v1, "start# "

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->requestSubscribeSuggestion()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->requestSuggestion()V

    return-void
.end method


# virtual methods
.method public doPendingAction()V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->mDisabled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->mQuickNoteModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/quicknote/QuickNoteModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/quicknote/QuickNoteModel;->hasResult()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->mPendingInit:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->mQuickNoteModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/quicknote/QuickNoteModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/quicknote/QuickNoteModel;->getResult()Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/IContextAwarenessResult;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->onSuggested(Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/IContextAwarenessResult;)V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->mPendingChangeLayout:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->mPendingChangeLayout:Z

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->showQuickNoteDialog()V

    :cond_3
    :goto_0
    return-void
.end method

.method public hideQuickNoteDialog(Ljava/lang/String;Ljava/util/List;Z)V
    .locals 2
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->mPostJobManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$PostJobManager;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$3;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;Ljava/lang/String;Ljava/util/List;Z)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$PostJobManager;->runDialogActionOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public init(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;)V
    .locals 1

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->isEditable()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->setDisabled(Z)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->mDialogManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->mControllerManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    iput-object p4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->mComposerViewPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->mTaskChangeCallback:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$TaskChangeCallbackImpl;

    invoke-virtual {p1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$TaskChangeCallbackImpl;->init(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;)V

    iget-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->mPendingStart:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->mPendingStart:Z

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;->getViewState()Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/ViewState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/ViewState;->isStopped()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->TAG:Ljava/lang/String;

    const-string p2, "init# stopped state"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->start()V

    :cond_1
    :goto_0
    iget-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->mDisabled:Z

    if-nez p1, :cond_2

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/os/ActivityTaskManagerCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/os/ActivityTaskManagerCompat;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->mTaskChangeCallback:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$TaskChangeCallbackImpl;

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/os/ActivityTaskManagerCompat;->registerTaskChangeCallback(Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsActivityTaskManagerCompatImplFactory$TaskChangeCallback;)V

    :cond_2
    return-void
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroidx/fragment/app/Fragment;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/common/QuickNotePresenterContract$IExternalListenerManager;)V
    .locals 2
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/common/QuickNotePresenterContract$IExternalListenerManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->mDisabled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->TAG:Ljava/lang/String;

    const-string v1, "onActivityCreated"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/permission/DeepSkyPermissionHelper;->needPermissionConfirm()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/permission/DeepSkyPermissionHelper;->isAllGrantedPermission()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/permission/DeepSkyPermissionHelper;->showPermissionConfirmDialog()V

    :cond_1
    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->mFragment:Landroidx/fragment/app/Fragment;

    new-instance p2, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/quicknote/QuickNoteModel;

    invoke-direct {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/quicknote/QuickNoteModel;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->mQuickNoteModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/quicknote/QuickNoteModel;

    invoke-virtual {p2, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/quicknote/QuickNoteModel;->setOnUpdateListener(Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/quicknote/QuickNoteModel$OnUpdateListener;)V

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->mExternalListenerManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/common/QuickNotePresenterContract$IExternalListenerManager;

    invoke-interface {p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/common/QuickNotePresenterContract$IExternalListenerManager;->getContextAwarenessListener()Ljava/util/Observable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Observable;->deleteObservers()V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->mExternalListenerManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/common/QuickNotePresenterContract$IExternalListenerManager;

    invoke-interface {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/common/QuickNotePresenterContract$IExternalListenerManager;->getContextAwarenessListener()Ljava/util/Observable;

    move-result-object p2

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->mQuickNoteModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/quicknote/QuickNoteModel;

    invoke-virtual {p2, p3}, Ljava/util/Observable;->addObserver(Ljava/util/Observer;)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->getMultiWindowMode(Landroid/app/Activity;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->mWindowMode:I

    return-void
.end method

.method public onAddContent(Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfo;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAddContent# id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->canNotAdd(Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/support/senl/cm/base/framework/support/BOOLEAN;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/BOOLEAN;-><init>(Z)V

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->onPreAddAction(Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfo;Lcom/samsung/android/support/senl/cm/base/framework/support/BOOLEAN;)V

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$AddContent;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/BOOLEAN;->isTrue()Z

    move-result v0

    invoke-direct {v1, p0, p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$AddContent;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfo;Z)V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->mWaitingAction:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$WaitingAction;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$WaitingAction;->run()V

    return-void
.end method

.method public onAddLink(Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfo;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAddLink# id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/support/senl/cm/base/framework/support/BOOLEAN;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/BOOLEAN;-><init>(Z)V

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->onPreAddAction(Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfo;Lcom/samsung/android/support/senl/cm/base/framework/support/BOOLEAN;)V

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$AddLink;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/BOOLEAN;->isTrue()Z

    move-result v0

    invoke-direct {v1, p0, p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$AddLink;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfo;Z)V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->mWaitingAction:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$WaitingAction;

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->showOnlyFirstWebCardPreview(Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfo;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->mWaitingAction:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$WaitingAction;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$WaitingAction;->run()V

    return-void
.end method

.method public onAttachView()V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->mDisabled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->mPreTouchListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$PreTouchListenerImpl;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->mComposerViewPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->getListenerManager()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->mPreTouchListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$PreTouchListenerImpl;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->addPreTouchListener(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenPreTouchListenerImpl$PreTouchListener;)V

    :cond_1
    return-void
.end method

.method public onCancel()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->TAG:Ljava/lang/String;

    const-string v1, "onCancel"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->mCanceled:Z

    return-void
.end method

.method public onChangeLayoutBefore()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->mDialogManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->isShowingQuickNoteDialog()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->mPendingChangeLayout:Z

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-string v2, "onChangeLayoutBefore"

    invoke-virtual {p0, v2, v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->hideQuickNoteDialog(Ljava/lang/String;Ljava/util/List;Z)V

    :cond_0
    return-void
.end method

.method public onChangedAvailableMode(Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;)V
    .locals 1
    .param p1    # Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->isNotEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getModeManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;->isEditModeWithoutReadOnly(Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;->Init:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;

    invoke-virtual {v0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->requestSuggestion()V

    :cond_1
    return-void
.end method

.method public onChangedNotAvailableMode(Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;)V
    .locals 2
    .param p1    # Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->isNotEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onChangedNotAvailableMode# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->hideQuickNoteDialog(Ljava/lang/String;Ljava/util/List;Z)V

    return-void
.end method

.method public onDestroy()V
    .locals 5

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/os/ActivityTaskManagerCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/os/ActivityTaskManagerCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->mTaskChangeCallback:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$TaskChangeCallbackImpl;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/os/ActivityTaskManagerCompat;->unregisterTaskChangeCallback(Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsActivityTaskManagerCompatImplFactory$TaskChangeCallback;)V

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->mDisabled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->mPostJobManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$PostJobManager;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$PostJobManager;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$PostJobManager;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->mQuickNoteModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/quicknote/QuickNoteModel;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->mTaskChangeCallback:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$TaskChangeCallbackImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$TaskChangeCallbackImpl;->clear()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->clearWaitingAction()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->mQuickNoteModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/quicknote/QuickNoteModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/quicknote/QuickNoteModel;->setOnUpdateListener(Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/quicknote/QuickNoteModel$OnUpdateListener;)V

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->mExternalListenerManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/common/QuickNotePresenterContract$IExternalListenerManager;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/common/QuickNotePresenterContract$IExternalListenerManager;->getContextAwarenessListener()Ljava/util/Observable;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->mQuickNoteModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/quicknote/QuickNoteModel;

    invoke-virtual {v0, v2}, Ljava/util/Observable;->deleteObserver(Ljava/util/Observer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "release#, error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->mActivity:Landroid/app/Activity;

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->mFragment:Landroidx/fragment/app/Fragment;

    return-void
.end method

.method public onDetachView()V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->mDisabled:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->mPreTouchListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$PreTouchListenerImpl;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->mComposerViewPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->getListenerManager()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->mComposerViewPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->getListenerManager()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->mPreTouchListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$PreTouchListenerImpl;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->removePreTouchListener(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenPreTouchListenerImpl$PreTouchListener;)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->mPostJobManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$PostJobManager;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$PostJobManager;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$PostJobManager;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->mActivity:Landroid/app/Activity;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->mFragment:Landroidx/fragment/app/Fragment;

    :cond_2
    :goto_0
    return-void
.end method

.method public onReceivedData(Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/IContextAwarenessResult;)V
    .locals 3
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->mDisabled:Z

    if-eqz v0, :cond_0

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->TAG:Ljava/lang/String;

    const-string v0, "onReceivedData# called in disabled state"

    :goto_0
    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->mWaitingAction:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$WaitingAction;

    if-nez v0, :cond_1

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->TAG:Ljava/lang/String;

    const-string v0, "onReceivedData# waiting action is null"

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/IContextAwarenessResult;->isResponseSuccess()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->TAG:Ljava/lang/String;

    const-string v0, "onReceivedData# invalid response"

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->isOptionEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->TAG:Ljava/lang/String;

    const-string v0, "onReceivedData# called in disabled option state"

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->isNotAvailableToUpdate()Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    :cond_4
    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/IContextAwarenessResult;->getSuggestionInfoList()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfo;

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceivedData# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->mWaitingAction:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$WaitingAction;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$WaitingAction;->checkInvalid(Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfo;)Z

    move-result v0

    if-eqz v0, :cond_5

    :goto_1
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->clearWaitingAction()V

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->mWaitingAction:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$WaitingAction;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$WaitingAction;->updateTask(Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfo;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->mControllerManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;->getTaskController()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;

    move-result-object p1

    const-class v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote;

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;->isRunning(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_1

    :cond_6
    :goto_2
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)Z
    .locals 0
    .param p2    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p2, 0x0

    const/16 p3, 0xc8

    if-eq p1, p3, :cond_0

    return p2

    :cond_0
    iput-boolean p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->mPendingPermission:Z

    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/quicknote/MsgPermissionAction;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/quicknote/MsgPermissionAction;-><init>()V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/quicknote/MsgPermissionAction;->saveAndroidId(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->mWaitingAction:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$WaitingAction;

    const/4 p2, 0x1

    if-nez p1, :cond_1

    return p2

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$WaitingAction;->run()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->mWaitingAction:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$WaitingAction;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$WaitingAction;->isUpdatedTask()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->clearWaitingAction()V

    :cond_2
    return p2
.end method

.method public onResume()V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->mPendingPermission:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->mPendingPermission:Z

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->mWaitingAction:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$WaitingAction;

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/quicknote/MsgPermissionAction;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/quicknote/MsgPermissionAction;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/quicknote/MsgPermissionAction;->hasPermission(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->TAG:Ljava/lang/String;

    const-string v1, "onResume# "

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->mWaitingAction:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$WaitingAction;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$WaitingAction;->run()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->mWaitingAction:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$WaitingAction;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$WaitingAction;->isUpdatedTask()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->clearWaitingAction()V

    :cond_3
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->mInsertedIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->mInsertedIds:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v1, "QuickNotePresenter"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->TAG:Ljava/lang/String;

    const-string v1, "onStart#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->start()V

    return-void
.end method

.method public onStop()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->TAG:Ljava/lang/String;

    const-string v1, "onStop#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->mDisabled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->requestUnsubscribeSuggestion()V

    return-void
.end method

.method public onSuggested(Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/IContextAwarenessResult;)V
    .locals 6
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->mPendingInit:Z

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->mDisabled:Z

    if-eqz v0, :cond_0

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->TAG:Ljava/lang/String;

    const-string v0, "onSuggested# called in disabled state"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->isOptionEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->TAG:Ljava/lang/String;

    const-string v0, "onSuggested# called in disabled option state"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->mControllerManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;

    const/4 v1, 0x1

    if-nez v0, :cond_2

    iput-boolean v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->mPendingInit:Z

    return-void

    :cond_2
    iget-boolean v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->mCanceled:Z

    if-eqz v2, :cond_3

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->TAG:Ljava/lang/String;

    const-string v0, "onSuggested# called in canceled state"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;->getTaskController()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;

    move-result-object v0

    const-class v2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote;

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;->isRunning(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->TAG:Ljava/lang/String;

    const-string v0, "onSuggested# TaskQuickNote is running"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/IContextAwarenessResult;->isResponseSuccess()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_5

    const-string p1, "onSuggested# response fail"

    invoke-virtual {p0, p1, v2, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->hideQuickNoteDialog(Ljava/lang/String;Ljava/util/List;Z)V

    return-void

    :cond_5
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->isNotAvailableToUpdate()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string p1, "onSuggested# not available to update"

    invoke-virtual {p0, p1, v2, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->hideQuickNoteDialog(Ljava/lang/String;Ljava/util/List;Z)V

    return-void

    :cond_6
    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/quicknote/QuickNoteModel$SuggestedData;

    invoke-direct {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/quicknote/QuickNoteModel$SuggestedData;-><init>(Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/IContextAwarenessResult;)V

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->mFrontTaskChecker:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/FrontTaskChecker;

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/quicknote/QuickNoteModel$SuggestedData;->getSuggestionInfoList()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/FrontTaskChecker;->removeNoFrontTask(Landroid/app/Activity;Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/quicknote/QuickNoteModel$SuggestedData;->addExcludedIds(Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/quicknote/QuickNoteModel$SuggestedData;->getSuggestionInfoList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_7

    const-string p1, "onSuggested# no exist donation app on foreground"

    invoke-virtual {p0, p1, v2, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->hideQuickNoteDialog(Ljava/lang/String;Ljava/util/List;Z)V

    return-void

    :cond_7
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/quicknote/QuickNoteModel$SuggestedData;->getSuggestionInfoList()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->checkDuplicatedIds(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/quicknote/QuickNoteModel$SuggestedData;->addExcludedIds(Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/quicknote/QuickNoteModel$SuggestedData;->getSuggestionInfoList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_8

    return-void

    :cond_8
    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/IContextAwarenessResult;->getResponse()Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/IContextAwarenessResult$Response;

    move-result-object p1

    sget-object v1, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/IContextAwarenessResult$Response;->DRAW_SUGGESTION_FAIL:Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/IContextAwarenessResult$Response;

    if-ne p1, v1, :cond_9

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->TAG:Ljava/lang/String;

    const-string v0, "onSuggested# fail"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_9
    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->mResultSuggested:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/quicknote/QuickNoteModel$SuggestedData;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->showQuickNoteDialog()V

    return-void
.end method

.method public onWindowModeChanged(I)V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->isNotEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->isNotInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->mWindowMode:I

    const/4 v1, 0x1

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->mWindowMode:I

    if-nez p1, :cond_2

    const/4 p1, 0x0

    const-string v0, "full mode"

    invoke-virtual {p0, v0, p1, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->hideQuickNoteDialog(Ljava/lang/String;Ljava/util/List;Z)V

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->requestSuggestion()V

    :cond_3
    :goto_1
    return-void
.end method

.method public restoreState(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "QuickNotePresenter"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->mInsertedIds:Ljava/util/ArrayList;

    :cond_0
    return-void
.end method

.method public setDisabled(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->mDisabled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->mDisabled:Z

    return-void
.end method

.method public showQuickNoteDialog()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->mPostJobManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$PostJobManager;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$2;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$PostJobManager;->runDialogActionOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
