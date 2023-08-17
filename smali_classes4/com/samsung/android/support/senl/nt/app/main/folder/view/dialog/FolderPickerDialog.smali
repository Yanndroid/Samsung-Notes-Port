.class public Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;
.super Lcom/samsung/android/support/senl/nt/app/common/dialog/AbsDialogFragment;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/AdapterContract;
.implements Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/IFolderPickerDialog;


# static fields
.field private static final DATA_CONTAINS_FOLDERS:I = 0x0

.field private static final DATA_CONTAINS_ONLY_NOTES:I = -0x1

.field private static final DATA_UPDATE_FINISHED:I = 0x1

.field private static final EXCLUDE_SCREEN_OFF_MEMO:I = 0x0

.field private static final INCLUDE_SCREEN_OFF_MEMO:I = 0x1

.field private static final NOT_DEFINE:I = -0x1

.field private static final TAG:Ljava/lang/String; = "FolderPickerDialog"


# instance fields
.field private mAdapter:Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderAdapter;

.field private mCheckedFolderCount:I

.field private mCheckedFolderRootItemUuidList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCheckedNotesCount:I

.field private final mConfirmResultListener:Lcom/samsung/android/support/senl/nt/app/main/common/dialog/IConfirmDialogResultListener;

.field private mDataUpdateType:I

.field private final mEditDialogResultListener:Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/IEditDialogResult;

.field private mFolderDataStatus:I

.field private final mFolderMoveMap:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderMoveMap;

.field private mFolderSelectedListener:Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/IFolderPickerDialog$OnFolderSelectedListener;

.field private mHighlightFolderUuid:Ljava/lang/String;

.field private mIsMovableData:Z

.field private final mModel:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;

.field private mPickerDialogListener:Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/IFolderPickerDialogResult;

.field private mRecyclerView:Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;

.field private mScreenOfMemoStatus:I

