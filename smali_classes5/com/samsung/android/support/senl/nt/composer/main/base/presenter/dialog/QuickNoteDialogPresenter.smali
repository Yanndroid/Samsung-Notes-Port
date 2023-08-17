.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IPresenter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter$MessageSA;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter$GallerySA;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter$InternetSA;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter$SaAction;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter$ViewData;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter$ActionListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActionListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter$ActionListener;

.field private mActivity:Landroid/app/Activity;

.field private final mCreator:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IDialogCreator;

.field private mDialog:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IQuickNoteDialog;

.field private mIsBlocking:Z

.field private final mSoftInputManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SoftInputManager;

.field private mSuggestedData:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/quicknote/QuickNoteModel$SuggestedData;

.field private mViewDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter$ViewData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "QuickNoteDialogPresenter"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IDialogCreator;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;->mCreator:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IDialogCreator;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;->getSoftInputManager()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SoftInputManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;->mSoftInputManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SoftInputManager;

    return-void
.end method

.method public static bridge synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private checkSameData(Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/quicknote/QuickNoteModel$SuggestedData;)Z
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;->isShowing()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;->mViewDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/quicknote/QuickNoteModel$SuggestedData;->getSuggestionInfoList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v0, v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;->mViewDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;->mViewDataList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter$ViewData;

    iget-object v3, v3, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter$ViewData;->mSuggestionInfo:Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfo;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/quicknote/QuickNoteModel$SuggestedData;->getSuggestionInfoList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfo;

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_1
    return v1
.end method

