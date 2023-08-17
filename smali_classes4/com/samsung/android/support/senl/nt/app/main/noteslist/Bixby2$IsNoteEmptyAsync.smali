.class Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2$IsNoteEmptyAsync;
.super Lcom/samsung/android/support/notes/bixby/bixby2/aid/AbsBixby2Async;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IsNoteEmptyAsync"
.end annotation


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/notes/bixby/bixby2/aid/AbsBixby2Async$AsyncParam;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/notes/bixby/bixby2/aid/AbsBixby2Async;-><init>(Lcom/samsung/android/support/notes/bixby/bixby2/aid/AbsBixby2Async$AsyncParam;)V

    return-void
.end method


# virtual methods
.method public backgroundOperation()Lcom/samsung/android/support/notes/bixby/bixby2/aid/ActionResult;
    .locals 5

    const-string v0, "Bixby2"

    const-string v1, "Bixby_isNoteEmptyThread start"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/android/support/notes/bixby/bixby2/aid/ActionResult;

    invoke-direct {v1}, Lcom/samsung/android/support/notes/bixby/bixby2/aid/ActionResult;-><init>()V

    const-string v2, "failure"

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/notes/bixby/bixby2/aid/ActionResult;->setResult(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/notes/bixby/bixby2/aid/ActionResult;->setDescription(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/support/notes/bixby/bixby2/aid/AbsBixby2Async;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createSearchRepository()Lcom/samsung/android/support/senl/nt/data/repository/search/NotesSearchRepository;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/data/repository/search/NotesSearchRepository;->isEmptyForSearchLatestNotes()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isEmpty : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "success"

    invoke-virtual {v1, v3}, Lcom/samsung/android/support/notes/bixby/bixby2/aid/ActionResult;->setResult(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/samsung/android/support/notes/bixby/bixby2/aid/ActionResult;->setDescription(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/notes/bixby/bixby2/aid/ActionResult;->setIsNoteEmpty(Ljava/lang/Boolean;)V

    const-string v2, "Bixby_isNoteEmptyThread end"

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method
