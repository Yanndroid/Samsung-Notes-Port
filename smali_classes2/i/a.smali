.class public Li/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static b:Li/a;


# instance fields
.field public a:Lcom/samsung/android/app/notes/sync/coedit/controllers/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Ln/a;->l:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/app/notes/sync/coedit/controllers/a;

    invoke-direct {v0}, Lcom/samsung/android/app/notes/sync/coedit/controllers/a;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/samsung/android/app/notes/sync/coedit/controllers/CoeditShareOldServiceController;

    invoke-direct {v0}, Lcom/samsung/android/app/notes/sync/coedit/controllers/CoeditShareOldServiceController;-><init>()V

    :goto_0
    iput-object v0, p0, Li/a;->a:Lcom/samsung/android/app/notes/sync/coedit/controllers/b;

    return-void
.end method

.method public static declared-synchronized c()Li/a;
    .locals 2

    const-class v0, Li/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Li/a;->b:Li/a;

    if-nez v1, :cond_0

    new-instance v1, Li/a;

    invoke-direct {v1}, Li/a;-><init>()V

    sput-object v1, Li/a;->b:Li/a;

    :cond_0
    sget-object v1, Li/a;->b:Li/a;
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
.method public a(Lj/a;)V
    .locals 1

    iget-object v0, p0, Li/a;->a:Lcom/samsung/android/app/notes/sync/coedit/controllers/b;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/notes/sync/coedit/controllers/b;->b(Lj/a;)V

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Li/a;->a:Lcom/samsung/android/app/notes/sync/coedit/controllers/b;

    invoke-interface {v0}, Lcom/samsung/android/app/notes/sync/coedit/controllers/b;->d()V

    return-void
.end method

.method public d(Lj/a;)V
    .locals 1

    iget-object v0, p0, Li/a;->a:Lcom/samsung/android/app/notes/sync/coedit/controllers/b;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/notes/sync/coedit/controllers/b;->c(Lj/a;)V

    return-void
.end method

.method public e(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Li/a;->a:Lcom/samsung/android/app/notes/sync/coedit/controllers/b;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/notes/sync/coedit/controllers/b;->a(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method
