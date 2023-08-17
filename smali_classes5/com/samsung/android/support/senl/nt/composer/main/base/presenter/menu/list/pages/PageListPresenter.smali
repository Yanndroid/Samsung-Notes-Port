.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$IPresenter;
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListContract$IPresenter;
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager$ObserverBackgroundColor;


# static fields
.field private static final KEY:Ljava/lang/String; = "PageListState"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mCompViewPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

.field private mComposerModeHelper:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListComposerModeHelper;

.field public mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

.field private final mContainerPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListContract$IContainerPresenter;

.field private final mControllerManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;

.field private final mDialogPresenterManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;

.field private mDragListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;

.field private mEditModeMenuPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListEditModeMenuPresenter;

.field private mIsShownWithPhoneLayout:Z

.field private mMoreMenuListPopup:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;

.field private mMoreMenuPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListMoreMenuPresenter;

.field private mOrientation:I

.field private final mPageListDataManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;

.field private mPageListSearch:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch;

.field private mSaveInstancesHelper:Lcom/samsung/android/support/senl/nt/composer/main/base/util/SaveInstancesHelper;

.field private final mSearchController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SearchController;

.field private final mSoftInputManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SoftInputManager;

.field private mThumbnailHelper:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListThumbnailHelper;

.field private mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListContract$IView;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "PageListPresenter"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListContract$IContainerPresenter;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mOrientation:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mIsShownWithPhoneLayout:Z

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mContainerPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListContract$IContainerPresenter;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mCompViewPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mControllerManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;->getSearchController()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SearchController;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mSearchController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SearchController;

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;->getSoftInputManager()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SoftInputManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mSoftInputManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SoftInputManager;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->getNoteManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->addBackgroundColorObserver(Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager$ObserverBackgroundColor;)V

    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;

    new-instance p2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;)V

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;->getTaskController()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager$Construct;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mPageListDataManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;

    iput-object p4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mDialogPresenterManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mCompViewPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mPageListDataManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SoftInputManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mSoftInputManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SoftInputManager;

    return-object p0
.end method

