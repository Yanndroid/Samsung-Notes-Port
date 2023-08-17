.class public Lcom/samsung/android/app/notes/sync/importing/core/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static n:Lcom/samsung/android/app/notes/sync/importing/core/f;


# instance fields
.field public final a:Ljava/util/concurrent/Executor;

.field public b:Lcom/samsung/android/app/notes/sync/importing/core/g;

.field public c:Lcom/samsung/android/app/notes/sync/importing/core/h;

.field public d:Lcom/samsung/android/app/notes/sync/importing/core/k;

.field public e:Lcom/samsung/android/app/notes/sync/importing/core/m;

.field public f:Lcom/samsung/android/app/notes/sync/importing/core/l;

.field public g:Lcom/samsung/android/app/notes/sync/importing/core/j;

.field public h:Lz0/e;

.field public i:Lz0/c;

.field public j:Lz0/b;

.field public k:Lz0/d;

.field public l:Lz0/g;

.field public m:Lz0/f;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;

    const-string v1, "ImportHelperManager"

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/f;->a:Ljava/util/concurrent/Executor;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/f;->b:Lcom/samsung/android/app/notes/sync/importing/core/g;

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/f;->c:Lcom/samsung/android/app/notes/sync/importing/core/h;

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/f;->d:Lcom/samsung/android/app/notes/sync/importing/core/k;

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/f;->e:Lcom/samsung/android/app/notes/sync/importing/core/m;

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/f;->f:Lcom/samsung/android/app/notes/sync/importing/core/l;

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/f;->g:Lcom/samsung/android/app/notes/sync/importing/core/j;

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/f;->h:Lz0/e;

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/f;->i:Lz0/c;

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/f;->j:Lz0/b;

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/f;->k:Lz0/d;

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/f;->l:Lz0/g;

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/f;->m:Lz0/f;

    return-void
.end method

