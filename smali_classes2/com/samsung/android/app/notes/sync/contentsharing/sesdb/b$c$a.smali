.class public Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$c;
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
.field public final synthetic a:Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$c;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$c;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$c$a;->a:Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;",
            ">;)V"
        }
    .end annotation

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[CS9] Coedit Doc LiveData onChanged count : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$c$a;->a:Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$c;

    iget-object v0, v0, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$c;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getActiveCount()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SesCoeditStandaloneNoteLiveData"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$c$a;->a:Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$c;

    iget-object p1, p1, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$c;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p1}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$c$a;->a:Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$c;

    iget-object p1, p1, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$c;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$c$a$a;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$c$a$a;-><init>(Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$c$a;)V

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$c$a;->a(Ljava/util/List;)V

    return-void
.end method