.method private connectModel(Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mPageListDataManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;->setPageManager(Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;)V

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getModeManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter$2;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;)V

    invoke-virtual {p1, p2}, Ljava/util/Observable;->addObserver(Ljava/util/Observer;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mPageListDataManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getBookmarkModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkModel;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;->setBookmarkModel(Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkModel;)V

    return-void
.end method

.method public static bridge synthetic d(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListContract$IView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListContract$IView;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;Landroid/view/View;Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->moreBtnClicked(Landroid/view/View;Ljava/lang/String;II)V

    return-void
.end method

.method public static bridge synthetic f(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->onComposerModeChanged()V

    return-void
.end method

.method public static bridge synthetic g(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->updateDeleteOnlyState()V

    return-void
.end method

.method private getPageListEditModeMenuPresenterContract()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListEditModeMenuPresenter$Contract;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter$5;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;)V

    return-object v0
.end method

.method private getPageListMoreMenuPresenterContract()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListMoreMenuPresenter$Contract;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter$4;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;)V

    return-object v0
.end method

.method private getSaveInstancesHelper(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/composer/main/base/util/SaveInstancesHelper;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mSaveInstancesHelper:Lcom/samsung/android/support/senl/nt/composer/main/base/util/SaveInstancesHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/util/SaveInstancesHelper;

    invoke-direct {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/SaveInstancesHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mSaveInstancesHelper:Lcom/samsung/android/support/senl/nt/composer/main/base/util/SaveInstancesHelper;

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mSaveInstancesHelper:Lcom/samsung/android/support/senl/nt/composer/main/base/util/SaveInstancesHelper;

    return-object p1
.end method

.method private initMenu(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;)V
    .locals 12

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mSearchController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SearchController;

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SearchController;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mPageListSearch:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch;

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListComposerModeHelper;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mCompViewPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mSoftInputManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SoftInputManager;

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListComposerModeHelper;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SoftInputManager;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mComposerModeHelper:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListComposerModeHelper;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->getPageListMoreMenuPresenterContract()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListMoreMenuPresenter$Contract;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mPageListDataManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;

    iget-object v7, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    iget-object v8, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mCompViewPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

    iget-object v9, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mControllerManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;

    iget-object v10, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mComposerModeHelper:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListComposerModeHelper;

    move-object v4, p0

    move-object v11, p1

    invoke-virtual/range {v4 .. v11}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->createMoreMenuPresenter(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListMoreMenuPresenter$Contract;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListComposerModeHelper;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListMoreMenuPresenter;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mMoreMenuPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListMoreMenuPresenter;

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListEditModeMenuPresenter;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->getPageListEditModeMenuPresenterContract()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListEditModeMenuPresenter$Contract;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mPageListDataManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mCompViewPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mControllerManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;->getTaskController()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mComposerModeHelper:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListComposerModeHelper;

    move-object v1, v0

    move-object v8, p1

    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListEditModeMenuPresenter;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListEditModeMenuPresenter$Contract;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListComposerModeHelper;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mEditModeMenuPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListEditModeMenuPresenter;

    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListThumbnailHelper;

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter$3;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mPageListDataManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mCompViewPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

    invoke-direct {p1, v0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListThumbnailHelper;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListThumbnailHelper$Contract;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mThumbnailHelper:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListThumbnailHelper;

    return-void
.end method

.method private initSearch(Landroid/content/Context;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mPageListSearch:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch;->getCachePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mPageListSearch:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getDocState()Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch;->setCachePath(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mPageListSearch:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mPageListDataManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;->getPageIdList()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListContract$IView;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mCompViewPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch;->init(Landroid/content/Context;Ljava/util/List;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListModeContract$IView;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;)V

    return-void
.end method

.method private insertSALogWithMode(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mPageListDataManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;->insertSALogWithMode(Ljava/lang/String;)V

    return-void
.end method

.method private moreBtnClicked(Landroid/view/View;Ljava/lang/String;II)V
    .locals 7

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "moreBtnClicked#, index : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " / view : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mMoreMenuListPopup:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mMoreMenuPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListMoreMenuPresenter;

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup$OnMoreMenuEventListener;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mMoreMenuListPopup:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mMoreMenuListPopup:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mMoreMenuListPopup:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;->dismiss()V

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mMoreMenuListPopup:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mMoreMenuPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListMoreMenuPresenter;

    invoke-virtual {v0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListMoreMenuPresenter;->getMenuList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListContract$IView;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;->show(Landroid/view/View;Ljava/lang/String;ILjava/util/List;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListContract$IView;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mComposerModeHelper:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListComposerModeHelper;

    invoke-virtual {p1, p4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListComposerModeHelper;->setLastToolType(I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->isTabletLayout()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "0"

    const-string p2, "8169"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p1, "3566"

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->insertSALogWithMode(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private onComposerModeChanged()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListContract$IView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->isTabletLayout()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getModeManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;->isComposerViewMode()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListContract$IView;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/common/IBaseListContract$IView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mPageListDataManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;->isMode(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->setMode(I)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mPageListDataManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;->isMode(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListContract$IView;

    invoke-interface {v0, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListContract$IView;->hideSearchMode(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mCompViewPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->requestFocus()V

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListContract$IView;

    invoke-interface {v0, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListContract$IView;->updateSearchButtonVisibility(Z)V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListContract$IView;

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListContract$IView;->updateSearchButtonVisibility(Z)V

    :goto_2
    return-void
.end method

.method private onDummyPageClicked(I)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->TAG:Ljava/lang/String;

    const-string v1, "onDummyPageClicked"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->addFileLog(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mMoreMenuPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListMoreMenuPresenter;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListMoreMenuPresenter;->preExecute(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mCompViewPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->getNoteManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;

    move-result-object v1

    invoke-virtual {v1, p1, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->insertPage(II)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mMoreMenuPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListMoreMenuPresenter;

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v1, v0, v2, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListMoreMenuPresenter;->updatePageIndex(III)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListContract$IView;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListModeContract$IView;->getKeyboardTargetView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mSoftInputManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SoftInputManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SoftInputManager;->hide(Landroid/view/View;)V

    :cond_0
    const-string p1, "3573"

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->insertSALogWithMode(Ljava/lang/String;)V

    return-void
.end method

.method private prepareModeToShow()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mPageListDataManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;->resetData()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->setMode(I)V

    return-void
.end method

.method private saveCacheAndRequestCollect()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->saveCache(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getComposerSaveModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/ComposerSaveModel;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter$8;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter$8;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/ComposerSaveModel;->setRunnableAfterCompletedSave(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->requestCollect()V

    :goto_0
    return-void
.end method

.method private updateDeleteOnlyState()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListContract$IView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getModeManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;->isDeleteOnlyMode()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListContract$IView;->updateDeleteOnlyState(Z)V

    return-void
.end method


# virtual methods
.method public canMultiSelection()Z
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->isEditable()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mPageListDataManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;->isMode(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mPageListDataManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;->isMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :cond_1
    :goto_0
    return v1
.end method

.method public clearPageIdList()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mPageListDataManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;->getPageIdList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public createMoreMenuPresenter(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListMoreMenuPresenter$Contract;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListComposerModeHelper;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListMoreMenuPresenter;
    .locals 9

    new-instance v8, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListMoreMenuPresenter;

    move-object v0, v8

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListMoreMenuPresenter;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListMoreMenuPresenter$Contract;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListComposerModeHelper;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;)V

    return-object v8
.end method

.method public getDataIndex(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mPageListDataManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;->getPageIndex(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getDragListener()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mDragListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;

    return-object v0
.end method

.method public getEditModeMenuPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListEditModeMenuPresenter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mEditModeMenuPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListEditModeMenuPresenter;

    return-object v0
.end method

.method public getSearchPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mPageListSearch:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch;

    return-object v0
.end method

.method public hasBookmarkedPage()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mPageListDataManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;->getBookmarkModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkModel;->hasBookmarkedPage()Z

    move-result v0

    return v0
.end method

.method public hide()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListContract$IView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->TAG:Ljava/lang/String;

    const-string v1, "hide#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListContract$IView;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/common/IBaseListContract$IView;->hide()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mMoreMenuPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListMoreMenuPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListMoreMenuPresenter;->clearBodyTextContext()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mCompViewPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->setFocusable(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getModeManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;->Writing:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;->isMode(Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mIsShownWithPhoneLayout:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mCompViewPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/NavigationBarUtil;->hideNavigationBar(Landroid/app/Activity;)Z

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mIsShownWithPhoneLayout:Z

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mCompViewPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->requestFocus()V

    return-void
.end method

.method public hideMoreListPopup(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mMoreMenuListPopup:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mMoreMenuListPopup:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;->isSamePage(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mMoreMenuListPopup:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;->dismiss()V

    :cond_1
    return-void
.end method

.method public hideSoftInput(Landroid/view/View;)Z
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hideSoftInput, targetView = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListContract$IView;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListModeContract$IView;->getKeyboardTargetView()Landroid/view/View;

    move-result-object p1

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mSoftInputManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SoftInputManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SoftInputManager;->isInputMethodShown()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mSoftInputManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SoftInputManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SoftInputManager;->hide(Landroid/view/View;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public ignoreInputEvent(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListContract$IView;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/common/IBaseListContract$IView;->ignoreInputEvent(Z)V

    :cond_0
    return-void
.end method

.method public init(Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->connectModel(Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;)V

    invoke-direct {p0, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->initMenu(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;)V

    return-void
.end method

.method public isBookmarked(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mPageListDataManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;->isBookmarked(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isChecked(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mPageListDataManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;->getPageListMode()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListMode;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListMode;->isChecked(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isEditable()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->isEditable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getMdeInfo()Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;->hasWritePermission()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEnabledBookmark()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getMdeInfo()Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;->isMde()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isItemMoreEnable()Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->isEditable()Z

    move-result v0

    return v0
.end method

.method public isShowing()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListContract$IView;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/common/IBaseListContract$IView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isShownWithPhoneLayout()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mIsShownWithPhoneLayout:Z

    return v0
.end method

.method public minimizeSoftInput(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mSoftInputManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SoftInputManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SoftInputManager;->minimizeSoftInput(Landroid/view/View;)V

    return-void
.end method

.method public move(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "move# fromId / toId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mPageListDataManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;

    invoke-virtual {v1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;->getPageIndex(Ljava/lang/String;)I

    move-result v1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/winset/accessibility/VoiceAssistantTTS;->getInstance()Lcom/samsung/android/support/senl/nt/base/winset/accessibility/VoiceAssistantTTS;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListContract$IView;

    invoke-interface {v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListContract$IView;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/samsung/android/support/senl/nt/composer/R$string;->base_drag_drop_at:I

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    add-int/lit8 v7, v1, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-virtual {v3, v4, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/senl/nt/base/winset/accessibility/VoiceAssistantTTS;->sendTalkBackMessage(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "PageMove"

    invoke-static {v0, p2, v8}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->addFileLog(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mComposerModeHelper:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListComposerModeHelper;

    const-string v0, "move"

    invoke-virtual {p2, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListComposerModeHelper;->releaseReadMode(Ljava/lang/String;)I

    move-result p2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mPageListDataManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;->getPageIndex(Ljava/lang/String;)I

    move-result p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mCompViewPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->getTextManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->setAutoScrollToCursorOnLayoutChanged(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mCompViewPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->getNoteManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->movePage(II)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mCompViewPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->getComposerControllerManager()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerManager;->getScrollController()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ScrollController;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ScrollController;->goToPage(I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mComposerModeHelper:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListComposerModeHelper;

    invoke-virtual {p1, p2, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListComposerModeHelper;->setCursorAfterEditModeChange(II)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mCompViewPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->getTextManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->setAutoScrollToCursorOnLayoutChanged(Z)V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListContract$IView;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListModeContract$IView;->getAdapter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/common/IPageAdapter;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListContract$IView;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListModeContract$IView;->getAdapter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/common/IPageAdapter;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/common/IPageAdapter;->disableAnimation()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListContract$IView;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListModeContract$IView;->getAdapter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/common/IPageAdapter;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/common/IPageAdapter;->notifyDataSetChangedWithNoAnimation()V

    :cond_1
    return-void
.end method

.method public onActivityResult(ILandroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mMoreMenuPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListMoreMenuPresenter;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListMoreMenuPresenter;->onActivityResult(ILandroid/content/Intent;)V

    return-void
.end method

.method public onBackPressed()Z
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->TAG:Ljava/lang/String;

    const-string v1, "onBackPressed"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->isShowing()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListContract$IView;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/common/IBaseListContract$IView;->onBackPressed()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mMoreMenuListPopup:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mMoreMenuListPopup:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;->dismiss()V

    return v2

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->isTabletLayout()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mCompViewPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mPageListDataManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;->isMode(I)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->setMode(I)V

    return v2

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->hide()V

    return v2

    :cond_4
    return v1
.end method

.method public onBookmarkClicked(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBookmarkClicked, index = /"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mPageListDataManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;->updateBookmark(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->isTabletLayout()Z

    move-result v0

    const-string v1, "0"

    if-eqz v0, :cond_0

    const-string p1, "8176"

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mPageListDataManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;->getPageListMode()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListMode;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mPageListDataManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;

    invoke-virtual {v2, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;->isBookmarked(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string v1, "1"

    :cond_1
    const-string p1, "3565"

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListMode;->insertSALogWithMode(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onChangedBackgroundColor(IZZ)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mCompViewPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/BackgroundColorUtil;->getBackgroundThemeColor(Landroid/content/Context;IZZ)I

    move-result p1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListContract$IView;

    invoke-interface {p2, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListContract$IView;->setPageBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method public onCheckBoxClicked(Ljava/lang/String;Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mPageListDataManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;->isMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mPageListDataManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;->getPageListMode()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListMode;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListModeEdit;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListContract$IView;

    invoke-virtual {v0, v1, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListModeEdit;->updateSelection(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListModeContract$IView;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public onClose()V
    .locals 1

    const-string v0, "3564"

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->insertSALogWithMode(Ljava/lang/String;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mMoreMenuListPopup:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mMoreMenuPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListMoreMenuPresenter;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListMoreMenuPresenter;->onConfigurationChanged()V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mEditModeMenuPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListEditModeMenuPresenter;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListEditModeMenuPresenter;->onConfigurationChanged()V

    :cond_2
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mOrientation:I

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListContract$IView;

    if-eqz v0, :cond_3

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/common/IBaseListContract$IView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_3
    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mSearchController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SearchController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SearchController;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mMoreMenuPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListMoreMenuPresenter;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListMoreMenuPresenter;->onDestroy()V

    :cond_1
    return-void
.end method

.method public onDetachView()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mSearchController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SearchController;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SearchController;->cancel()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mMoreMenuListPopup:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;->clear()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mMoreMenuPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListMoreMenuPresenter;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListMoreMenuPresenter;->onDetachView()V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mEditModeMenuPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListEditModeMenuPresenter;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListEditModeMenuPresenter;->onDetachView()V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mDialogPresenterManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->getQuickNoteDialogPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mDialogPresenterManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->getQuickNoteDialogPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;->blockToShow(Z)V

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mPageListDataManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListContract$IView;

    return-void
.end method

.method public onEditClicked(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mComposerModeHelper:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListComposerModeHelper;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListComposerModeHelper;->checkNoServerPermission()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListContract$IView;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListModeContract$IView;->getKeyboardTargetView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->hideSoftInput(Landroid/view/View;)Z

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->setEditMode(I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->isTabletLayout()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "0"

    const-string v0, "8164"

    goto :goto_0

    :cond_1
    const-string p1, "504"

    const-string v0, "3561"

    :goto_0
    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onFocusChanged(Landroid/view/View;Z)V
    .locals 2

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mCompViewPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->clearComposing()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getModeManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;->Text:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;->isMode(Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mCompViewPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->getObjectManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->getSelectedObjectList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->hideSoftInput(Landroid/view/View;)Z

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mCompViewPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->getTextManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;

    move-result-object p1

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->setCursorBlink(Z)V

    return-void
.end method

.method public onHide()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mMoreMenuListPopup:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mMoreMenuListPopup:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mPageListSearch:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch;->release()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mThumbnailHelper:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListThumbnailHelper;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListThumbnailHelper;->clearDisplayList()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mDialogPresenterManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->getQuickNoteDialogPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;->blockToShow(Z)V

    return-void
.end method

.method public onHideSearch()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->TAG:Ljava/lang/String;

    const-string v1, "onHideSearch#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->setMode(I)V

    return-void
.end method

.method public onItemClicked(Ljava/lang/String;I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mPageListDataManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;->getPageIndex(Ljava/lang/String;)I

    move-result p1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onItemClicked# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mMoreMenuListPopup:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/MoreMenuListPopup;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "onItemClicked# unexpected click event while more menu popup is showing"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-gez p1, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mCompViewPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->getObjectManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->clearSelectObject()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mPageListDataManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;->isLastPage(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mComposerModeHelper:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListComposerModeHelper;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListComposerModeHelper;->checkNoServerPermission()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mComposerModeHelper:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListComposerModeHelper;

    invoke-virtual {v0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListComposerModeHelper;->setLastToolType(I)V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->onDummyPageClicked(I)V

    goto :goto_0

    :cond_3
    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->isTabletLayout()Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_5

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mPageListDataManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;

    const/4 v1, 0x2

    invoke-virtual {p2, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;->isMode(I)Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mCompViewPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->getSearchController()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerSearchController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerSearchController;->clearSearch()V

    :cond_4
    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mContainerPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListContract$IContainerPresenter;

    invoke-interface {p2, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListContract$IContainerPresenter;->hide(Z)V

    :cond_5
    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mPageListDataManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;->getPageManager()Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->getDocPageInfo()Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->setCurrentPageIndex(I)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mPageListDataManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;->getPageManager()Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->getDocPageInfo()Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;

    move-result-object p2

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->setBlockToSetCurrentPage(Z)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mCompViewPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->getComposerControllerManager()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerManager;->getScrollController()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ScrollController;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ScrollController;->goToPage(I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mPageListDataManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;->getPageManager()Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->getDocPageInfo()Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->setBlockToSetCurrentPage(Z)V

    :goto_0
    return-void
.end method

.method public onItemLongClicked(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListContract$IPageHolder;I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getMdeManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;->getCoeditAdapter()Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;->isCoeditNote()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getModeManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;->isDeleteOnlyMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mPageListDataManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListContract$IPageHolder;->getPageId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;->getPageIndex(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_4

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mPageListDataManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;->isLastPage(I)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mPageListDataManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;->getPageIdList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mPageListDataManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;->getPageManager()Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->getPageCount()I

    move-result v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mDragListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;->hasDragInfo()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onItemLongClicked# already dragging "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mDragListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;->getDragIndex()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mCompViewPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->getObjectManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->clearSelectObject()V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mComposerModeHelper:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListComposerModeHelper;

    invoke-virtual {v1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListComposerModeHelper;->setLastToolType(I)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mDragListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;

    invoke-interface {p1, p2, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListContract$IPageHolder;->dragStart(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->isTabletLayout()Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "0"

    const-string p2, "8168"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string p1, "3408"

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->insertSALogWithMode(Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onKeyEvent(I)Z
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->isShowing()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->isTabletLayout()Z

    move-result p1

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mPageListDataManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;

    invoke-virtual {p1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;->isMode(I)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListContract$IView;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListContract$IView;->onRequestSearchMode()Z

    move-result p1

    if-eqz p1, :cond_1

    move v0, v1

    :cond_1
    return v0

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mPageListDataManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;

    invoke-virtual {p1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;->isMode(I)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListContract$IView;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListContract$IView;->onRequestSearchMode()Z

    :cond_3
    return v1
.end method

.method public onMoreBtnClicked(Landroid/view/View;Ljava/lang/String;II)V
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListContract$IView;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListModeContract$IView;->getPageSearchEditView()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mSoftInputManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SoftInputManager;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListContract$IView;

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListModeContract$IView;->getPageSearchEditView()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SoftInputManager;->hide(Landroid/view/View;)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter$6;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter$6;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;Landroid/view/View;Ljava/lang/String;II)V

    const-wide/16 p2, 0xc8

    invoke-virtual {p1, v0, p2, p3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->moreBtnClicked(Landroid/view/View;Ljava/lang/String;II)V

    return-void
.end method

.method public onPageIndexChanged(Landroid/view/View;I)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPageIndexChanged# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mCompViewPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->getObjectManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->clearSelectObject()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mCompViewPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->getComposerControllerManager()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerManager;->getScrollController()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ScrollController;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ScrollController;->goToPage(I)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->isTabletLayout()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mContainerPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListContract$IContainerPresenter;

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListContract$IContainerPresenter;->hide(Z)V

    :cond_0
    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mSoftInputManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SoftInputManager;

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SoftInputManager;->hide(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    return-void
.end method

.method public onPenMultiSelection(I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mPageListDataManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;->isMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mPageListDataManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;->getPageListMode()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListMode;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListModeEdit;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mPageListDataManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;->getPageIdList()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListContract$IView;

    invoke-virtual {v0, v1, v2, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListModeEdit;->reverseSelection(Ljava/util/List;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListModeContract$IView;I)V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mPageListDataManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;->getPageListMode()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListMode;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mPageListDataManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;->getPageIdList()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListContract$IView;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListMode;->saveState(Ljava/util/List;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListModeContract$IView;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/PageListState;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mEditModeMenuPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListEditModeMenuPresenter;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListEditModeMenuPresenter;->saveState(Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/PageListState;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListContract$IView;

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListContract$IView;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->getSaveInstancesHelper(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/composer/main/base/util/SaveInstancesHelper;

    move-result-object v1

    const-string v2, "PageListState"

    invoke-virtual {v1, p1, v0, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/SaveInstancesHelper;->save(Landroid/os/Bundle;Lcom/samsung/android/support/senl/nt/composer/main/base/util/SaveInstancesHelper$LargeableData;Ljava/lang/String;)V

    return-void
.end method

.method public onShowSearch()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->TAG:Ljava/lang/String;

    const-string v1, "onShowSearch#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->setMode(I)V

    return-void
.end method

.method public onStartLongPressMultiSelection(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListContract$IView;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListContract$IView;->startLongPressMultiSelection(I)V

    return-void
.end method

.method public onVisibleItemChanged(II)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mThumbnailHelper:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListThumbnailHelper;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListThumbnailHelper;->updateDisplayList(II)V

    return-void
.end method

.method public onWindowFocusChanged(Z)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->isShowing()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->isTabletLayout()Z

    move-result p1

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mPageListDataManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;

    invoke-virtual {p1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;->isMode(I)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListContract$IView;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListContract$IView;->hasSearchFieldFocus()Z

    move-result p1

    if-eqz p1, :cond_1

    move v0, v1

    :cond_1
    return v0

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mPageListDataManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;

    invoke-virtual {p1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;->isMode(I)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mCompViewPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->getView()Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter$7;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter$7;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {p1, v0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    return v1

    :cond_4
    :goto_0
    return v0
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public requestMakeThumbnail(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mThumbnailHelper:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListThumbnailHelper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListThumbnailHelper;->updateThumbnail(I)V

    return-void
.end method

.method public restoreState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->getSaveInstancesHelper(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/composer/main/base/util/SaveInstancesHelper;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/PageListState;->CREATOR:Landroid/os/Parcelable$Creator;

    const-string v1, "PageListState"

    invoke-virtual {p1, p2, v1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/SaveInstancesHelper;->restore(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/PageListState;

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-object p2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->TAG:Ljava/lang/String;

    const-string v0, "restoreState"

    invoke-static {p2, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mPageListDataManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;->isPrepared()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p1, "restoreState#, fail to restore PageList"

    :goto_0
    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mCompViewPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->isOverlappingWithFragment()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mContainerPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListContract$IContainerPresenter;

    invoke-interface {p1, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListContract$IContainerPresenter;->hide(Z)V

    const-string p1, "isOverlappingWithFragment true"

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mContainerPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListContract$IContainerPresenter;

    invoke-interface {p2, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListContract$IContainerPresenter;->show(Z)V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/PageListState;->getMode()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->setMode(I)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mPageListDataManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;->getPageListMode()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListMode;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListContract$IView;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mCompViewPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

    invoke-virtual {p2, p1, v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListMode;->restore(Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/PageListState;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListModeContract$IView;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->isTabletLayout()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mCompViewPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->getObjectManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->clearSelection()V

    :cond_3
    return-void
.end method

.method public restoreUIResource()V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListContract$IView;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListModeContract$IView;->getAdapter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/common/IPageAdapter;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/common/IPageAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setBlockThumbnailUpdate(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mThumbnailHelper:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListThumbnailHelper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListThumbnailHelper;->setBlockThumbnailUpdate(Z)V

    return-void
.end method

.method public setEditMode(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mComposerModeHelper:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListComposerModeHelper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListComposerModeHelper;->setLastToolType(I)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->setMode(I)V

    return-void
.end method

.method public setMode(I)V
    .locals 7

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMode, request: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", current: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mPageListDataManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;->getPageListMode()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListMode;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mPageListDataManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;->getPageListMode()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListMode;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mPageListDataManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;->getPageListMode()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListMode;->getMode()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mPageListDataManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;->getPageListMode()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListMode;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mPageListDataManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;->getPageIdList()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListContract$IView;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListMode;->clear(Ljava/util/List;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListModeContract$IView;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mPageListDataManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;->getPageListMode()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListMode;->getMode()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x1

    if-eq p1, v1, :cond_4

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mPageListDataManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListMode;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mPageListDataManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;->getPageManager()Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListMode;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mPageListDataManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListModeBookmark;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mPageListDataManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;->getPageManager()Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mPageListDataManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;->getBookmarkModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkModel;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListModeBookmark;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/BookmarkModel;)V

    :goto_1
    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;->setPageListMode(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListMode;)V

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mPageListDataManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListModeSearch;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mPageListDataManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;->getPageManager()Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mCompViewPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mSoftInputManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SoftInputManager;

    iget-object v6, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mPageListSearch:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListModeSearch;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SoftInputManager;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;->setPageListMode(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListMode;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->saveCacheAndRequestCollect()V

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mComposerModeHelper:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListComposerModeHelper;

    const-string v2, "prepareEditMode"

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListComposerModeHelper;->releaseReadMode(Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mPageListDataManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListModeEdit;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mPageListDataManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;->getPageManager()Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListModeEdit;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;->setPageListMode(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListMode;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mEditModeMenuPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListEditModeMenuPresenter;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mPageListDataManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;->getPageListMode()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListMode;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListModeEdit;

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListEditModeMenuPresenter;->setMode(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListModeEdit;)V

    :goto_2
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mPageListDataManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;->getPageListMode()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListMode;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mPageListDataManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;->getPageIdList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListMode;->init(Ljava/util/List;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mThumbnailHelper:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListThumbnailHelper;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListThumbnailHelper;->initUpdateDisplayList()V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListContract$IView;

    invoke-interface {v1, v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListModeContract$IView;->onModeChanged(II)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListContract$IView;

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListModeContract$IView;->getAdapter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/common/IPageAdapter;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListContract$IView;

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListModeContract$IView;->getAdapter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/common/IPageAdapter;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/common/IPageAdapter;->enableAnimation()V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListContract$IView;

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListModeContract$IView;->getAdapter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/common/IPageAdapter;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/common/IPageAdapter;->notifyDataSetChanged()V

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListContract$IView;

    invoke-interface {v1, v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListModeContract$IView;->onModeChangedPost(II)V

    return-void
.end method

.method public setView(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListContract$IView;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListContract$IView;

    iput p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mOrientation:I

    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;

    invoke-direct {p1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$IPresenter;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mDragListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListContract$IView;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListContract$IView;->init()V

    return-void
.end method

.method public show(Landroid/app/Activity;)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mPageListDataManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;->getPageManager()Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getDoc()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->initPageInfoList(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mSoftInputManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SoftInputManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SoftInputManager;->hide(Landroid/view/View;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mPageListDataManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;->getPageManager()Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->getDocPageInfo()Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->getCurrentPageIndex()I

    move-result v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "show# "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->prepareModeToShow()V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mEditModeMenuPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListEditModeMenuPresenter;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mPageListDataManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;->getPageIdList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListEditModeMenuPresenter;->setPageIdList(Ljava/util/List;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->onComposerModeChanged()V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mThumbnailHelper:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListThumbnailHelper;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListThumbnailHelper;->initUpdateDisplayList()V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mCompViewPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->getBackgroundThemeColor()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListContract$IView;

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mPageListDataManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;

    invoke-virtual {v4, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;->adjustCurrentPageIndex(I)I

    move-result v0

    invoke-interface {v3, v4, v0, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListContract$IView;->initAdapter(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/common/IPageList;II)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListContract$IView;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/common/IBaseListContract$IView;->show()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->isTabletLayout()Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_0

    iput-boolean v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mIsShownWithPhoneLayout:Z

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mCompViewPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->setFocusable(Z)V

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/NavigationBarUtil;->clearHideNavigationBarFlag(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mDialogPresenterManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->getQuickNoteDialogPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;->blockToShow(Z)V

    goto :goto_0

    :cond_0
    iput-boolean v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mIsShownWithPhoneLayout:Z

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mMoreMenuPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListMoreMenuPresenter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListMoreMenuPresenter;->initBodyTextContext(Landroid/app/Activity;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->initSearch(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getModeManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;->isDeleteOnlyMode()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListContract$IView;

    invoke-interface {p1, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListContract$IView;->updateDeleteOnlyState(Z)V

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "show# isSplitView "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->isTabletLayout()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public showSoftInput(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mSoftInputManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SoftInputManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SoftInputManager;->show(Landroid/view/View;)I

    return-void
.end method

.method public trimUIResource()V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListContract$IView;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListContract$IView;->clearThumbnail()V

    return-void
.end method

.method public trimUnnecessaryResource()V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListContract$IView;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListContract$IView;->clearRecyclerViewPool()V

    return-void
.end method