.method public static declared-synchronized b()Lcom/samsung/android/app/notes/sync/importing/core/f;
    .locals 2

    const-class v0, Lcom/samsung/android/app/notes/sync/importing/core/f;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/app/notes/sync/importing/core/f;->n:Lcom/samsung/android/app/notes/sync/importing/core/f;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/app/notes/sync/importing/core/f;

    invoke-direct {v1}, Lcom/samsung/android/app/notes/sync/importing/core/f;-><init>()V

    sput-object v1, Lcom/samsung/android/app/notes/sync/importing/core/f;->n:Lcom/samsung/android/app/notes/sync/importing/core/f;

    :cond_0
    sget-object v1, Lcom/samsung/android/app/notes/sync/importing/core/f;->n:Lcom/samsung/android/app/notes/sync/importing/core/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public a()Ljava/util/concurrent/Executor;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/f;->a:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public declared-synchronized c(Landroid/content/Context;Lcom/samsung/android/app/notes/sync/importing/core/c;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/app/notes/sync/importing/core/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/f;->h:Lz0/e;

    if-nez v0, :cond_0

    new-instance v0, Lz0/e;

    invoke-direct {v0, p1}, Lz0/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/f;->h:Lz0/e;

    :cond_0
    const-class v0, Ly0/m;

    new-instance v1, Ly0/c;

    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/importing/core/f;->h:Lz0/e;

    invoke-direct {v1, v2}, Ly0/c;-><init>(Lcom/samsung/android/app/notes/sync/importing/core/e;)V

    invoke-virtual {p2, v0, v1}, Lcom/samsung/android/app/notes/sync/importing/core/c;->g(Ljava/lang/Class;Ly0/b;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/f;->i:Lz0/c;

    if-nez v0, :cond_1

    new-instance v0, Lz0/c;

    invoke-direct {v0, p1}, Lz0/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/f;->i:Lz0/c;

    :cond_1
    const-class v0, Ly0/k;

    new-instance v1, Ly0/c;

    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/importing/core/f;->i:Lz0/c;

    invoke-direct {v1, v2}, Ly0/c;-><init>(Lcom/samsung/android/app/notes/sync/importing/core/e;)V

    invoke-virtual {p2, v0, v1}, Lcom/samsung/android/app/notes/sync/importing/core/c;->g(Ljava/lang/Class;Ly0/b;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/f;->j:Lz0/b;

    if-nez v0, :cond_2

    new-instance v0, Lz0/b;

    invoke-direct {v0, p1}, Lz0/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/f;->j:Lz0/b;

    :cond_2
    const-class v0, Ly0/j;

    new-instance v1, Ly0/c;

    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/importing/core/f;->j:Lz0/b;

    invoke-direct {v1, v2}, Ly0/c;-><init>(Lcom/samsung/android/app/notes/sync/importing/core/e;)V

    invoke-virtual {p2, v0, v1}, Lcom/samsung/android/app/notes/sync/importing/core/c;->g(Ljava/lang/Class;Ly0/b;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/f;->k:Lz0/d;

    if-nez v0, :cond_3

    new-instance v0, Lz0/d;

    invoke-direct {v0, p1}, Lz0/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/f;->k:Lz0/d;

    :cond_3
    const-class v0, Ly0/l;

    new-instance v1, Ly0/c;

    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/importing/core/f;->k:Lz0/d;

    invoke-direct {v1, v2}, Ly0/c;-><init>(Lcom/samsung/android/app/notes/sync/importing/core/e;)V

    invoke-virtual {p2, v0, v1}, Lcom/samsung/android/app/notes/sync/importing/core/c;->g(Ljava/lang/Class;Ly0/b;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/f;->l:Lz0/g;

    if-nez v0, :cond_4

    new-instance v0, Lz0/g;

    invoke-direct {v0, p1}, Lz0/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/f;->l:Lz0/g;

    :cond_4
    const-class v0, Ly0/o;

    new-instance v1, Ly0/c;

    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/importing/core/f;->l:Lz0/g;

    invoke-direct {v1, v2}, Ly0/c;-><init>(Lcom/samsung/android/app/notes/sync/importing/core/e;)V

    invoke-virtual {p2, v0, v1}, Lcom/samsung/android/app/notes/sync/importing/core/c;->g(Ljava/lang/Class;Ly0/b;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/f;->m:Lz0/f;

    if-nez v0, :cond_5

    new-instance v0, Lz0/f;

    invoke-direct {v0, p1}, Lz0/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/f;->m:Lz0/f;

    :cond_5
    const-class v0, Ly0/n;

    new-instance v1, Ly0/c;

    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/importing/core/f;->m:Lz0/f;

    invoke-direct {v1, v2}, Ly0/c;-><init>(Lcom/samsung/android/app/notes/sync/importing/core/e;)V

    invoke-virtual {p2, v0, v1}, Lcom/samsung/android/app/notes/sync/importing/core/c;->g(Ljava/lang/Class;Ly0/b;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/f;->b:Lcom/samsung/android/app/notes/sync/importing/core/g;

    if-nez v0, :cond_6

    new-instance v0, Lcom/samsung/android/app/notes/sync/importing/core/g;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/notes/sync/importing/core/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/f;->b:Lcom/samsung/android/app/notes/sync/importing/core/g;

    :cond_6
    const-class v0, Ly0/e;

    new-instance v1, Ly0/b;

    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/importing/core/f;->b:Lcom/samsung/android/app/notes/sync/importing/core/g;

    invoke-direct {v1, v2}, Ly0/b;-><init>(Lcom/samsung/android/app/notes/sync/importing/core/e;)V

    invoke-virtual {p2, v0, v1}, Lcom/samsung/android/app/notes/sync/importing/core/c;->g(Ljava/lang/Class;Ly0/b;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/f;->c:Lcom/samsung/android/app/notes/sync/importing/core/h;

    if-nez v0, :cond_7

    new-instance v0, Lcom/samsung/android/app/notes/sync/importing/core/h;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/notes/sync/importing/core/h;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/f;->c:Lcom/samsung/android/app/notes/sync/importing/core/h;

    :cond_7
    const-class v0, Ly0/f;

    new-instance v1, Ly0/b;

    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/importing/core/f;->c:Lcom/samsung/android/app/notes/sync/importing/core/h;

    invoke-direct {v1, v2}, Ly0/b;-><init>(Lcom/samsung/android/app/notes/sync/importing/core/e;)V

    invoke-virtual {p2, v0, v1}, Lcom/samsung/android/app/notes/sync/importing/core/c;->g(Ljava/lang/Class;Ly0/b;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/f;->d:Lcom/samsung/android/app/notes/sync/importing/core/k;

    if-nez v0, :cond_8

    new-instance v0, Lcom/samsung/android/app/notes/sync/importing/core/k;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/notes/sync/importing/core/k;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/f;->d:Lcom/samsung/android/app/notes/sync/importing/core/k;

    :cond_8
    const-class v0, Ly0/u;

    new-instance v1, Ly0/b;

    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/importing/core/f;->d:Lcom/samsung/android/app/notes/sync/importing/core/k;

    invoke-direct {v1, v2}, Ly0/b;-><init>(Lcom/samsung/android/app/notes/sync/importing/core/e;)V

    invoke-virtual {p2, v0, v1}, Lcom/samsung/android/app/notes/sync/importing/core/c;->g(Ljava/lang/Class;Ly0/b;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/f;->e:Lcom/samsung/android/app/notes/sync/importing/core/m;

    if-nez v0, :cond_9

    new-instance v0, Lcom/samsung/android/app/notes/sync/importing/core/m;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/notes/sync/importing/core/m;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/f;->e:Lcom/samsung/android/app/notes/sync/importing/core/m;

    const-string v0, "ImportHelperManager"

    const-string v1, "onCreate() : Remove the DB for the memo backup!"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v0

    invoke-virtual {v0}, Lx/e;->a()Lx/a;

    move-result-object v0

    invoke-interface {v0}, Lx/a;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoLocalSync;->clearTempFiles(Landroid/content/Context;)V

    :cond_9
    const-class v0, Ly0/t;

    new-instance v1, Ly0/b;

    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/importing/core/f;->e:Lcom/samsung/android/app/notes/sync/importing/core/m;

    invoke-direct {v1, v2}, Ly0/b;-><init>(Lcom/samsung/android/app/notes/sync/importing/core/e;)V

    invoke-virtual {p2, v0, v1}, Lcom/samsung/android/app/notes/sync/importing/core/c;->g(Ljava/lang/Class;Ly0/b;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/f;->g:Lcom/samsung/android/app/notes/sync/importing/core/j;

    if-nez v0, :cond_a

    new-instance v0, Lcom/samsung/android/app/notes/sync/importing/core/j;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/notes/sync/importing/core/j;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/f;->g:Lcom/samsung/android/app/notes/sync/importing/core/j;

    :cond_a
    const-class v0, Ly0/i;

    new-instance v1, Ly0/b;

    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/importing/core/f;->g:Lcom/samsung/android/app/notes/sync/importing/core/j;

    invoke-direct {v1, v2}, Ly0/b;-><init>(Lcom/samsung/android/app/notes/sync/importing/core/e;)V

    invoke-virtual {p2, v0, v1}, Lcom/samsung/android/app/notes/sync/importing/core/c;->g(Ljava/lang/Class;Ly0/b;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/f;->f:Lcom/samsung/android/app/notes/sync/importing/core/l;

    if-nez v0, :cond_b

    new-instance v0, Lcom/samsung/android/app/notes/sync/importing/core/l;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/notes/sync/importing/core/l;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/f;->f:Lcom/samsung/android/app/notes/sync/importing/core/l;

    :cond_b
    const-class p1, Ly0/q;

    new-instance v0, Ly0/p;

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/importing/core/f;->f:Lcom/samsung/android/app/notes/sync/importing/core/l;

    invoke-direct {v0, v1}, Ly0/p;-><init>(Lcom/samsung/android/app/notes/sync/importing/core/e;)V

    invoke-virtual {p2, p1, v0}, Lcom/samsung/android/app/notes/sync/importing/core/c;->g(Ljava/lang/Class;Ly0/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