.method private getSelectedItemIndex()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;->mViewDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method private initViewData(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfo;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;->mViewDataList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter$ViewData;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfo;

    invoke-direct {v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter$ViewData;-><init>(Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfo;)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;->mViewDataList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setDataModel(Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/quicknote/QuickNoteModel$SuggestedData;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;->mSuggestedData:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/quicknote/QuickNoteModel$SuggestedData;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;->mViewDataList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;->mViewDataList:Ljava/util/List;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/quicknote/QuickNoteModel$SuggestedData;->getSuggestionInfoList()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;->initViewData(Ljava/util/List;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public addContent(Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;->mActionListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter$ActionListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter$ActionListener;->onAddContent(Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfo;)V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;->mViewDataList:Ljava/util/List;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;->getSelectedItemIndex()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter$ViewData;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter$ViewData;->mSaAction:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter$SaAction;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter$SaAction;->insertContentLog()V

    return-void
.end method

.method public addLink(Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;->mActionListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter$ActionListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter$ActionListener;->onAddLink(Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfo;)V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;->mViewDataList:Ljava/util/List;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;->getSelectedItemIndex()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter$ViewData;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter$ViewData;->mSaAction:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter$SaAction;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter$SaAction;->insertLinkLog()V

    return-void
.end method

.method public blockToShow(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;->mIsBlocking:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    const/4 v0, 0x0

    const-string v1, "blockToShow"

    invoke-virtual {p0, v1, p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;->hide(Ljava/lang/String;Ljava/util/List;Z)V

    :cond_0
    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public getContentButtonStr()I
    .locals 2
    .annotation build Landroidx/annotation/StringRes;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;->mViewDataList:Ljava/util/List;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;->getSelectedItemIndex()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter$ViewData;

    iget v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter$ViewData;->mContentBtnStrId:I

    return v0
.end method

.method public getContextAwarenessResult()Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/IContextAwarenessResult;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;->mSuggestedData:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/quicknote/QuickNoteModel$SuggestedData;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/quicknote/QuickNoteModel$SuggestedData;->getResult()Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/IContextAwarenessResult;

    move-result-object v0

    return-object v0
.end method

.method public getExcludedIds()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;->mSuggestedData:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/quicknote/QuickNoteModel$SuggestedData;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/quicknote/QuickNoteModel$SuggestedData;->getExcludedIds()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;->mViewDataList:Ljava/util/List;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;->getSelectedItemIndex()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter$ViewData;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter$ViewData;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIconList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;->mViewDataList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;->mViewDataList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;->mViewDataList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter$ViewData;

    iget-object v2, v2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter$ViewData;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getSelectedItemId()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;->mViewDataList:Ljava/util/List;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;->getSelectedItemIndex()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter$ViewData;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter$ViewData;->mSuggestionInfo:Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfo;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfo;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;->mViewDataList:Ljava/util/List;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;->getSelectedItemIndex()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter$ViewData;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter$ViewData;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public hasCollapsedIcons()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;->mViewDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public declared-synchronized hide(Ljava/lang/String;Ljava/util/List;Z)V
    .locals 3
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

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hide# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;->mActivity:Landroid/app/Activity;

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;->mViewDataList:Ljava/util/List;

    if-nez p1, :cond_0

    goto :goto_4

    :cond_0
    const/4 p1, 0x1

    if-eqz p2, :cond_8

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_3

    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;->mViewDataList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter$ViewData;

    iget-object v2, v2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter$ViewData;->mSuggestionInfo:Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfo;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_5
    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;->mViewDataList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_7

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;->mDialog:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IQuickNoteDialog;

    if-nez p3, :cond_6

    goto :goto_1

    :cond_6
    const/4 p1, 0x0

    :goto_1
    invoke-interface {p2, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IQuickNoteDialog;->dismiss(Z)V

    goto :goto_2

    :cond_7
    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;->TAG:Ljava/lang/String;

    const-string p2, "update# dialog is already shown"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;->mDialog:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IQuickNoteDialog;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IQuickNoteDialog;->update()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    monitor-exit p0

    return-void

    :cond_8
    :goto_3
    :try_start_1
    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;->mDialog:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IQuickNoteDialog;

    invoke-interface {p2, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IQuickNoteDialog;->dismiss(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_9
    :goto_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public hideSoftInput()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;->mSoftInputManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SoftInputManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SoftInputManager;->hide(Landroid/view/View;)V

    return-void
.end method

.method public isEnabledContentButton()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;->mViewDataList:Ljava/util/List;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;->getSelectedItemIndex()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter$ViewData;

    iget-boolean v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter$ViewData;->mContentEnabled:Z

    return v0
.end method

.method public isEnabledLinkButton()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;->mViewDataList:Ljava/util/List;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;->getSelectedItemIndex()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter$ViewData;

    iget-boolean v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter$ViewData;->mLinkEnabled:Z

    return v0
.end method

.method public isInputMethodShown()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;->mSoftInputManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SoftInputManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SoftInputManager;->isInputMethodShown()Z

    move-result v0

    return v0
.end method

.method public isShowing()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;->mDialog:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IQuickNoteDialog;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onAttachView(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;->mActivity:Landroid/app/Activity;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;->blockToShow(Z)V

    return-void
.end method

.method public onCancel()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;->mActionListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter$ActionListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter$ActionListener;->onCancel()V

    :cond_0
    return-void
.end method

.method public onDetachView()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;->mDialog:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IQuickNoteDialog;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;->mDialog:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IQuickNoteDialog;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IQuickNoteDialog;->dismiss(Z)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public onDismiss()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;->TAG:Ljava/lang/String;

    const-string v1, "onDismiss# "

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;->mDialog:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IQuickNoteDialog;

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;->setDataModel(Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/quicknote/QuickNoteModel$SuggestedData;)V

    return-void
.end method

.method public onItemSelected(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;->mViewDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter$ViewData;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;->mViewDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;->mDialog:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IQuickNoteDialog;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IQuickNoteDialog;->update()V

    return-void
.end method

.method public show(Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/quicknote/QuickNoteModel$SuggestedData;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter$ActionListener;)V
    .locals 4

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;->TAG:Ljava/lang/String;

    const-string v1, "show# "

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/CommonUtil;->isNotAvailableActivity(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;->mIsBlocking:Z

    if-eqz v1, :cond_1

    const-string p1, "show# blocking"

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;->checkSameData(Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/quicknote/QuickNoteModel$SuggestedData;)Z

    move-result v1

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;->setDataModel(Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/quicknote/QuickNoteModel$SuggestedData;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;->mViewDataList:Ljava/util/List;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;->getSelectedItemIndex()I

    move-result v2

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter$ViewData;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter$ViewData;->mSaAction:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter$SaAction;

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->getMultiWindowMode(Landroid/app/Activity;)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter$SaAction;->insertClippingOptionLog(I)V

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;->mActionListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter$ActionListener;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "show# dialog is already shown - "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->w(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;->mDialog:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IQuickNoteDialog;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IQuickNoteDialog;->update()V

    :cond_2
    return-void

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;->mSoftInputManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SoftInputManager;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SoftInputManager;->isInputMethodShown()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;->mSoftInputManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SoftInputManager;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SoftInputManager;->hide(Landroid/view/View;)V

    :cond_4
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;->mCreator:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IDialogCreator;

    invoke-interface {p1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IDialogCreator;->createQuickNoteDialog(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IDialog;

    move-result-object p1

    instance-of p2, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IQuickNoteDialog;

    if-eqz p2, :cond_5

    check-cast p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IQuickNoteDialog;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;->mDialog:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IQuickNoteDialog;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IDialog;->show()V

    :cond_5
    return-void
.end method
