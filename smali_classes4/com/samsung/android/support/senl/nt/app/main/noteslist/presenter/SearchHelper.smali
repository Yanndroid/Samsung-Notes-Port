.class public Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper$PresenterContract;,
        Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper$ViewContract;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SearchHelper"


# instance fields
.field private mCallerModeIndex:I

.field private mDataSearchTask:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/DataSearchTask;

.field private final mDocumentMap:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;

.field private final mHandler:Landroid/os/Handler;

.field private mLastSearchString:Ljava/lang/String;

.field private final mMinimiseRunnable:Ljava/lang/Runnable;

.field private final mNotesModel:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;

.field private final mOnSearchEnterClickListener:Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView$OnSearchEnterClickListener;

.field private final mOnSearchMoreClickListener:Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView$OnSearchMoreClickListener;

.field private final mOnSearchVoiceClickListener:Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView$OnSearchVoiceClickListener;

.field private final mPresenterContract:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper$PresenterContract;

.field private final mScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

.field private final mSearchTextListener:Landroidx/appcompat/widget/SearchView$OnQueryTextListener;

.field private final mStateInfo:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;

.field private mViewContract:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper$ViewContract;

.field private final mViewParams:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper$PresenterContract;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper$1;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper;->mMinimiseRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper$2;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper;->mSearchTextListener:Landroidx/appcompat/widget/SearchView$OnQueryTextListener;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper$3;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper;->mOnSearchVoiceClickListener:Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView$OnSearchVoiceClickListener;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper$4;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper;->mOnSearchEnterClickListener:Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView$OnSearchEnterClickListener;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper$5;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper;->mOnSearchMoreClickListener:Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView$OnSearchMoreClickListener;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper$6;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper;->mScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper;->mViewParams:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper;->mStateInfo:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper;->mDocumentMap:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;

    iput-object p4, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper;->mNotesModel:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;

    iput-object p5, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper;->mPresenterContract:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper$PresenterContract;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper;->mDocumentMap:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper;->mNotesModel:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper$PresenterContract;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper;->mPresenterContract:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper$PresenterContract;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper$ViewContract;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper;->mViewContract:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper$ViewContract;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper;->mViewParams:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper;->searchPostRunnable(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic g(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper;Ljava/lang/String;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper;->searchRunnable(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private minimizeSoftInput()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper;->mMinimiseRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper;->mMinimiseRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private searchPostRunnable(Ljava/util/List;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper;->mViewParams:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->getModeIndex()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/common/util/FeatureUtils;->isSearchMode(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper;->mViewParams:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->getNotesView()Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewContract$IView;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewContract$IView;->getSearchImpl()Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/SearchImpl;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/SearchImpl;->getSearchSavedText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper;->mDocumentMap:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper;->mCallerModeIndex:I

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->initSearchMap(Ljava/util/List;I)Z

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper;->mPresenterContract:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper$PresenterContract;

    const-string v2, "searchNotesData, postRunnable"

    invoke-interface {v1, v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper$PresenterContract;->notifyDataSetChanged(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper;->mLastSearchString:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper;->mNotesModel:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->setLastOpenedSDocXDataChanged(Z)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper;->mNotesModel:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->getLastOpenedSDocXUuid()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper;->mViewParams:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->getNotesView()Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewContract$IView;

    move-result-object p1

    const/16 v1, 0x12c

    invoke-interface {p1, v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewContract$IView;->setIsScrollToTop(ZI)V

    :cond_2
    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper;->mLastSearchString:Ljava/lang/String;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper;->mViewParams:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->getNotesView()Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewContract$IView;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper;->mDocumentMap:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->getCommonDisplayListSize([Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2, v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewContract$IView;->onDataChanged(ILjava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private searchRunnable(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper;->mViewParams:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->getModeIndex()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/common/util/FeatureUtils;->isSearchMode(I)Z

    move-result v2

    if-nez v2, :cond_0

    return-object v0

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper;->mViewParams:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->getNotesView()Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewContract$IView;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewContract$IView;->getSearchImpl()Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/SearchImpl;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/SearchImpl;->getSearchSavedText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper;->mStateInfo:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->getPrevModeIndex()I

    move-result v0

    const/4 v2, 0x7

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper;->mStateInfo:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->getCaller()I

    move-result v0

    const/16 v2, 0x9

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper;->mStateInfo:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->getCaller()I

    move-result v0

    const/16 v2, 0xa

    if-ne v0, v2, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper;->mDocumentMap:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->getNoteSearchRepository()Lcom/samsung/android/support/senl/nt/data/repository/search/NotesSearchRepository;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/common/util/NotesUtils;->getSortParam()Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;

    move-result-object v3

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/common/util/FeatureUtils;->isCoeditSearchMode(I)Z

    move-result v4

    invoke-virtual {v2, p1, v3, v4, v0}, Lcom/samsung/android/support/senl/nt/data/repository/search/NotesSearchRepository;->search(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;ZZ)Ljava/util/List;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "searchRunnable# search result size : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", isNeedToCheckPageMode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", modeIndex : "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SearchHelper"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_4
    :goto_1
    return-object v0
.end method


# virtual methods
.method public addOnScrollListener(Lcom/samsung/android/support/senl/nt/app/main/common/view/NotesPenRecyclerView;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper;->mScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method public hideSoftInput(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hideSoftInput : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SearchHelper"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper;->mViewParams:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->getAbsFragment()Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper;->mViewContract:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper$ViewContract;

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper$ViewContract;->getNotesSearchView()Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView;

    move-result-object v1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;->isUSAModel()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper;->minimizeSoftInput()V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/InputMethodCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/InputMethodCompat;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper;->mViewParams:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/view/InputMethodCompat;->hideSoftInput(Landroid/content/Context;Landroid/view/View;)Z

    invoke-virtual {v1}, Landroidx/appcompat/widget/SearchView;->clearFocus()V

    :goto_0
    return-void
.end method

.method public onConfigurationChanged()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper;->mViewContract:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper$ViewContract;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper$ViewContract;->hasSearchView()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper;->mViewContract:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper$ViewContract;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper$ViewContract;->getNotesSearchView()Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView;->updateSearchViewMargin()V

    :cond_1
    :goto_0
    return-void
.end method

.method public removeOnScrollListener(Lcom/samsung/android/support/senl/nt/app/main/common/view/NotesPenRecyclerView;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper;->mScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method public requestSearch(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper;->mViewContract:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper$ViewContract;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper$ViewContract;->hasSearchView()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper;->mViewContract:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper$ViewContract;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper$ViewContract;->getNotesSearchView()Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestSearch# modeIndex: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper;->mViewParams:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->getModeIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SearchHelper"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper;->mViewContract:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper$ViewContract;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper$ViewContract;->getNotesSearchView()Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper;->searchNotesData(Ljava/lang/String;)V

    return-void
.end method

.method public searchNotesData(Ljava/lang/String;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "searchNotesData# searchString : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SearchHelper"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper;->mDataSearchTask:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/DataSearchTask;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper;->mViewParams:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->getNotesView()Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewContract$IView;

    move-result-object v0

    invoke-interface {v0, v2, v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewContract$IView;->setIsScrollToTop(ZI)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper;->mDataSearchTask:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/DataSearchTask;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_0
    new-array v0, v1, [Ljava/util/List;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    aput-object v3, v0, v2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper;->mDocumentMap:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->clearCommonDisplayList()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper;->mPresenterContract:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper$PresenterContract;

    const-string v0, "searchNotesData, isEmpty"

    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper$PresenterContract;->notifyDataSetChanged(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper;->mViewParams:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->getNotesView()Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewContract$IView;

    move-result-object p1

    const-string v0, "searchNotesData"

    invoke-interface {p1, v2, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewContract$IView;->onDataChanged(ILjava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper;->mPresenterContract:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper$PresenterContract;

    invoke-interface {v1, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper$PresenterContract;->setHighlightText(Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/DataSearchTask;

    new-instance v3, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper$7;

    invoke-direct {v3, p0, v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper$7;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper;[Ljava/util/List;Ljava/lang/String;)V

    new-instance v4, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper$8;

    invoke-direct {v4, p0, v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper$8;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper;[Ljava/util/List;Ljava/lang/String;)V

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/DataSearchTask;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/DataSearchTask$Runnable;Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/DataSearchTask$PostRunnable;)V

    sget-object p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/DataSearchTask;->SINGLE_THREAD_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v0, v2, [Ljava/lang/Void;

    invoke-virtual {v1, p1, v0}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/DataSearchTask;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper;->mDataSearchTask:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/DataSearchTask;

    :goto_1
    return-void
.end method

.method public searchTagNotesData(Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper;->mDataSearchTask:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/DataSearchTask;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper;->mViewParams:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->getNotesView()Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewContract$IView;

    move-result-object v0

    invoke-interface {v0, v2, v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewContract$IView;->setIsScrollToTop(ZI)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper;->mDataSearchTask:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/DataSearchTask;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_0
    new-array v0, v1, [Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    aput-object v1, v0, v2

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/DataSearchTask;

    new-instance v3, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper$9;

    invoke-direct {v3, p0, p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper$9;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper;Ljava/util/Set;[Ljava/util/List;)V

    new-instance p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper$10;

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper$10;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper;[Ljava/util/List;)V

    invoke-direct {v1, v3, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/DataSearchTask;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/DataSearchTask$Runnable;Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/DataSearchTask$PostRunnable;)V

    sget-object p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/DataSearchTask;->SINGLE_THREAD_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v0, v2, [Ljava/lang/Void;

    invoke-virtual {v1, p1, v0}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/DataSearchTask;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper;->mDataSearchTask:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/DataSearchTask;

    return-void
.end method

.method public setContract(ILcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper$ViewContract;)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper;->mCallerModeIndex:I

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper;->mViewContract:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper$ViewContract;

    return-void
.end method

.method public setOnSearchListener(Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper;->mSearchTextListener:Landroidx/appcompat/widget/SearchView$OnQueryTextListener;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SearchView;->setOnQueryTextListener(Landroidx/appcompat/widget/SearchView$OnQueryTextListener;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper;->mOnSearchVoiceClickListener:Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView$OnSearchVoiceClickListener;

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView;->setOnSearchVoiceClickListener(Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView$OnSearchVoiceClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper;->mOnSearchEnterClickListener:Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView$OnSearchEnterClickListener;

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView;->setOnSearchEnterClickListener(Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView$OnSearchEnterClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper;->mOnSearchMoreClickListener:Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView$OnSearchMoreClickListener;

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView;->setOnSearchMoreClickListener(Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView$OnSearchMoreClickListener;)V

    return-void
.end method