.field private mSdocxUuid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/common/dialog/AbsDialogFragment;-><init>()V

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderMoveMap;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderMoveMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->mFolderMoveMap:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderMoveMap;

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$AllNotes;->UUID:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->mHighlightFolderUuid:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->mCheckedFolderCount:I

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->mCheckedNotesCount:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->mIsMovableData:Z

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog$1;-><init>(Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->mEditDialogResultListener:Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/IEditDialogResult;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog$2;-><init>(Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->mConfirmResultListener:Lcom/samsung/android/support/senl/nt/app/main/common/dialog/IConfirmDialogResultListener;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->mModel:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->mScreenOfMemoStatus:I

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/common/dialog/AbsDialogFragment;-><init>()V

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderMoveMap;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderMoveMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->mFolderMoveMap:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderMoveMap;

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$AllNotes;->UUID:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->mHighlightFolderUuid:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->mCheckedFolderCount:I

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->mCheckedNotesCount:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->mIsMovableData:Z

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog$1;-><init>(Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;)V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->mEditDialogResultListener:Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/IEditDialogResult;

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog$2;-><init>(Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;)V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->mConfirmResultListener:Lcom/samsung/android/support/senl/nt/app/main/common/dialog/IConfirmDialogResultListener;

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;

    invoke-direct {v1, p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;-><init>(Ljava/util/Map;)V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->mModel:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;

    xor-int/lit8 p1, p2, 0x1

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->mScreenOfMemoStatus:I

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/common/dialog/AbsDialogFragment;-><init>()V

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderMoveMap;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderMoveMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->mFolderMoveMap:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderMoveMap;

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$AllNotes;->UUID:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->mHighlightFolderUuid:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->mCheckedFolderCount:I

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->mCheckedNotesCount:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->mIsMovableData:Z

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog$1;-><init>(Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;)V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->mEditDialogResultListener:Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/IEditDialogResult;

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog$2;-><init>(Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;)V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->mConfirmResultListener:Lcom/samsung/android/support/senl/nt/app/main/common/dialog/IConfirmDialogResultListener;

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->mModel:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;

    xor-int/2addr p1, v0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->mScreenOfMemoStatus:I

    return-void
.end method

.method private addDimStatusItem(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->mFolderMoveMap:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderMoveMap;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderMoveMap;->addDimStatusItem(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->getChildren()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->addDimStatusItem(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;)Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderAdapter;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->mAdapter:Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderAdapter;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->mDataUpdateType:I

    return p0
.end method

.method public static bridge synthetic d(Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->mFolderDataStatus:I

    return p0
.end method

.method public static bridge synthetic e(Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->mIsMovableData:Z

    return p0
.end method

.method public static bridge synthetic f(Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;)Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->mModel:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;

    return-object p0
.end method

.method public static bridge synthetic g(Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;)Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/IFolderPickerDialogResult;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->mPickerDialogListener:Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/IFolderPickerDialogResult;

    return-object p0
.end method

.method private getFolderHolder(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->mRecyclerView:Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->mRecyclerView:Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->mRecyclerView:Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->getFolderHolderInfo()Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->getUuid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v1
.end method

.method public static bridge synthetic h(Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;)Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->mRecyclerView:Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;

    return-object p0
.end method

.method public static bridge synthetic i(Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->mDataUpdateType:I

    return-void
.end method

.method public static bridge synthetic j(Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->mFolderDataStatus:I

    return-void
.end method

.method public static bridge synthetic k(Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->onFoldersDataMove(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic l(Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;ZLjava/lang/String;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->setExpandedStatus(ZLjava/lang/String;IZ)V

    return-void
.end method

.method public static bridge synthetic m(Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->showAddFolderDialog(Ljava/lang/String;I)V

    return-void
.end method

.method private onFoldersDataMove(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->mModel:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->mCheckedFolderRootItemUuidList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->moveFolderData(Ljava/util/ArrayList;Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->add_subfolder_max_toast:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHandler;->show(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->mPickerDialogListener:Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/IFolderPickerDialogResult;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/IFolderPickerDialogResult;->onCancel()V

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method

.method private openCurrentFolder(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->mModel:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->getFolderData(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->getParent()Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    move-result-object v0

    :goto_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->openCurrentFolder(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->isExpanded()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->mModel:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->getFolderDisplayDataList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->setExpandedStatus(ZLjava/lang/String;IZ)V

    :cond_1
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->getViewType()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->getViewType()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_3

    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->isExpanded()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->mModel:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->getFolderDisplayDataList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->setExpandedStatus(ZLjava/lang/String;IZ)V

    :cond_3
    return-void
.end method

.method private setExpandedStatus(ZLjava/lang/String;IZ)V
    .locals 6

    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->mModel:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;

    invoke-virtual {v0, p3}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->getFolderDisplayData(I)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->mAdapter:Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderAdapter;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p3, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    invoke-direct {p0, p2}, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->getFolderHolder(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->getFolderHolderInfo()Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->setArrowExpanded(ZLjava/lang/String;)V

    :cond_1
    const-string v1, ", itemCount : "

    const-string v2, "FolderPickerDialog"

    if-eqz p1, :cond_2

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->mModel:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;

    invoke-virtual {p2, v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->collapseFolderDisplayData(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;)I

    move-result p2

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setExpandedStatus# collapseFolderDisplayData collapse position : "

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v2, p4}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p4, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->mAdapter:Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderAdapter;

    add-int/lit8 p3, p3, 0x1

    invoke-virtual {p4, p3, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->mModel:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {v3, p2, v4}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->expandedFolderDisplayData(Ljava/lang/String;I)I

    move-result p2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setExpandedStatus# expandedFolderDisplayData expand position : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v2, p3}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->mAdapter:Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderAdapter;

    invoke-virtual {p3, v4, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    if-nez p4, :cond_3

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->mRecyclerView:Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;

    invoke-virtual {p2, v4}, Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;->smoothScrollToPositionForDrawer(I)V

    :cond_3
    :goto_0
    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->setExpanded(Z)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->mModel:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->updateFolderData(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;)V

    return-void
.end method

.method private showAddFolderDialog(Ljava/lang/String;I)V
    .locals 4

    const-string v0, "addFolder:///"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    sget-object p1, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$MyFolders;->UUID:Ljava/lang/String;

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showAddFolderDialog #parentUuid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FolderPickerDialog"

    invoke-static {v3, v2}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->getInstance()Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->mModel:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->getFolderDataMap()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->getFoldersDisplayName(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderNameDialog;

    invoke-direct {v3, p1, v0, v2}, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderNameDialog;-><init>(Ljava/lang/String;ILjava/util/List;)V

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v3, p1, p2}, Lcom/samsung/android/support/senl/nt/app/common/dialog/AbsDialogFragment;->setAnchorViewId(Landroidx/appcompat/app/AlertDialog;I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->mEditDialogResultListener:Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/IEditDialogResult;

    invoke-virtual {v3, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->setEditDialogResultListener(Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/IEditDialogResult;)V

    invoke-virtual {v3, v1}, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->setDismissAfterHideSIP(Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string p2, "folder_name_dialog"

    invoke-virtual {v3, p1, p2}, Lcom/samsung/android/support/senl/nt/app/common/dialog/AbsDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getFolderUuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->mHighlightFolderUuid:Ljava/lang/String;

    return-object v0
.end method

.method public getLayoutMode()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->mRecyclerView:Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerView;->getLayoutMode()I

    move-result v0

    return v0
.end method

.method public getModeIndex()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isAnimateItem(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isCheckedItem(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isDimItem(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->mFolderMoveMap:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderMoveMap;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderMoveMap;->isDimStatusItem(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "FolderPickerDialog"

    const-string v1, "onCreateDialog"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->mFolderMoveMap:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderMoveMap;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderMoveMap;->loadCheckedItem(Landroid/os/Bundle;)V

    const-string v0, "checkedFolderRootItemUuidList"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->mCheckedFolderRootItemUuidList:Ljava/util/ArrayList;

    const-string v0, "checkedFolderCount"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->mCheckedFolderCount:I

    const-string v0, "checked_notes_count"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->mCheckedNotesCount:I

    const-string v0, "folderDataStatus"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->mFolderDataStatus:I

    const-string v0, "is_excluded_screen_of_memo"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->mScreenOfMemoStatus:I

    const-string v0, "sdocx_uuid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->mSdocxUuid:Ljava/lang/String;

    const-string v0, "highlight_uuid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->mHighlightFolderUuid:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->mModel:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->restoreFolderPickerExpandState()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->mModel:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->initFolderDisplayDataList()V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->mModel:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;

    if-eqz p1, :cond_1

    const-string v1, "is_movable_data"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    goto :goto_1

    :cond_1
    iget-boolean v1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->mIsMovableData:Z

    :goto_1
    iput-boolean v1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->mIsMovableData:Z

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->attachAddFolderItem(Z)V

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->mIsMovableData:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->mModel:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->attachAllNotesItem()V

    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$layout;->folder_picker_list_fragment:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/base/winset/builder/AlertDialogBuilderForAppCompat;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/samsung/android/support/senl/nt/base/winset/builder/AlertDialogBuilderForAppCompat;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/base/winset/builder/AlertDialogBuilderForAppCompat;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v1

    iget-boolean v3, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->mIsMovableData:Z

    if-eqz v3, :cond_3

    sget v3, Lcom/samsung/android/support/senl/nt/app/R$string;->select_destination_folder:I

    goto :goto_2

    :cond_3
    sget v3, Lcom/samsung/android/support/senl/nt/app/R$string;->select_folder:I

    :goto_2
    invoke-virtual {v1, v3}, Landroidx/appcompat/app/AppCompatDialog;->setTitle(I)V

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/view/Window;->setGravity(I)V

    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AlertDialog;->setView(Landroid/view/View;)V

    new-instance v3, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog$3;

    invoke-direct {v3, p0}, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog$3;-><init>(Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;)V

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    sget v3, Lcom/samsung/android/support/senl/nt/app/R$id;->folderlist_recyclerview:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->mRecyclerView:Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;

    new-instance v3, Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderLayoutManager;-><init>(Landroid/content/Context;)V

    const/16 v4, 0x9

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->mRecyclerView:Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->mModel:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;

    invoke-direct {v0, v2, p0, v3}, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderAdapter;-><init>(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/AdapterContract;Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->mAdapter:Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderAdapter;

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->mScreenOfMemoStatus:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x3

    if-nez v0, :cond_4

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    sget-object v6, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$RecycleBin;->UUID:Ljava/lang/String;

    aput-object v6, v0, v4

    sget-object v4, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$ScreenOffMemo;->UUID:Ljava/lang/String;

    aput-object v4, v0, v3

    sget-object v3, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$SharedNotes;->UUID:Ljava/lang/String;

    aput-object v3, v0, v2

    sget-object v2, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$Coedit;->UUID:Ljava/lang/String;

    aput-object v2, v0, v5

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_3

    :cond_4
    new-array v0, v5, [Ljava/lang/String;

    sget-object v5, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$RecycleBin;->UUID:Ljava/lang/String;

    aput-object v5, v0, v4

    sget-object v4, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$SharedNotes;->UUID:Ljava/lang/String;

    aput-object v4, v0, v3

    sget-object v3, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$Coedit;->UUID:Ljava/lang/String;

    aput-object v3, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_3
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->mRecyclerView:Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->mAdapter:Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderAdapter;

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    if-nez p1, :cond_6

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->mHighlightFolderUuid:Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/app/common/util/FeatureUtils;->isPreDefinedFolderUuid(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v2, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$MyFolders;->UUID:Ljava/lang/String;

    goto :goto_4

    :cond_5
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->mHighlightFolderUuid:Ljava/lang/String;

    :goto_4
    invoke-direct {p0, v2}, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->openCurrentFolder(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->mModel:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->mHighlightFolderUuid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->getFolderData(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->mRecyclerView:Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->mModel:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->getFolderDisplayDataList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_6
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->mModel:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;

    invoke-virtual {v2, v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->getObserver(Ljava/util/Collection;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v2, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog$4;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog$4;-><init>(Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;)V

    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string v0, "move_confirm_dialog"

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_7

    check-cast p1, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/MoveConfirmDialogFragment;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->mConfirmResultListener:Lcom/samsung/android/support/senl/nt/app/main/common/dialog/IConfirmDialogResultListener;

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/ConfirmDialogFragment;->setConfirmDialogResultListener(Lcom/samsung/android/support/senl/nt/app/main/common/dialog/IConfirmDialogResultListener;)V

    :cond_7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string v0, "folder_name_dialog"

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_8

    check-cast p1, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->mEditDialogResultListener:Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/IEditDialogResult;

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->setEditDialogResultListener(Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/IEditDialogResult;)V

    :cond_8
    return-object v1
.end method

.method public onFolderSelected(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;IZ)V
    .locals 5

    const-string v0, "FolderPickerDialog"

    const-string v1, "onFolderSelected"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->hasChild()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    if-nez p3, :cond_1

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->mModel:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;

    invoke-virtual {p3, p2}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->getFolderDisplayData(I)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    move-result-object p3

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->getIconLayout()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->isExpanded()Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->collapse:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->expand:I

    :goto_0
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->isExpanded()Z

    move-result p3

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->getUuid()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p3, p1, p2, v2}, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->setExpandedStatus(ZLjava/lang/String;IZ)V

    return-void

    :cond_1
    const/4 p2, 0x1

    new-array p3, p2, [Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;

    sget-object v1, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;->ManageCategory:Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;

    aput-object v1, p3, v2

    invoke-static {p3}, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper;->isValidEvent([Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;)Z

    move-result p3

    if-nez p3, :cond_2

    return-void

    :cond_2
    const-wide/16 v3, 0x1f4

    invoke-static {v3, v4, v1}, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper;->setHoldingEventTime(JLcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;)V

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->mRecyclerView:Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->getFolderItemContainer()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->getTouchPos()[F

    move-result-object v3

    aget v2, v3, v2

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->getTouchPos()[F

    move-result-object v3

    aget p2, v3, p2

    invoke-static {p3, v1, v2, p2}, Lcom/samsung/android/support/senl/nt/base/winset/util/DialogUtils;->getAnchorView(Landroid/view/ViewGroup;Landroid/view/ViewGroup;FF)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->getViewType()I

    move-result p3

    const/4 v1, 0x3

    if-ne p3, v1, :cond_3

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->getUuid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->showAddFolderDialog(Ljava/lang/String;I)V

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->getUuid()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->isDimItem(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_4

    return-void

    :cond_4
    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->mSdocxUuid:Ljava/lang/String;

    if-eqz p3, :cond_5

    const-string p2, "onFolderSelected# noteData move"

    invoke-static {v0, p2}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createDocumentDataRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentRepository;

    move-result-object p2

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->mSdocxUuid:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentRepository;->updateCategory(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->mFolderSelectedListener:Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/IFolderPickerDialog$OnFolderSelectedListener;

    if-eqz p2, :cond_6

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->getUuid()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/IFolderPickerDialog$OnFolderSelectedListener;->onFolderSelected(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->getUuid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->showMoveFolderConfirmDialog(Ljava/lang/String;I)V

    :cond_6
    :goto_1
    return-void
.end method

.method public onItemLongPressed(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;)Z
    .locals 6

    const/4 v0, 0x1

    new-array v1, v0, [Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;

    sget-object v2, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;->Folder:Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper;->isValidEvent([Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;)Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    const-wide/16 v4, 0x12c

    invoke-static {v4, v5, v2}, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper;->setHoldingEventTime(JLcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;)V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->getUuid()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onItemLongPressed "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "FolderPickerDialog"

    invoke-static {v4, v2}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->getViewType()I

    move-result v2

    if-ne v2, v0, :cond_1

    return v3

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->mRecyclerView:Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->getFolderItemContainer()Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->getTouchPos()[F

    move-result-object v5

    aget v3, v5, v3

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->getTouchPos()[F

    move-result-object p1

    aget p1, p1, v0

    invoke-static {v2, v4, v3, p1}, Lcom/samsung/android/support/senl/nt/base/winset/util/DialogUtils;->getAnchorView(Landroid/view/ViewGroup;Landroid/view/ViewGroup;FF)Landroid/view/View;

    move-result-object p1

    new-instance v2, Landroidx/appcompat/widget/PopupMenu;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x800005

    invoke-direct {v2, v3, p1, v4}, Landroidx/appcompat/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v3

    sget v4, Lcom/samsung/android/support/senl/nt/app/R$menu;->folder_move_popup_menu:I

    invoke-virtual {v2}, Landroidx/appcompat/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    new-instance v3, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog$5;

    invoke-direct {v3, p0, v1, p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog$5;-><init>(Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;Ljava/lang/String;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/PopupMenu;->setOnMenuItemClickListener(Landroidx/appcompat/widget/PopupMenu$OnMenuItemClickListener;)V

    invoke-virtual {v2}, Landroidx/appcompat/widget/PopupMenu;->show()V

    return v0
.end method

.method public onItemPressReleased()V
    .locals 0

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/app/common/dialog/AbsDialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->mFolderMoveMap:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderMoveMap;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderMoveMap;->saveCheckedItem(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->mModel:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->saveFolderPickerExpandState()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->mCheckedFolderRootItemUuidList:Ljava/util/ArrayList;

    const-string v1, "checkedFolderRootItemUuidList"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->mCheckedFolderCount:I

    const-string v1, "checkedFolderCount"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->mCheckedNotesCount:I

    const-string v1, "checked_notes_count"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->mFolderDataStatus:I

    const-string v1, "folderDataStatus"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->mScreenOfMemoStatus:I

    const-string v1, "is_excluded_screen_of_memo"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->mIsMovableData:Z

    const-string v1, "is_movable_data"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->mSdocxUuid:Ljava/lang/String;

    const-string v1, "sdocx_uuid"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->mHighlightFolderUuid:Ljava/lang/String;

    const-string v1, "highlight_uuid"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onTouch(Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setDragListener(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;)V
    .locals 0

    return-void
.end method

.method public setFolderSelectedListener(Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/IFolderPickerDialog$OnFolderSelectedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->mFolderSelectedListener:Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/IFolderPickerDialog$OnFolderSelectedListener;

    return-void
.end method

.method public setHighlightFolderUuid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->mHighlightFolderUuid:Ljava/lang/String;

    return-void
.end method

.method public setPickerDialogData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->mFolderMoveMap:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderMoveMap;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderMoveMap;->clearDimStatusItems()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->mFolderDataStatus:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->mCheckedFolderRootItemUuidList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->mSdocxUuid:Ljava/lang/String;

    return-void
.end method

.method public setPickerDialogData(Ljava/util/ArrayList;II)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;II)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->mFolderMoveMap:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderMoveMap;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderMoveMap;->clearDimStatusItems()V

    const/4 v0, 0x0

    if-nez p3, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iput v1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->mFolderDataStatus:I

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->mModel:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;

    sget-object v2, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$ScreenOffMemo;->UUID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->getFolderData(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->mModel:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->getFolderData(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->addDimStatusItem(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;)V

    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-boolean v3, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->mIsMovableData:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->mModel:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;

    invoke-virtual {v3, v2}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->getFolderData(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->addDimStatusItem(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;)V

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->mFolderMoveMap:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderMoveMap;

    invoke-virtual {v3, v2}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderMoveMap;->addDimStatusItem(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->mCheckedFolderRootItemUuidList:Ljava/util/ArrayList;

    iput p2, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->mCheckedNotesCount:I

    iput p3, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->mCheckedFolderCount:I

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->mModel:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;

    sget-object p2, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$MyFolders;->UUID:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->getFolderData(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    move-result-object p1

    if-nez p1, :cond_4

    return-void

    :cond_4
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->mModel:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->getFolderData(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->getChildren()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    iget p3, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->mFolderDataStatus:I

    if-eqz p3, :cond_6

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->mFolderMoveMap:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderMoveMap;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderMoveMap;->isDimStatusItem(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_5

    :cond_6
    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->mFolderDataStatus:I

    :cond_7
    return-void
.end method

.method public setPickerDialogListener(Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/IFolderPickerDialogResult;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->mPickerDialogListener:Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/IFolderPickerDialogResult;

    return-void
.end method

.method public showMoveFolderConfirmDialog(Ljava/lang/String;I)V
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showMoveFolderConfirmDialog #folderUuid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FolderPickerDialog"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->mIsMovableData:Z

    if-nez v0, :cond_1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->mPickerDialogListener:Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/IFolderPickerDialogResult;

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-interface {p2, p1}, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/IFolderPickerDialogResult;->onConfirm(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    return-void

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "move_confirm_dialog"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/MoveConfirmDialogFragment;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->mModel:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->getFolderData(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    move-result-object v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$MyFolders;->UUID:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->settings_my_folders:I

    :goto_0
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    sget-object v2, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$ScreenOffMemo;->UUID:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->string_screen_off_memo:I

    goto :goto_0

    :cond_5
    :goto_1
    iget v2, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->mCheckedFolderCount:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v2, :cond_6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v6, Lcom/samsung/android/support/senl/nt/app/R$plurals;->plurals_notes_moved:I

    iget v7, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->mCheckedNotesCount:I

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v3, v4

    aput-object v0, v3, v5

    invoke-virtual {v2, v6, v7, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_6
    iget v6, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->mCheckedNotesCount:I

    if-nez v6, :cond_7

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v6, Lcom/samsung/android/support/senl/nt/app/R$plurals;->plurals_folders_moved:I

    iget v7, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->mCheckedFolderCount:I

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v3, v4

    aput-object v0, v3, v5

    invoke-virtual {v2, v6, v7, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_7
    if-ne v2, v5, :cond_8

    if-ne v6, v5, :cond_8

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/samsung/android/support/senl/nt/app/R$string;->move_one_folder_and_one_note:I

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v4

    invoke-virtual {v2, v3, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_8
    if-ne v6, v5, :cond_9

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v6, Lcom/samsung/android/support/senl/nt/app/R$string;->move_folders_and_one_note:I

    new-array v3, v3, [Ljava/lang/Object;

    iget v7, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->mCheckedFolderCount:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v4

    aput-object v0, v3, v5

    invoke-virtual {v2, v6, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_9
    if-ne v2, v5, :cond_a

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v6, Lcom/samsung/android/support/senl/nt/app/R$string;->move_one_folder_and_notes:I

    new-array v3, v3, [Ljava/lang/Object;

    iget v7, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->mCheckedNotesCount:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v4

    aput-object v0, v3, v5

    invoke-virtual {v2, v6, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_a
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v6, Lcom/samsung/android/support/senl/nt/app/R$string;->move_folders_and_notes:I

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    iget v8, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->mCheckedFolderCount:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    iget v4, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->mCheckedNotesCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v5

    aput-object v0, v7, v3

    invoke-virtual {v2, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    new-instance v2, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/MoveConfirmDialogFragment;

    sget v3, Lcom/samsung/android/support/senl/nt/app/R$string;->action_move:I

    invoke-direct {v2, v0, v3}, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/MoveConfirmDialogFragment;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v2, v0, p2}, Lcom/samsung/android/support/senl/nt/app/common/dialog/AbsDialogFragment;->setAnchorViewId(Landroidx/appcompat/app/AlertDialog;I)V

    invoke-virtual {v2, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/ConfirmDialogFragment;->setSelectedUuid(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->mConfirmResultListener:Lcom/samsung/android/support/senl/nt/app/main/common/dialog/IConfirmDialogResultListener;

    invoke-virtual {v2, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/ConfirmDialogFragment;->setConfirmDialogResultListener(Lcom/samsung/android/support/senl/nt/app/main/common/dialog/IConfirmDialogResultListener;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {v2, p1, v1}, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/MoveConfirmDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public toggleFolderSyncSwitch(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;)V
    .locals 0

    return-void
.end method

.method public updateContentDescription(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$MyFolders;->UUID:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->settings_my_folders:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->getCount()I

    move-result v1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->getViewType()I

    move-result v2

    const/4 v3, 0x3

    const-string v4, ""

    const-string v5, ", "

    if-ne v2, v3, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v0, v4

    :cond_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$string;->button_string_button:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v6, Lcom/samsung/android/support/senl/nt/app/R$string;->folder_string:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_0

    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_0
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/samsung/android/support/senl/nt/app/R$plurals;->plurals_count_items:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v1, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->getFolderItemLayout()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method
