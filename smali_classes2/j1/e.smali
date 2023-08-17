.class public Lj1/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Li1/h;

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Li1/h;)V
    .locals 0
    .param p1    # Li1/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj1/e;->a:Li1/h;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lj1/e;->b:Ljava/util/List;

    return-void
.end method

.method public static bridge synthetic a(Lj1/e;)Li1/h;
    .locals 0

    iget-object p0, p0, Lj1/e;->a:Li1/h;

    return-object p0
.end method

.method public static bridge synthetic b(Lj1/e;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lj1/e;->b:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic c(Lj1/e;Ljava/util/concurrent/CompletableFuture;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lj1/e;->f(Ljava/util/concurrent/CompletableFuture;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final d()V
    .locals 3

    invoke-static {}, Lk1/a;->f()Lk1/a;

    move-result-object v0

    iget-object v1, p0, Lj1/e;->a:Li1/h;

    new-instance v2, Lj1/e$g;

    invoke-direct {v2, p0}, Lj1/e$g;-><init>(Lj1/e;)V

    invoke-virtual {v0, v1, v2}, Lk1/a;->b(Li1/h;Ll1/a;)V

    return-void
.end method

.method public e()V
    .locals 9
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x18
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "perform. connectedNotesId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lj1/e;->a:Li1/h;

    iget-object v1, v1, Li1/h;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UpdateNote"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v2, v0, [Z

    new-instance v3, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v3}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    invoke-static {}, Lk1/a;->f()Lk1/a;

    move-result-object v4

    iget-object v5, p0, Lj1/e;->a:Li1/h;

    iget-object v5, v5, Li1/h;->b:Ljava/lang/String;

    new-instance v6, Lj1/e$a;

    invoke-direct {v6, p0, v2, v3}, Lj1/e$a;-><init>(Lj1/e;[ZLjava/util/concurrent/CompletableFuture;)V

    invoke-virtual {v4, v5, v6}, Lk1/a;->h(Ljava/lang/String;Ll1/a;)V

    const-string v4, "Wait for check deleted note"

    invoke-virtual {p0, v3, v4}, Lj1/e;->g(Ljava/util/concurrent/CompletableFuture;Ljava/lang/String;)V

    const/4 v3, 0x0

    aget-boolean v2, v2, v3

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->x()Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;

    move-result-object v0

    iget-object v2, p0, Lj1/e;->a:Li1/h;

    iget-object v2, v2, Li1/h;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->H(Ljava/lang/String;)V

    const-string v0, "result bIsDismissed true create note"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lj1/e;->d()V

    return-void

    :cond_0
    iget-object v2, p0, Lj1/e;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    new-instance v2, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v2}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    invoke-static {}, Lk1/a;->f()Lk1/a;

    move-result-object v4

    iget-object v5, p0, Lj1/e;->a:Li1/h;

    iget-object v5, v5, Li1/h;->b:Ljava/lang/String;

    new-instance v6, Lj1/e$b;

    invoke-direct {v6, p0, v2}, Lj1/e$b;-><init>(Lj1/e;Ljava/util/concurrent/CompletableFuture;)V

    invoke-virtual {v4, v5, v6}, Lk1/a;->e(Ljava/lang/String;Ll1/a;)V

    const-string v4, "Wait for get prev attachments."

    invoke-virtual {p0, v2, v4}, Lj1/e;->g(Ljava/util/concurrent/CompletableFuture;Ljava/lang/String;)V

    iget-object v2, p0, Lj1/e;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v5, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v5}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    invoke-static {}, Lk1/a;->f()Lk1/a;

    move-result-object v6

    iget-object v7, p0, Lj1/e;->a:Li1/h;

    iget-object v7, v7, Li1/h;->b:Ljava/lang/String;

    new-instance v8, Lj1/e$c;

    invoke-direct {v8, p0, v5}, Lj1/e$c;-><init>(Lj1/e;Ljava/util/concurrent/CompletableFuture;)V

    invoke-virtual {v6, v7, v4, v8}, Lk1/a;->c(Ljava/lang/String;Ljava/lang/String;Ll1/a;)V

    const-string v4, "Wait for delete prev attachment."

    invoke-virtual {p0, v5, v4}, Lj1/e;->g(Ljava/util/concurrent/CompletableFuture;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lj1/e;->a:Li1/h;

    iget-object v2, v2, Li1/h;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v5, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v5}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    invoke-static {}, Lk1/a;->f()Lk1/a;

    move-result-object v6

    iget-object v7, p0, Lj1/e;->a:Li1/h;

    iget-object v7, v7, Li1/h;->b:Ljava/lang/String;

    add-int/2addr v3, v0

    new-instance v8, Lj1/e$d;

    invoke-direct {v8, p0, v4, v5}, Lj1/e$d;-><init>(Lj1/e;Ljava/lang/String;Ljava/util/concurrent/CompletableFuture;)V

    invoke-virtual {v6, v7, v4, v3, v8}, Lk1/a;->a(Ljava/lang/String;Ljava/lang/String;ILl1/a;)V

    const-string v4, "Wait for add attachment."

    invoke-virtual {p0, v5, v4}, Lj1/e;->g(Ljava/util/concurrent/CompletableFuture;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "request updateNote. thumbnail size : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lj1/e;->a:Li1/h;

    iget-object v2, v2, Li1/h;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    invoke-static {}, Lk1/a;->f()Lk1/a;

    move-result-object v1

    iget-object v2, p0, Lj1/e;->a:Li1/h;

    new-instance v3, Lj1/e$e;

    invoke-direct {v3, p0, v0}, Lj1/e$e;-><init>(Lj1/e;Ljava/util/concurrent/CompletableFuture;)V

    invoke-virtual {v1, v2, v3}, Lk1/a;->j(Li1/h;Ll1/a;)V

    const-string v1, "Wait for update Note Extension."

    invoke-virtual {p0, v0, v1}, Lj1/e;->g(Ljava/util/concurrent/CompletableFuture;Ljava/lang/String;)V

    invoke-static {}, Lk1/a;->f()Lk1/a;

    move-result-object v0

    iget-object v1, p0, Lj1/e;->a:Li1/h;

    new-instance v2, Lj1/e$f;

    invoke-direct {v2, p0}, Lj1/e$f;-><init>(Lj1/e;)V

    invoke-virtual {v0, v1, v2}, Lk1/a;->i(Li1/h;Ll1/a;)V

    return-void
.end method

.method public final f(Ljava/util/concurrent/CompletableFuture;Ljava/lang/String;)V
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

    const-string v0, "UpdateNote"

    invoke-static {v0, p2}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    return-void
.end method

.method public final g(Ljava/util/concurrent/CompletableFuture;Ljava/lang/String;)V
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

    const-string v0, "UpdateNote"

    invoke-static {v0, p2}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/32 v0, 0x927c0

    invoke-virtual {p1, v0, v1, p2}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    return-void
.end method
