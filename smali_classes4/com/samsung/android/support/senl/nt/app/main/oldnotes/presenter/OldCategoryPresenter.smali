.class public Lcom/samsung/android/support/senl/nt/app/main/oldnotes/presenter/OldCategoryPresenter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/main/oldnotes/adpater/OldCategoryAdapter$Contract;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/app/main/oldnotes/presenter/OldCategoryPresenter$Contract;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "OldCategoryPresenter"


# instance fields
.field private mAdapter:Lcom/samsung/android/support/senl/nt/app/main/oldnotes/adpater/OldCategoryAdapter;

.field private mContract:Lcom/samsung/android/support/senl/nt/app/main/oldnotes/presenter/OldCategoryPresenter$Contract;

.field private mCountEntryLiveData:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesDocumentCountEntry;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mLiveDataObserver:Landroidx/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/Observer<",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesDocumentCountEntry;",
            ">;>;"
        }
    .end annotation
.end field

.field private mNotesConvertedDocumentRepository:Lcom/samsung/android/support/senl/nt/data/repository/converted/NotesConvertedDocumentRepository;

.field private mNotesDocumentRepository:Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;

.field private final mOldCategoryDisplayData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/app/main/oldnotes/model/OldCategoryData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/oldnotes/presenter/OldCategoryPresenter;->mOldCategoryDisplayData:Ljava/util/List;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/oldnotes/presenter/OldCategoryPresenter$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/main/oldnotes/presenter/OldCategoryPresenter$1;-><init>(Lcom/samsung/android/support/senl/nt/app/main/oldnotes/presenter/OldCategoryPresenter;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/oldnotes/presenter/OldCategoryPresenter;->mLiveDataObserver:Landroidx/lifecycle/Observer;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/app/main/oldnotes/presenter/OldCategoryPresenter;)Lcom/samsung/android/support/senl/nt/app/main/oldnotes/adpater/OldCategoryAdapter;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/oldnotes/presenter/OldCategoryPresenter;->mAdapter:Lcom/samsung/android/support/senl/nt/app/main/oldnotes/adpater/OldCategoryAdapter;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/app/main/oldnotes/presenter/OldCategoryPresenter;)Lcom/samsung/android/support/senl/nt/app/main/oldnotes/presenter/OldCategoryPresenter$Contract;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/oldnotes/presenter/OldCategoryPresenter;->mContract:Lcom/samsung/android/support/senl/nt/app/main/oldnotes/presenter/OldCategoryPresenter$Contract;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/app/main/oldnotes/presenter/OldCategoryPresenter;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/oldnotes/presenter/OldCategoryPresenter;->mOldCategoryDisplayData:Ljava/util/List;

    return-object p0
.end method

.method private getNoteDocumentRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/oldnotes/presenter/OldCategoryPresenter;->mNotesDocumentRepository:Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createMainListRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/oldnotes/presenter/OldCategoryPresenter;->mNotesDocumentRepository:Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/oldnotes/presenter/OldCategoryPresenter;->mNotesDocumentRepository:Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;

    return-object v0
.end method

.method private getNotesConvertedDocumentRepository()Lcom/samsung/android/support/senl/nt/data/repository/converted/NotesConvertedDocumentRepository;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/oldnotes/presenter/OldCategoryPresenter;->mNotesConvertedDocumentRepository:Lcom/samsung/android/support/senl/nt/data/repository/converted/NotesConvertedDocumentRepository;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createNotesConvertedDocumentRepository()Lcom/samsung/android/support/senl/nt/data/repository/converted/NotesConvertedDocumentRepository;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/oldnotes/presenter/OldCategoryPresenter;->mNotesConvertedDocumentRepository:Lcom/samsung/android/support/senl/nt/data/repository/converted/NotesConvertedDocumentRepository;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/oldnotes/presenter/OldCategoryPresenter;->mNotesConvertedDocumentRepository:Lcom/samsung/android/support/senl/nt/data/repository/converted/NotesConvertedDocumentRepository;

    return-object v0
.end method

