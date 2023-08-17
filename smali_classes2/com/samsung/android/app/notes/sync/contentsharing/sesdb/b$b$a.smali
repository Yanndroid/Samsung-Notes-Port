.class public Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "Ljava/util/List<",
        "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$b;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$b;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$b$a;->a:Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CS9] Coedit Doc LiveData onChanged doc count : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SesCoeditSpaceAndStandaloneNoteCountLiveData"

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$b$a;->a:Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$b;

    invoke-static {v1}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$b;->a(Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$b;)I

    move-result v1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$b$a;->a:Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$b;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$b;->c(Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$b;I)V

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$b$a;->a:Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$b;

    iget-object p1, p1, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$b;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p1}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ge p1, v0, :cond_2

    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$b$a;->a:Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$b;

    iget-object p1, p1, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$b;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$b$a$a;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$b$a$a;-><init>(Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$b$a;)V

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$b$a;->a(Ljava/util/List;)V

    return-void
.end method
