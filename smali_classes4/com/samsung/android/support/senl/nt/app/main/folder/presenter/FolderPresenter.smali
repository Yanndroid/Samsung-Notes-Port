.class public Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;
.super Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/AdapterContract;


# static fields
.field private static final TAG:Ljava/lang/String; = "FolderPresenter"


# instance fields
.field private mDataUpdateType:I

.field private final mDialogCreator:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DialogContract;

.field private final mDialogManager:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder<",
            "Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DialogManager;",
            ">;"
        }
    .end annotation
.end field

.field private mDisplayFoldersEntries:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;",
            ">;"
        }
    .end annotation
.end field

.field private final mFoldersObserver:Landroidx/lifecycle/Observer;

.field private final mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

.field private final mFragmentContract:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/ViewContract$IFragment;

.field private final mLockHelper:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder<",
            "Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/LockHelper;",
            ">;"
        }
    .end annotation
.end field

.field private final mRecyclerView:Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;

.field private final mRecyclerViewHelper:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder<",
            "Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;",
            ">;"
        }
    .end annotation
.end field

.field private final mReorderItemController:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder<",
            "Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/ViewContract$IFragment;Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DialogContract;I)V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;->mDataUpdateType:I

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$1;-><init>(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;->mFoldersObserver:Landroidx/lifecycle/Observer;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$2;-><init>(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;->mLockHelper:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$3;-><init>(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;->mRecyclerViewHelper:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$4;-><init>(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;->mReorderItemController:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$5;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$5;-><init>(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;)V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;->mDialogManager:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;->mFragmentContract:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/ViewContract$IFragment;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;->mRecyclerView:Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;

    iput-object p4, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;->mDialogCreator:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DialogContract;

    new-instance p2, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderAdapter;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->mFolderModel:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;

    invoke-direct {p2, p1, p0, p3}, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderAdapter;-><init>(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/AdapterContract;Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;)V

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->mFolderAdapter:Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderAdapter;

    const/4 p1, 0x4

    if-ne p5, p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->mFolderModel:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->restoreFolderMsSyncExpandState()V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->getInstance()Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->mFolderModel:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->getFolderDataMap()Ljava/util/Map;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->restoreFolderExpandState(Ljava/util/Map;)V

    :goto_0
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;->mDataUpdateType:I

    return p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;)Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DialogContract;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;->mDialogCreator:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DialogContract;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;)Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;->mDialogManager:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;)Landroidx/lifecycle/LiveData;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;->mDisplayFoldersEntries:Landroidx/lifecycle/LiveData;

    return-object p0
.end method

.method private deleteFolderData(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "FolderPresenter"

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteFolderData# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/common/task/FolderDeleteTask;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$6;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$6;-><init>(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;)V

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/app/main/common/task/FolderDeleteTask;-><init>(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/app/main/common/task/FolderDeleteTask$PostRunnable;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/ArrayList;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    :cond_1
    :goto_0
    const-string p1, "deleteFolderData# fail"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic e(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;)Landroidx/lifecycle/Observer;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;->mFoldersObserver:Landroidx/lifecycle/Observer;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;)Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    return-object p0
.end method

.method public static bridge synthetic g(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;)Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/ViewContract$IFragment;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;->mFragmentContract:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/ViewContract$IFragment;

    return-object p0
.end method

.method private getChildEntries(Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->getFolderData(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->getChildren()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private getDeleteFolderList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->mFolderModel:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->getToBeDeletedUuid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->mFolderModel:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->getToBeDeletedUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->getCheckedItemUuidList()Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private getFolderHolder(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;->mRecyclerViewHelper:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;->getFolderHolder(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;

    move-result-object p1

    return-object p1
.end method

.method public static bridge synthetic h(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;)Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;->mLockHelper:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    return-object p0
.end method

.method public static bridge synthetic i(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;)Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;->mRecyclerView:Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;

    return-object p0
.end method

.method public static bridge synthetic j(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;->mDataUpdateType:I

    return-void
.end method

.method public static bridge synthetic k(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;->deleteFolderData(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static bridge synthetic l(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;)Ljava/util/ArrayList;
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;->getDeleteFolderList()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;->toggleCheckBox(Ljava/lang/String;Z)V

    return-void
.end method

.method private removeCheckedChild(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;->getChildEntries(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->removeCheckedItem(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;->removeCheckedChild(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private toggleCheckBox(Ljava/lang/String;Z)V
    .locals 2

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->addCheckedItem(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->removeCheckedItem(Ljava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;->mFragmentContract:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/ViewContract$IFragment;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/ViewContract$IFragment;->getMode()Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/ViewContract$IMode;

    move-result-object p1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->getSelectedItemCount()I

    move-result p2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->getFolderCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->getDimFolderCount()I

    move-result v1

    sub-int/2addr v0, v1

    if-ne p2, v0, :cond_1

    const/4 p2, 0x1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->getSelectedItemCount()I

    move-result v0

    invoke-interface {p1, p2, v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/ViewContract$IMode;->updateSelectedFolderCount(ZI)V

    return-void
.end method


# virtual methods
.method public getFolderUuid()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$AllNotes;->UUID:Ljava/lang/String;

    return-object v0
.end method

.method public getLayoutMode()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;->mRecyclerView:Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerView;->getLayoutMode()I

    move-result v0

    return v0
.end method

.method public getModeIndex()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;->mFragmentContract:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/ViewContract$IFragment;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/ViewContract$IFragment;->getModeIndex()I

    move-result v0

    return v0
.end method

.method public isDimItem(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;->mFragmentContract:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/ViewContract$IFragment;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/ViewContract$IFragment;->getMode()Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/ViewContract$IMode;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/ViewContract$IMode;->isDimItem(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;->mLockHelper:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/LockHelper;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/LockHelper;->onActivityResultFromLockManager(Landroidx/appcompat/app/AppCompatActivity;IILandroid/content/Intent;)Z

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;->saveFolderExpandState()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;->mRecyclerViewHelper:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;->mRecyclerViewHelper:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;->release()V

    :cond_0
    return-void
.end method

.method public onFolderSelected(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;IZ)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->mFolderModel:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->setSelectedUuid(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->hasChild()Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_3

    if-nez p3, :cond_3

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->mFolderModel:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;

    invoke-virtual {p3, p2}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->getFolderDisplayData(I)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    move-result-object p3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;->mFragmentContract:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/ViewContract$IFragment;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/ViewContract$IFragment;->getModeIndex()I

    move-result v0

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$MyFolders;->UUID:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->getIconLayout()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->isExpanded()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$string;->collapse:I

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$string;->expand:I

    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->isExpanded()Z

    move-result p3

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->getUuid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p3, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;->setExpandedStatus(ZLjava/lang/String;I)V

    return-void

    :cond_3
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->getFolderItemContainer()Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->isEnabled()Z

    move-result p3

    if-nez p3, :cond_4

    return-void

    :cond_4
    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;->mFragmentContract:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/ViewContract$IFragment;

    invoke-interface {p3}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/ViewContract$IFragment;->getMode()Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/ViewContract$IMode;

    move-result-object p3

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->getViewType()I

    move-result v0

    invoke-interface {p3, p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/ViewContract$IMode;->onFolderSelected(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;I)Z

    move-result p3

    if-eqz p3, :cond_6

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;->mFragmentContract:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/ViewContract$IFragment;

    invoke-interface {p3}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/ViewContract$IFragment;->getModeIndex()I

    move-result p3

    if-ne p3, v1, :cond_5

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;->mRecyclerViewHelper:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p3, p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;->toggleCheckBox(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;Z)V

    goto :goto_1

    :cond_5
    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;->mFragmentContract:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/ViewContract$IFragment;

    invoke-interface {p3}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/ViewContract$IFragment;->getModeIndex()I

    move-result p3

    const/4 v0, 0x4

    if-ne p3, v0, :cond_6

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;->toggleFolderSyncSwitch(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;)V

    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;->mRecyclerView:Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;->smoothScrollToPositionForDrawer(I)V

    return-void
.end method

.method public onItemLongPressed(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;)Z
    .locals 11

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;->mDataUpdateType:I

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;->mFragmentContract:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/ViewContract$IFragment;

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/ViewContract$IFragment;->getModeIndex()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;->mFragmentContract:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/ViewContract$IFragment;

    invoke-interface {v2}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/ViewContract$IFragment;->getMode()Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/ViewContract$IMode;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->getViewType()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/ViewContract$IMode;->onItemLongPressed(I)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;->mFragmentContract:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/ViewContract$IFragment;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/ViewContract$IFragment;->getModeIndex()I

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->isCheckedItem(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;->mRecyclerViewHelper:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;

    invoke-virtual {v3, p1, v4}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;->toggleCheckBox(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;Z)V

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->mFolderModel:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;

    invoke-virtual {v3, v2}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->setSelectedUuid(Ljava/lang/String;)V

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;->mRecyclerViewHelper:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->mFolderModel:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->getFolderDisplayDataList()Ljava/util/List;

    move-result-object v3

    iget-object v6, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->mFolderModel:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;

    invoke-virtual {v6, v2}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->getFolderData(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v7

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->getSelectedItemCount()I

    move-result v8

    if-eq v0, v1, :cond_2

    const-wide/16 v0, 0x3e8

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x1f4

    :goto_0
    move-wide v9, v0

    move-object v6, p1

    invoke-virtual/range {v5 .. v10}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;->postStartDragAndDrop(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;IIJ)V

    return v4

    :cond_3
    return v0
.end method

.method public onItemPressReleased()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;->mFragmentContract:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/ViewContract$IFragment;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/ViewContract$IFragment;->getMode()Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/ViewContract$IMode;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/ViewContract$IMode;->onItemPressReleased()V

    return-void
.end method

.method public onTouch(Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;I)Z
    .locals 5

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;->mDataUpdateType:I

    const/4 v1, 0x0

    const-string v2, "FolderPresenter"

    const/16 v3, 0x9

    if-eq v0, v3, :cond_3

    const/16 v4, 0xa

    if-ne v0, v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/util/StorageUtils;->isAvailableMemoryForNewMemo()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/base/winset/util/DialogUtils;->showNotEnoughStorageDialogFragment(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;)Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/ConfirmDialogFragment;

    return v1

    :cond_1
    const-string v0, "onItemTouched: reorder"

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->mFolderModel:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;

    invoke-virtual {v0, p2}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->getFolderDisplayData(I)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->getFolderHolderInfo()Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2, p2}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;->setExpandedStatus(ZLjava/lang/String;I)V

    :cond_2
    iput v3, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;->mDataUpdateType:I

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;->mReorderItemController:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController;

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController;->reorderStart(Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;)V

    goto :goto_1

    :cond_3
    :goto_0
    const-string p1, "onTouch block"

    invoke-static {v2, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return v1
.end method

.method public restoreInstanceState(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->restoreInstanceState(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;->mDialogManager:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DialogManager;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DialogManager;->restoreInstanceState()V

    return-void
.end method

.method public saveFolderExpandState()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;->mFragmentContract:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/ViewContract$IFragment;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/ViewContract$IFragment;->getModeIndex()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->mFolderModel:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->saveFolderMsSyncExpandState()V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->getInstance()Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->mFolderModel:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->getFolderDataMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->saveFolderExpandState(Ljava/util/Map;)V

    :goto_0
    return-void
.end method

.method public setDragListener(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;->mRecyclerViewHelper:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;->setDragListener(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;)V

    return-void
.end method

.method public setExpandedStatus(ZLjava/lang/String;I)V
    .locals 8

    const/4 v0, -0x1

    if-eq p3, v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->mFolderModel:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->getFolderDisplayDataList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, p3, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->mFolderModel:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;

    invoke-virtual {v0, p3}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->getFolderDisplayData(I)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->isExpanded()Z

    move-result v1

    if-eq v1, p1, :cond_1

    return-void

    :cond_1
    invoke-direct {p0, p2}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;->getFolderHolder(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->getFolderHolderInfo()Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->setArrowExpanded(ZLjava/lang/String;)V

    :cond_2
    const-string v1, ", itemCount : "

    const-string v2, "FolderPresenter"

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->mFolderModel:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;

    if-eqz p1, :cond_3

    invoke-virtual {v4, v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->collapseFolderDisplayData(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;)I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setExpandedStatus# collapse position : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->mFolderAdapter:Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderAdapter;

    add-int/2addr p3, v3

    invoke-virtual {v1, p3, v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    invoke-direct {p0, p2}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;->removeCheckedChild(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    add-int/lit8 v5, p3, 0x1

    invoke-virtual {v4, p2, v5}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->expandedFolderDisplayData(Ljava/lang/String;I)I

    move-result v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setExpandedStatus# expand position : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v2, p3}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->mFolderAdapter:Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderAdapter;

    invoke-virtual {p3, v5, v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    const/16 p3, 0xa

    iget v1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;->mDataUpdateType:I

    if-eq p3, v1, :cond_4

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;->mRecyclerView:Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p3

    check-cast p3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p3

    if-ge p3, v5, :cond_4

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;->mRecyclerView:Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;

    invoke-virtual {p3, v5}, Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;->smoothScrollToPositionForDrawer(I)V

    :cond_4
    invoke-virtual {p0, p2}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->isCheckedItem(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-direct {p0, p2}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;->getChildEntries(Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    if-nez p2, :cond_5

    return-void

    :cond_5
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->addCheckedItem(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    :goto_1
    xor-int/2addr p1, v3

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->setExpanded(Z)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->mFolderModel:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->updateFolderData(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->getFolderCount()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;->setFastScrollerEnabled(I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;->mFragmentContract:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/ViewContract$IFragment;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/ViewContract$IFragment;->getMode()Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/ViewContract$IMode;

    move-result-object p1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->getSelectedItemCount()I

    move-result p2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->getFolderCount()I

    move-result p3

    sub-int/2addr p3, v3

    if-ne p2, p3, :cond_7

    goto :goto_2

    :cond_7
    const/4 v3, 0x0

    :goto_2
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->getSelectedItemCount()I

    move-result p2

    invoke-interface {p1, v3, p2}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/ViewContract$IMode;->updateSelectedFolderCount(ZI)V

    :cond_8
    :goto_3
    return-void
.end method

.method public setFastScrollerEnabled(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;->mRecyclerView:Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x46

    if-lt p1, v1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->seslSetFastScrollerEnabled(Z)V

    return-void
.end method

.method public setObserveDataChanged()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;->mFragmentContract:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/ViewContract$IFragment;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/ViewContract$IFragment;->getModeIndex()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x4

    if-ne v0, v4, :cond_0

    new-instance v0, Ljava/util/LinkedList;

    new-array v1, v1, [Ljava/lang/String;

    sget-object v4, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->RECYCLE_BIN:Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->getUuid()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    sget-object v3, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->SHARED_NOTE_BOOK:Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->getUuid()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/LinkedList;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    sget-object v5, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->RECYCLE_BIN:Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;

    invoke-virtual {v5}, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->getUuid()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    sget-object v3, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->SCREEN_OFF_MEMO:Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->getUuid()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    sget-object v2, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->SHARED_NOTE_BOOK:Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->getUuid()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->mFolderModel:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->getObserver(Ljava/util/Collection;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;->mDisplayFoldersEntries:Landroidx/lifecycle/LiveData;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;->mFoldersObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public setSelectionListener()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;->mRecyclerViewHelper:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;->setSelectionListener()V

    return-void
.end method

.method public showAddFolderDialog(Ljava/lang/String;II)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;->mDialogManager:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DialogManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DialogManager;->showAddFolderDialog(Ljava/lang/String;II)V

    return-void
.end method

.method public showChangeColorDialog(Ljava/util/ArrayList;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;->mDialogManager:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DialogManager;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DialogManager;->showChangeColorDialog(Ljava/util/ArrayList;I)V

    return-void
.end method

.method public showDeleteFolderDialog(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;->mDialogManager:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DialogManager;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->getSelectedItemCount()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DialogManager;->showDeleteFolderDialog(II)V

    return-void
.end method

.method public showDeleteFolderDialog(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;->mDialogManager:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DialogManager;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DialogManager;->showDeleteFolderDialog(Ljava/lang/String;I)V

    return-void
.end method

.method public showFolderMoveDialog()V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->onReplaceCheckedItems()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;->mDialogManager:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DialogManager;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->getCheckedRootItemUuidList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->getSelectedItemCount()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DialogManager;->showFolderMoveDialog(Ljava/util/ArrayList;I)V

    return-void
.end method

.method public showRenameFolderDialog(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;->mDialogManager:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DialogManager;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DialogManager;->showRenameFolderDialog(Ljava/lang/String;I)V

    return-void
.end method

.method public toggleFolderSyncSwitch(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;)V
    .locals 4

    const-string v0, "FolderPresenter"

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0xc

    iput v1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;->mDataUpdateType:I

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->getUuid()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->mFolderModel:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;

    invoke-virtual {v2, v1}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->getFolderData(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    move-result-object v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->isSyncWithMS()I

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p1, v3}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->toggleFolderSyncSwitch(Z)V

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->setIsSyncWithMS(I)V

    :try_start_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->mFolderModel:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->getFolderRepository()Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeRepository;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeRepository;->update(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;)V
    :try_end_0
    .catch Lcom/samsung/android/support/senl/nt/data/common/exceptions/InvalidParentFolderException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "toggleFolderSyncSwitch - add ConnectedFolder. folderUuid : "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " , "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->x()Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;

    move-result-object p1

    invoke-virtual {p1, v1, v3}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->U(Ljava/lang/String;Z)V

    return-void

    :catch_0
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "toggleFolderSyncSwitch# : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateContentDescription(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;->mRecyclerViewHelper:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;->updateContentDescription(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;)V

    return-void
.end method
