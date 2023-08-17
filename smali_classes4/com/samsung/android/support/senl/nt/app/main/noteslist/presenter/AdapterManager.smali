.class public Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/main/common/adapter/AdapterContract;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager$IPresenter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AdapterManager"


# instance fields
.field private final mCoeditLiveDataObserver:Landroidx/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/Observer<",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/CoeditMainListEntry;",
            ">;>;"
        }
    .end annotation
.end field

.field private mCoeditMemberLiveData:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/CoeditMemberListEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mCoeditMemberLiveDataObserver:Landroidx/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/Observer<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/CoeditMemberListEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mCoeditNotesLiveData:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/CoeditMainListEntry;",
            ">;>;"
        }
    .end annotation
.end field

.field private mDisplayNotesLiveData:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mDisplayNotesLiveDataObserver:Landroidx/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/Observer<",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mDocumentMap:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;

.field private final mIPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager$IPresenter;

.field private mInflatedViewProgress:I

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mNotesAdapter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/IAdapter;

.field private mSortBar:Landroid/view/View;

.field private final mSpaceLiveDataObserver:Landroidx/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/Observer<",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mStateInfo:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;

.field private final mViewParams:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager$IPresenter;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager$1;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->mDisplayNotesLiveDataObserver:Landroidx/lifecycle/Observer;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager$2;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->mCoeditLiveDataObserver:Landroidx/lifecycle/Observer;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager$3;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->mCoeditMemberLiveDataObserver:Landroidx/lifecycle/Observer;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager$4;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->mSpaceLiveDataObserver:Landroidx/lifecycle/Observer;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->mItems:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->mSortBar:Landroid/view/View;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->mInflatedViewProgress:I

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->mViewParams:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->mDocumentMap:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->mStateInfo:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/NotesAdapter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->getNotesRecyclerView()Lcom/samsung/android/support/senl/nt/app/main/common/view/NotesPenRecyclerView;

    move-result-object v1

    invoke-direct {v0, v1, p0, p2, p3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/NotesAdapter;-><init>(Lcom/samsung/android/support/senl/nt/app/main/common/view/NotesPenRecyclerView;Lcom/samsung/android/support/senl/nt/app/main/common/adapter/AdapterContract;Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->mNotesAdapter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/IAdapter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->getNotesRecyclerView()Lcom/samsung/android/support/senl/nt/app/main/common/view/NotesPenRecyclerView;

    move-result-object p1

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iput-object p4, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->mIPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager$IPresenter;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->mDocumentMap:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager$IPresenter;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->mIPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager$IPresenter;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->mStateInfo:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;

    return-object p0
.end method

.method private changeLiveDataSet()V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->getModeIndex()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeLiveDataSet# modeIndex : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AdapterManager"

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_1

    :pswitch_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->mDisplayNotesLiveData:Landroidx/lifecycle/LiveData;

    return-void

    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->mStateInfo:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->getCategoryUuid()Ljava/lang/String;

    move-result-object v0

    const-string v1, "old_converted_notes"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->mDocumentMap:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->getConvertedNoteRepository()Lcom/samsung/android/support/senl/nt/data/repository/converted/NotesConvertedDocumentRepository;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/common/util/NotesUtils;->getSortParam()Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/data/repository/converted/NotesConvertedDocumentRepository;->getAll_Converted_LiveData(ILcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->mDocumentMap:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->getOldNoteRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/NotesOldDocumentRepository;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/common/util/NotesUtils;->getSortParam()Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesOldDocumentRepository;->getAll_OldNotes_LiveData(Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->mDisplayNotesLiveData:Landroidx/lifecycle/LiveData;

    return-void

    :pswitch_3
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->mViewParams:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->mStateInfo:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->getGroupId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesCoeditGroupReadResolver;->getMemberListData(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesCoeditGroupReadResolver$c;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->mCoeditMemberLiveData:Landroidx/lifecycle/LiveData;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->mViewParams:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->mStateInfo:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->getSpaceId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->mStateInfo:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->getGroupId()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/common/util/NotesUtils;->getSpaceSortParam()Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->mCoeditNotesLiveData:Landroidx/lifecycle/LiveData;

    return-void

    :pswitch_4
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->mViewParams:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/common/util/NotesUtils;->getSortParam()Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b;->e(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->mCoeditNotesLiveData:Landroidx/lifecycle/LiveData;

    return-void

    :pswitch_5
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->mDocumentMap:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->getMainListRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/common/util/NotesUtils;->getSpaceSortParam()Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->mStateInfo:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->getSpaceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;->getAllContentShare_LiveData(Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->mDisplayNotesLiveData:Landroidx/lifecycle/LiveData;

    return-void

    :pswitch_6
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->mStateInfo:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->getCaller()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->mStateInfo:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->getCaller()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->mDocumentMap:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->getMainListRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/common/util/NotesUtils;->getSortParam()Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;->getAllForImportContentShare_LiveData(Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->mDisplayNotesLiveData:Landroidx/lifecycle/LiveData;

    return-void

    :pswitch_7
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->mDocumentMap:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->getNoteRecycleBinRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/NotesRecycleBinRepository;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/common/util/NotesUtils;->getDeleteSortParam()Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesRecycleBinRepository;->getAllRecycleBinDatas_LiveData(Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->mDisplayNotesLiveData:Landroidx/lifecycle/LiveData;

    return-void

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->mDocumentMap:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->getMainListRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/common/util/NotesUtils;->getSortParam()Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;->getAll_LiveData(Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->mDisplayNotesLiveData:Landroidx/lifecycle/LiveData;

    return-void

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static bridge synthetic d(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->mViewParams:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;Ljava/util/List;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->setDataWithoutFolder(Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic f(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;Ljava/util/List;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->setOldModeData(Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method private getCheckBox(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->mViewParams:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->getModeIndex()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/common/util/FeatureUtils;->isEditMode(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;->isCheckboxInflated()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object p1

    return-object p1
.end method

.method private getCountTextView(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;)Landroid/widget/TextView;
    .locals 2

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;->getHolderType()I

    move-result v0

    const/16 v1, 0x10

    if-gt v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;->getRootCardView()Landroid/view/View;

    move-result-object p1

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->count:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private observeCoeditLiveData()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->mCoeditNotesLiveData:Landroidx/lifecycle/LiveData;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->mViewParams:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->getAbsFragment()Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->mCoeditLiveDataObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setObserver# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->mCoeditNotesLiveData:Landroidx/lifecycle/LiveData;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " IllegalStateException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdapterManager"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainCoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private observeLiveData(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;",
            ">;>;",
            "Landroidx/lifecycle/Observer<",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "AdapterManager"

    if-nez p1, :cond_0

    const-string p1, "observeLiveData# live data is null."

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->mDocumentMap:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->clearCommonDisplayList()V

    const-string p1, "LiveData is null. Clear list."

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->notifyDataSetChanged(Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->mViewParams:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->getAbsFragment()Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    invoke-virtual {p1, v1, p2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "observeLiveData# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " IllegalStateException: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private removeObserverFromLiveData(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;",
            ">;>;",
            "Landroidx/lifecycle/Observer<",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;",
            ">;>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const-string p1, "AdapterManager"

    const-string p2, "removeObserverFromLiveData# live data is null."

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p1, p2}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private setDataWithoutFolder(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->mDocumentMap:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->nonNullDocumentCountMap()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->mDocumentMap:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->mStateInfo:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->getFolderUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->getDocumentCount(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->mViewParams:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->getNotesView()Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewContract$IView;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewContract$IView;->releaseEmptyFolder()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->mDocumentMap:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->initNoteMapWithoutFolder(Ljava/util/List;)Z

    move-result p1

    return p1
.end method

.method private setObserver()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->mIPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager$IPresenter;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager$IPresenter;->setIsScrolling(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->getModeIndex()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setObserver# modeIndex : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AdapterManager"

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->mDisplayNotesLiveData:Landroidx/lifecycle/LiveData;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->mDisplayNotesLiveDataObserver:Landroidx/lifecycle/Observer;

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->mCoeditMemberLiveData:Landroidx/lifecycle/LiveData;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->mViewParams:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->getAbsFragment()Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->mCoeditMemberLiveDataObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setObserver# "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->mCoeditMemberLiveData:Landroidx/lifecycle/LiveData;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " IllegalStateException: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainCoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    :pswitch_1
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->observeCoeditLiveData()V

    goto :goto_2

    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->mDisplayNotesLiveData:Landroidx/lifecycle/LiveData;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->mSpaceLiveDataObserver:Landroidx/lifecycle/Observer;

    :goto_1
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->observeLiveData(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private setOldModeData(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->mStateInfo:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->getCategoryUuid()Ljava/lang/String;

    move-result-object v0

    const-string v1, "old_converted_notes"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->mDocumentMap:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->initConvertedNoteMap(Ljava/util/List;)Z

    move-result p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->mDocumentMap:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->initOldNoteMap(Ljava/util/List;)Z

    move-result p1

    :goto_0
    return p1
.end method


# virtual methods
.method public declared-synchronized addInflatedView(Landroid/view/View;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->mInflatedViewProgress:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->mItems:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->mItems:Ljava/util/ArrayList;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addSortbarInflatedView(Landroid/view/View;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->mInflatedViewProgress:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->mSortBar:Landroid/view/View;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getInflatedView(I)Landroid/view/View;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->mInflatedViewProgress:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->mInflatedViewProgress:I

    :cond_0
    const/16 v0, 0x80

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->mSortBar:Landroid/view/View;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_1
    const/4 p1, 0x0

    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->mItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->mItems:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getModeIndex()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->mViewParams:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->getModeIndex()I

    move-result v0

    return v0
.end method

.method public getSelectedTags()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->mStateInfo:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->getSelectedTags()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public initDataObserver()V
    .locals 2

    const-string v0, "AdapterManager"

    const-string v1, "initDataObserver"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->changeLiveDataSet()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->setObserver()V

    return-void
.end method

.method public isRunningAnimator()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->mViewParams:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->getAbsFragment()Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;->isRunningAnimator()Z

    move-result v0

    return v0
.end method

.method public isScrolling()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->mIPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager$IPresenter;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager$IPresenter;->isScrolling()Z

    move-result v0

    return v0
.end method

.method public isUnlockConverting(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->mIPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager$IPresenter;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager$IPresenter;->isUnlockConverting(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public loadOrderingProcessorEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->mNotesAdapter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/IAdapter;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/IAdapter;->loadOrderingProcessorEnabled()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized needInflatedView()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->mInflatedViewProgress:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

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

.method public notifyDataSetChanged(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyDataSetChanged# caller : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AdapterManager"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->mNotesAdapter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/IAdapter;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/IAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public notifyItemChanged(ILjava/lang/Object;)V
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->mNotesAdapter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/IAdapter;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/IAdapter;->notifyItemChanged(ILjava/lang/Object;)V

    return-void
.end method

.method public notifyItemRangeChanged(II)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyItemRangeChanged - positionStart: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " itemCount : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdapterManager"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->mNotesAdapter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/IAdapter;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/IAdapter;->notifyItemRangeChanged(II)V

    return-void
.end method

.method public onBindViewHolder(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->mViewParams:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->getNotesView()Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewContract$IView;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewContract$IView;->getMode()Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewContract$IMode;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->getCheckBox(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->getCountTextView(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;)Landroid/widget/TextView;

    move-result-object v2

    invoke-interface {v0, p1, v1, v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewContract$IMode;->onBindViewHolder(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;Landroid/widget/CheckBox;Landroid/widget/TextView;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->mIPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager$IPresenter;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager$IPresenter;->setDragListener(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;)V

    return-void
.end method

.method public onCoeditInvitationSelected(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->mViewParams:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->getNotesView()Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewContract$IView;

    move-result-object p3

    invoke-interface {p3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewContract$IView;->getSpaceImpl()Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/CoeditSpaceImpl;

    move-result-object p3

    invoke-interface {p3, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/CoeditSpaceImpl;->onInvitationAccepted(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->mViewParams:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->getNotesView()Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewContract$IView;

    move-result-object p2

    invoke-interface {p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewContract$IView;->getSpaceImpl()Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/CoeditSpaceImpl;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/CoeditSpaceImpl;->onInvitationDeclined(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->removeCoeditInvitation(Ljava/lang/String;)V

    return-void
.end method

.method public onContextClick(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->mViewParams:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->getNotesView()Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewContract$IView;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewContract$IView;->onContextClick(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;)Z

    move-result p1

    return p1
.end method

.method public onHashTagSelected(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onHashTagSelected# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdapterManager"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->mStateInfo:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->setSelectedTags(Ljava/util/Set;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->mIPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager$IPresenter;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager$IPresenter;->searchTagNotesData(Ljava/util/Set;)V

    return-void
.end method

.method public onItemLongPressed(Ljava/lang/String;)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onItemLongPressed# uuid : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdapterManager"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->mIPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager$IPresenter;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager$IPresenter;->onItemLongPressed(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public onListScrolled(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->mNotesAdapter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/IAdapter;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/IAdapter;->onListScrolled(I)V

    return-void
.end method

.method public onNoteSelected(Ljava/lang/String;I)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->mDocumentMap:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->getNoteData(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;

    move-result-object v0

    const-string v1, "onNoteSelected# SDocUuid : "

    const-string v2, "AdapterManager"

    if-nez v0, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " mainListEntry is null"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", SDocFilePath : "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getFilePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->mViewParams:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->getNotesView()Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewContract$IView;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewContract$IView;->getMode()Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewContract$IMode;

    move-result-object p1

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam$Builder;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam$Builder;-><init>()V

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam$Builder;->setMainListEntry(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;)Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->mViewParams:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lf/a;->m(Landroid/content/Context;)Lf/a;

    move-result-object v1

    invoke-virtual {v1}, Lf/a;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam$Builder;->setGuid(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->mViewParams:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->getModeIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam$Builder;->setModeIndex(I)Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam$Builder;->setToolType(I)Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam$Builder;->build()Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewContract$IMode;->onNoteSelected(Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;)V

    return-void
.end method

.method public onScrollStateChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->mNotesAdapter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/IAdapter;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/IAdapter;->onScrollStateChanged(I)V

    return-void
.end method

.method public onSpaceLongPressed(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->mViewParams:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->getNotesView()Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewContract$IView;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewContract$IView;->getSpaceImpl()Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/CoeditSpaceImpl;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/CoeditSpaceImpl;->onSpaceLongPressed(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public onSpaceSelected(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->mViewParams:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->getNotesView()Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewContract$IView;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewContract$IView;->getSpaceImpl()Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/CoeditSpaceImpl;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/CoeditSpaceImpl;->onSpaceSelected(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSubFolderSelected(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->mViewParams:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->getNotesView()Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewContract$IView;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewContract$IView;->getMode()Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewContract$IMode;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewContract$IMode;->onSubFolderSelected(Ljava/lang/String;)V

    return-void
.end method

.method public onSubHeaderSelected(JZ)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->mViewParams:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->getNotesView()Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewContract$IView;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewContract$IView;->getMode()Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewContract$IMode;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewContract$IMode;->onSubHeaderSelected(JZ)V

    return-void
.end method

.method public onTipCardBindViewHolder(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->mIPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager$IPresenter;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager$IPresenter;->onTipCardBindViewHolder(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;)V

    return-void
.end method

.method public onViewAttachedToWindow(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->mViewParams:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->getNotesView()Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewContract$IView;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewContract$IView;->getMode()Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewContract$IMode;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->getCheckBox(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->getCountTextView(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;)Landroid/widget/TextView;

    move-result-object v2

    invoke-interface {v0, p1, v1, v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewContract$IMode;->onViewAttachedToWindow(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;Landroid/widget/CheckBox;Landroid/widget/TextView;)V

    :cond_0
    return-void
.end method

.method public reattachDataObserver()V
    .locals 2

    const-string v0, "AdapterManager"

    const-string v1, "reattachDataObserver"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->removeObserver()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->setObserver()V

    return-void
.end method

.method public declared-synchronized releaseInflatedView()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x2

    :try_start_0
    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->mInflatedViewProgress:I

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->mItems:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->mItems:Ljava/util/ArrayList;

    :cond_0
    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->mSortBar:Landroid/view/View;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public reloadDataObserver()V
    .locals 2

    const-string v0, "AdapterManager"

    const-string v1, "reloadDataObserver"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->removeObserver()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->changeLiveDataSet()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->setObserver()V

    return-void
.end method

.method public removeCoeditInvitation(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->mDocumentMap:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->removeCoeditInvitationMap(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->mDocumentMap:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->initCommonDisplayList()Z

    const-string p1, "Coedit Invitation Changed"

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->notifyDataSetChanged(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->mViewParams:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->getNotesView()Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewContract$IView;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->mDocumentMap:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->getCommonDisplayListSize([Ljava/lang/String;)I

    move-result v0

    const-string v1, "removeCoeditInvitation"

    invoke-interface {p1, v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewContract$IView;->onDataChanged(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public removeObserver()V
    .locals 2

    const-string v0, "AdapterManager"

    const-string v1, "removeObserver"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->mDisplayNotesLiveData:Landroidx/lifecycle/LiveData;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->mSpaceLiveDataObserver:Landroidx/lifecycle/Observer;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->removeObserverFromLiveData(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->mDisplayNotesLiveData:Landroidx/lifecycle/LiveData;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->mDisplayNotesLiveDataObserver:Landroidx/lifecycle/Observer;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->removeObserverFromLiveData(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->mCoeditNotesLiveData:Landroidx/lifecycle/LiveData;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->mCoeditLiveDataObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->mCoeditMemberLiveData:Landroidx/lifecycle/LiveData;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->mCoeditMemberLiveDataObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    :cond_1
    return-void
.end method

.method public setDragListener(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->mIPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager$IPresenter;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager$IPresenter;->setDragListener(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;)V

    return-void
.end method

.method public setHighlightText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->mNotesAdapter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/IAdapter;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/IAdapter;->setHighlightText(Ljava/lang/String;)V

    return-void
.end method

.method public showSortTypeDialog()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->mIPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager$IPresenter;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager$IPresenter;->showSortTypeDialog()V

    return-void
.end method

.method public skippedDecorateThumbnail(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->mNotesAdapter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/IAdapter;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/IAdapter;->skippedDecorateThumbnail(Ljava/lang/String;)V

    return-void
.end method

.method public updateDataObserverToCurrentMode()V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->getModeIndex()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDataObserverToCurrentMode# currentMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AdapterManager"

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->mViewParams:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->getAbsFragment()Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/common/util/FeatureUtils;->isSearchMode(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->mIPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager$IPresenter;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->mViewParams:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->getNotesView()Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewContract$IView;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewContract$IView;->getSearchImpl()Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/SearchImpl;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/SearchImpl;->getSearchSavedText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager$IPresenter;->searchNotesData(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/common/util/FeatureUtils;->isHashTagMode(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->mIPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager$IPresenter;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->mStateInfo:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->getSelectedTags()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager$IPresenter;->searchTagNotesData(Ljava/util/Set;)V

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->reloadDataObserver()V

    return-void
.end method
