.class public Lj1/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Li1/h;

.field public b:Ljava/lang/String;

.field public c:Lj1/d;


# direct methods
.method public constructor <init>(Li1/h;)V
    .locals 0
    .param p1    # Li1/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj1/b;->a:Li1/h;

    new-instance p1, Lj1/d;

    invoke-direct {p1}, Lj1/d;-><init>()V

    iput-object p1, p0, Lj1/b;->c:Lj1/d;

    return-void
.end method

.method public static bridge synthetic a(Lj1/b;)Li1/h;
    .locals 0

    iget-object p0, p0, Lj1/b;->a:Li1/h;

    return-object p0
.end method

.method public static bridge synthetic b(Lj1/b;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lj1/b;->b:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic c(Lj1/b;Ljava/util/concurrent/CompletableFuture;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lj1/b;->e(Ljava/util/concurrent/CompletableFuture;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 8
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x18
    .end annotation

    const-string v0, "CreateNote"

    const-string v1, "perform. "

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lj1/b;->c:Lj1/d;

    iget-object v2, p0, Lj1/b;->a:Li1/h;

    invoke-virtual {v1, v2}, Lj1/d;->d(Li1/h;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Update Note. uuid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lj1/b;->a:Li1/h;

    iget-object v2, v2, Li1/h;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", connectedNotesId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lj1/b;->a:Li1/h;

    iget-object v2, v2, Li1/h;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lj1/e;

    iget-object v1, p0, Lj1/b;->a:Li1/h;

    invoke-direct {v0, v1}, Lj1/e;-><init>(Li1/h;)V

    invoke-virtual {v0}, Lj1/e;->e()V

    goto/16 :goto_1

    :cond_0
    iget-object v1, p0, Lj1/b;->a:Li1/h;

    const/4 v2, 0x0

    iput-object v2, v1, Li1/h;->b:Ljava/lang/String;

    iput-object v2, p0, Lj1/b;->b:Ljava/lang/String;

    new-instance v1, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v1}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    invoke-static {}, Lk1/a;->f()Lk1/a;

    move-result-object v2

    iget-object v3, p0, Lj1/b;->a:Li1/h;

    new-instance v4, Lj1/b$a;

    invoke-direct {v4, p0, v1}, Lj1/b$a;-><init>(Lj1/b;Ljava/util/concurrent/CompletableFuture;)V

    invoke-virtual {v2, v3, v4}, Lk1/a;->b(Li1/h;Ll1/a;)V

    const-string/jumbo v2, "wait create note"

    invoke-virtual {p0, v1, v2}, Lj1/b;->f(Ljava/util/concurrent/CompletableFuture;Ljava/lang/String;)V

    iget-object v1, p0, Lj1/b;->a:Li1/h;

    iget-object v1, v1, Li1/h;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    iget-object v2, p0, Lj1/b;->a:Li1/h;

    iget-object v2, v2, Li1/h;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "request add attachment. path : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->logPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v5}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    invoke-static {}, Lk1/a;->f()Lk1/a;

    move-result-object v6

    iget-object v7, p0, Lj1/b;->a:Li1/h;

    iget-object v7, v7, Li1/h;->b:Ljava/lang/String;

    add-int/2addr v1, v4

    new-instance v4, Lj1/b$b;

    invoke-direct {v4, p0, v3, v5}, Lj1/b$b;-><init>(Lj1/b;Ljava/lang/String;Ljava/util/concurrent/CompletableFuture;)V

    invoke-virtual {v6, v7, v3, v1, v4}, Lk1/a;->a(Ljava/lang/String;Ljava/lang/String;ILl1/a;)V

    const-string v3, "Wait for add attachment."

    invoke-virtual {p0, v5, v3}, Lj1/b;->f(Ljava/util/concurrent/CompletableFuture;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lj1/b;->b:Ljava/lang/String;

    invoke-static {v0}, Ln1/b;->b(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->x()Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;

    move-result-object v2

    iget-object v3, p0, Lj1/b;->a:Li1/h;

    iget-object v5, v3, Li1/h;->c:Ljava/lang/String;

    iget-object v3, v3, Li1/h;->b:Ljava/lang/String;

    invoke-virtual {v2, v5, v3, v4}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->V(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v0, v1}, Li1/a;->r(J)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final e(Ljava/util/concurrent/CompletableFuture;Ljava/lang/String;)V
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x18
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", future complete"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "CreateNote"

    invoke-static {v0, p2}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    return-void
.end method

.method public final f(Ljava/util/concurrent/CompletableFuture;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", future get"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "CreateNote"

    invoke-static {v0, p2}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/32 v0, 0x927c0

    invoke-virtual {p1, v0, v1, p2}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    return-void
.end method