.method private observeData()V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/oldnotes/presenter/OldCategoryPresenter;->getNoteDocumentRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$OldNotes;->UUID:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;->getAllDocumentCountEntry_LiveData(ZLjava/lang/String;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/oldnotes/presenter/OldCategoryPresenter;->mCountEntryLiveData:Landroidx/lifecycle/LiveData;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/oldnotes/presenter/OldCategoryPresenter;->mContract:Lcom/samsung/android/support/senl/nt/app/main/oldnotes/presenter/OldCategoryPresenter$Contract;

    check-cast v1, Landroidx/fragment/app/Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/oldnotes/presenter/OldCategoryPresenter;->mLiveDataObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method


# virtual methods
.method public getOldCategoryData(I)Lcom/samsung/android/support/senl/nt/app/main/oldnotes/model/OldCategoryData;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/oldnotes/presenter/OldCategoryPresenter;->mOldCategoryDisplayData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/app/main/oldnotes/model/OldCategoryData;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getOldCategoryDataCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/oldnotes/presenter/OldCategoryPresenter;->mOldCategoryDisplayData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public init(Lcom/samsung/android/support/senl/nt/app/main/oldnotes/presenter/OldCategoryPresenter$Contract;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/oldnotes/presenter/OldCategoryPresenter;->mContract:Lcom/samsung/android/support/senl/nt/app/main/oldnotes/presenter/OldCategoryPresenter$Contract;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/oldnotes/presenter/OldCategoryPresenter;->mAdapter:Lcom/samsung/android/support/senl/nt/app/main/oldnotes/adpater/OldCategoryAdapter;

    if-nez p1, :cond_0

    new-instance p1, Lcom/samsung/android/support/senl/nt/app/main/oldnotes/adpater/OldCategoryAdapter;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/nt/app/main/oldnotes/adpater/OldCategoryAdapter;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/oldnotes/presenter/OldCategoryPresenter;->mAdapter:Lcom/samsung/android/support/senl/nt/app/main/oldnotes/adpater/OldCategoryAdapter;

    invoke-virtual {p1, p0}, Lcom/samsung/android/support/senl/nt/app/main/oldnotes/adpater/OldCategoryAdapter;->setContract(Lcom/samsung/android/support/senl/nt/app/main/oldnotes/adpater/OldCategoryAdapter$Contract;)V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/oldnotes/presenter/OldCategoryPresenter;->mContract:Lcom/samsung/android/support/senl/nt/app/main/oldnotes/presenter/OldCategoryPresenter$Contract;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/oldnotes/presenter/OldCategoryPresenter;->mAdapter:Lcom/samsung/android/support/senl/nt/app/main/oldnotes/adpater/OldCategoryAdapter;

    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/oldnotes/presenter/OldCategoryPresenter$Contract;->setAdapter(Lcom/samsung/android/support/senl/nt/app/main/oldnotes/adpater/OldCategoryAdapter;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/oldnotes/presenter/OldCategoryPresenter;->observeData()V

    return-void
.end method

.method public isOldConvertedDataExist()Z
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/oldnotes/presenter/OldCategoryPresenter;->getNotesConvertedDocumentRepository()Lcom/samsung/android/support/senl/nt/data/repository/converted/NotesConvertedDocumentRepository;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/data/repository/converted/NotesConvertedDocumentRepository;->getAll_ConvertedCount(I)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public onItemSelected(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/oldnotes/presenter/OldCategoryPresenter;->mContract:Lcom/samsung/android/support/senl/nt/app/main/oldnotes/presenter/OldCategoryPresenter$Contract;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/oldnotes/presenter/OldCategoryPresenter$Contract;->onItemSelected(Ljava/lang/String;)V

    return-void
.end method

.method public release()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/oldnotes/presenter/OldCategoryPresenter;->mCountEntryLiveData:Landroidx/lifecycle/LiveData;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/oldnotes/presenter/OldCategoryPresenter;->mLiveDataObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/oldnotes/presenter/OldCategoryPresenter;->mCountEntryLiveData:Landroidx/lifecycle/LiveData;

    return-void
.end method

.method public startConvertAllNotes()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/oldnotes/presenter/OldCategoryPresenter;->mContract:Lcom/samsung/android/support/senl/nt/app/main/oldnotes/presenter/OldCategoryPresenter$Contract;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/main/oldnotes/presenter/OldCategoryPresenter$Contract;->startConvertAllNotes()V

    return-void
.end method
