.class public Lcom/samsung/android/app/notes/sync/importing/controllers/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ly0/a;

.field public b:Lcom/samsung/android/app/notes/sync/importing/core/b;

.field public c:Ly0/b;


# direct methods
.method public constructor <init>(Ly0/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/app/notes/sync/importing/core/b;

    invoke-direct {v0}, Lcom/samsung/android/app/notes/sync/importing/core/b;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/controllers/b;->b:Lcom/samsung/android/app/notes/sync/importing/core/b;

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/importing/controllers/b;->a:Ly0/a;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/controllers/b;->b:Lcom/samsung/android/app/notes/sync/importing/core/b;

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/importing/controllers/b;->a:Ly0/a;

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/app/notes/sync/importing/core/b;->a(Landroid/content/Context;Ly0/a;)Ly0/b;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/importing/controllers/b;->c:Ly0/b;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/controllers/b;->a:Ly0/a;

    invoke-virtual {p1, v0}, Ly0/b;->a(Ly0/a;)V

    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/importing/controllers/b;->c:Ly0/b;

    invoke-virtual {p1}, Ly0/b;->b()Lcom/samsung/android/app/notes/sync/importing/core/e;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/notes/sync/importing/core/a;->i(Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;)V

    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/importing/controllers/b;->c:Ly0/b;

    invoke-virtual {p1}, Ly0/b;->b()Lcom/samsung/android/app/notes/sync/importing/core/e;

    move-result-object p1

    sget-object p2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/notes/sync/importing/core/e;->f(Ljava/util/concurrent/Executor;)Z

    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/controllers/b;->c:Ly0/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ly0/b;->b()Lcom/samsung/android/app/notes/sync/importing/core/e;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/notes/sync/importing/core/a;->i(Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/controllers/b;->c:Ly0/b;

    invoke-virtual {v0}, Ly0/b;->b()Lcom/samsung/android/app/notes/sync/importing/core/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/importing/core/a;->j()Z

    :cond_0
    return-void
.end method
