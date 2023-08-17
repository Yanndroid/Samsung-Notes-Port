.class public final Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public createCategoryTreeClosureRepository()Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeClosureRepository;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeClosureRepository;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeClosureRepository;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public createDocumentAutoTagRepository()Lcom/samsung/android/support/senl/nt/data/repository/tag/NotesAutoTagRepository;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/repository/tag/NotesAutoTagRepository;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/data/repository/tag/NotesAutoTagRepository;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public createDocumentCategoryTreeRepository()Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeRepository;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeRepository;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeRepository;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public createDocumentContentRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/NotesContentRepository;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesContentRepository;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesContentRepository;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public createDocumentDataRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentRepository;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentRepository;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentRepository;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public createDocumentRetryRepository()Lcom/samsung/android/support/senl/nt/data/repository/recognition/NotesRetryRepository;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/repository/recognition/NotesRetryRepository;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/data/repository/recognition/NotesRetryRepository;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public createDocumentStrokeRepository()Lcom/samsung/android/support/senl/nt/data/repository/recognition/NotesStrokeRepository;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/repository/recognition/NotesStrokeRepository;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/data/repository/recognition/NotesStrokeRepository;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public createDocumentTagRepository()Lcom/samsung/android/support/senl/nt/data/repository/tag/NotesTagRepository;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/repository/tag/NotesTagRepository;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/data/repository/tag/NotesTagRepository;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public createMainListRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public createMappedDocumentRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/NotesMappedDocumentRepository;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesMappedDocumentRepository;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesMappedDocumentRepository;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public createNotesConvertedDocumentRepository()Lcom/samsung/android/support/senl/nt/data/repository/converted/NotesConvertedDocumentRepository;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/repository/converted/NotesConvertedDocumentRepository;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/data/repository/converted/NotesConvertedDocumentRepository;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public createNotesDocumentPageRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentPageRepository;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentPageRepository;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentPageRepository;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public createNotesLockDocumentRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/NotesLockDocumentRepository;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesLockDocumentRepository;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesLockDocumentRepository;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public createNotesOldDocumentRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/NotesOldDocumentRepository;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesOldDocumentRepository;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesOldDocumentRepository;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public createNotesRecycleBinRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/NotesRecycleBinRepository;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesRecycleBinRepository;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesRecycleBinRepository;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public createNotesRestoreRepository()Lcom/samsung/android/support/senl/nt/data/repository/restore/NotesRestoreRepository;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/repository/restore/NotesRestoreRepository;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/data/repository/restore/NotesRestoreRepository;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public createPageSearchInfoRepository()Lcom/samsung/android/support/senl/nt/data/repository/search/NotesPageSearchInfoRepository;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/repository/search/NotesPageSearchInfoRepository;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/data/repository/search/NotesPageSearchInfoRepository;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public createSearchRepository()Lcom/samsung/android/support/senl/nt/data/repository/search/NotesSearchRepository;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/repository/search/NotesSearchRepository;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/data/repository/search/NotesSearchRepository;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public createSyncNoteDataRepository()Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public createTemplateRepository()Lcom/samsung/android/support/senl/nt/data/repository/template/NotesTemplateRepository;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/repository/template/NotesTemplateRepository;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/data/repository/template/NotesTemplateRepository;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
