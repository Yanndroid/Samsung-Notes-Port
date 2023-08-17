.class public Lcom/samsung/android/app/notes/sync/db/p;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;

.field public final b:Lr0/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createSyncNoteDataRepository()Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/db/p;->a:Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;

    new-instance v0, Lr0/b;

    invoke-direct {v0, p1}, Lr0/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/db/p;->b:Lr0/b;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/db/p;->a:Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->insertLastMappedAtList(Ljava/util/HashMap;)V

    return-void
.end method

.method public b(Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/db/p;->b:Lr0/b;

    invoke-virtual {v0, p1, p2}, Lr0/b;->c(Ljava/util/List;I)V

    return-void
.end method

.method public c(Ljava/lang/String;J)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/db/p;->a:Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->setLastMappedAt(Ljava/lang/String;J)Z

    move-result p1

    return p1
.end method

.method public d(Ljava/util/HashMap;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/db/p;->a:Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->setLastMappedAtList(Ljava/util/HashMap;)Z

    move-result p1

    return p1
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/db/p;->a:Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->updateNoteCategory(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
