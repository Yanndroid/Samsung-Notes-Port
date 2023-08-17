.class public Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$ImportHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImportHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$ImportHandler$a;,
        Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$ImportHandler$InternalHandler;
    }
.end annotation


# instance fields
.field public final a:Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$ImportHandler$a;

.field public b:Landroid/content/Context;

.field public c:Landroid/util/SparseBooleanArray;

.field public d:Landroid/os/Handler;

.field public e:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$ImportHandler$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$ImportHandler;->c:Landroid/util/SparseBooleanArray;

    new-instance v0, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$ImportHandler$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$ImportHandler$1;-><init>(Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$ImportHandler;)V

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$ImportHandler;->e:Landroid/content/ServiceConnection;

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v0

    invoke-virtual {v0}, Lx/e;->a()Lx/a;

    move-result-object v0

    invoke-interface {v0}, Lx/a;->getAppContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$ImportHandler;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$ImportHandler;->a:Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$ImportHandler$a;

    new-instance p2, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$ImportHandler$InternalHandler;

    invoke-direct {p2, p1, p0}, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$ImportHandler$InternalHandler;-><init>(Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$ImportHandler;)V

    iput-object p2, p0, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$ImportHandler;->d:Landroid/os/Handler;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$ImportHandler;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$ImportHandler;->e(I)V

    return-void
.end method

.method public static bridge synthetic b(Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$ImportHandler;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$ImportHandler;->g(I)V

    return-void
.end method

.method public static bridge synthetic c(Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$ImportHandler;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$ImportHandler;->h(I)V

    return-void
.end method

.method public static bridge synthetic d(Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$ImportHandler;IJ)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$ImportHandler;->i(IJ)V

    return-void
.end method


# virtual methods
.method public final e(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$ImportHandler;->c:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$ImportHandler;->g(I)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$ImportHandler;->c:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$ImportHandler;->d:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public final declared-synchronized f(I)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$ImportHandler;->c:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ImportLogic"

    const-string v1, "selfBind() call bindService()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$ImportHandler;->a:Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$ImportHandler$a;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$ImportHandler;->e:Landroid/content/ServiceConnection;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$ImportHandler$a;->a(Landroid/content/ServiceConnection;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$ImportHandler;->c:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    const-string v0, "ImportLogic"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "selfBind() count:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$ImportHandler;->c:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " what:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized g(I)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$ImportHandler;->c:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$ImportHandler;->c:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :try_start_1
    const-string v0, "ImportLogic"

    const-string v1, "selfUnbind() call unbindService()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$ImportHandler;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$ImportHandler;->e:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "ImportLogic"

    const-string v2, "selfUnbind() unbindService"

    invoke-static {v1, v2, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    const-string v0, "ImportLogic"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "selfUnbind() count:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$ImportHandler;->c:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " what:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final h(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$ImportHandler;->d:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$ImportHandler;->f(I)V

    return-void
.end method

.method public final i(IJ)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$ImportHandler;->d:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$ImportHandler;->f(I)V

    return-void
.end method
