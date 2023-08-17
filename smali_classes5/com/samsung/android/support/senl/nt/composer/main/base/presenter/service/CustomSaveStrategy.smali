.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CustomSaveStrategy;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCacheLoadFailed(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;)V
    .locals 0

    return-void
.end method

.method public onClose(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;",
            "Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument<",
            "Lcom/samsung/android/support/senl/nt/model/documents/spen/SpenWordDocument;",
            ">;)V"
        }
    .end annotation

    const/16 v0, 0x1000

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->checkSaveStrategy(I)Z

    move-result v0

    const/16 v1, 0x400

    if-nez v0, :cond_0

    invoke-virtual {p1, v1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->removeSaveStrategy(I)Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    :cond_0
    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->isSaveCache()Z

    move-result v0

    const/16 v2, 0x800

    if-nez v0, :cond_2

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->isContentChanged()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->isChangedOnlyThumbnail()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v2}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->removeSaveStrategy(I)Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    goto :goto_2

    :cond_2
    :goto_0
    invoke-virtual {p1, v1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->checkSaveStrategy(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1, v2}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->removeSaveStrategy(I)Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    goto :goto_1

    :cond_3
    invoke-virtual {p1, v2}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->addSaveStrategy(I)Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    :goto_1
    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->isEntityChanged()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->isChangedOnlyThumbnail()Z

    move-result p2

    if-eqz p2, :cond_4

    const/16 p2, 0x2000

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->addSaveStrategy(I)Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    :cond_4
    :goto_2
    return-void
.end method

.method public onOpen(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;)V
    .locals 0

    return-void
.end method

.method public onSave(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;)V
    .locals 0

    return-void
.end method

.method public onSaveCache(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;)V
    .locals 0

    return-void
.end method
