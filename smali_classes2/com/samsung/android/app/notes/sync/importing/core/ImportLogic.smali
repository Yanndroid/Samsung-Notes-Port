.class public Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$ImportHandler;,
        Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$c;
    }
.end annotation


# static fields
.field public static k:J

.field public static l:I


# instance fields
.field public a:Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;

.field public b:Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$ImportHandler;

.field public c:Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$ImportHandler$a;

.field public d:Lb3/u;

.field public e:Lcom/samsung/android/app/notes/sync/importing/core/c;

.field public f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "La1/a;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lf1/a;",
            ">;"
        }
    .end annotation
.end field

.field public h:Z

.field public i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/notes/sync/importing/core/d;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$c;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$a;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$a;-><init>(Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;)V

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;->a:Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;

    new-instance v0, Lcom/samsung/android/app/notes/sync/importing/core/c;

    invoke-direct {v0}, Lcom/samsung/android/app/notes/sync/importing/core/c;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;->e:Lcom/samsung/android/app/notes/sync/importing/core/c;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;->f:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;->g:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;->h:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;->i:Ljava/util/ArrayList;

    new-instance v0, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$c;

    invoke-direct {v0}, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$c;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;->j:Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$c;

    invoke-static {}, Lb3/u;->h()Lb3/u;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;->d:Lb3/u;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;)Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$c;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;->j:Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$c;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;)Lcom/samsung/android/app/notes/sync/importing/core/c;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;->e:Lcom/samsung/android/app/notes/sync/importing/core/c;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;->f:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;)Lb3/u;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;->d:Lb3/u;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;Landroid/os/Message;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;->q(Landroid/os/Message;)V

    return-void
.end method

.method public static bridge synthetic f(Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;->v(Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;I)V

    return-void
.end method

.method public static bridge synthetic g(Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;ILjava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;->w(Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;ILjava/lang/String;)V

    return-void
.end method

.method public static j()V
    .locals 1

    sget v0, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;->l:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;->l:I

    return-void
.end method

.method public static p()I
    .locals 1

    sget v0, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;->l:I

    return v0
.end method


# virtual methods
.method public final A()V
    .locals 2

    const-string v0, "ImportLogic"

    const-string v1, "onStartedImporting()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v0

    invoke-virtual {v0}, Lx/e;->o()Lc0/a;

    move-result-object v0

    invoke-interface {v0}, Lc0/a;->cancelAllImportNotification()V

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;->D()V

    return-void
.end method

.method public B()V
    .locals 4

    const-string v0, "ImportLogic"

    const-string v1, "reTryImporting()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;->o()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lf/a;->m(Landroid/content/Context;)Lf/a;

    move-result-object v1

    invoke-virtual {v1}, Lf/a;->r()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "reTryImporting() : loginned!"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;->e:Lcom/samsung/android/app/notes/sync/importing/core/c;

    invoke-virtual {v1}, Lcom/samsung/android/app/notes/sync/importing/core/c;->a()I

    move-result v1

    goto :goto_0

    :cond_0
    const-string v1, "reTryImporting() : not loginned!"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;->e:Lcom/samsung/android/app/notes/sync/importing/core/c;

    invoke-virtual {v1}, Lcom/samsung/android/app/notes/sync/importing/core/c;->d()I

    move-result v1

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reTryImporting() : size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-lez v1, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;->z(IZ)V

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;->A()V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;->e:Lcom/samsung/android/app/notes/sync/importing/core/c;

    invoke-static {}, Lcom/samsung/android/app/notes/sync/importing/core/f;->b()Lcom/samsung/android/app/notes/sync/importing/core/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/notes/sync/importing/core/f;->a()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/notes/sync/importing/core/c;->h(Ljava/util/concurrent/Executor;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;->D()V

    :goto_1
    return-void
.end method

.method public C(La1/a;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;->f:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const-string p1, "ImportLogic"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removed sync listener - size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;->f:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final D()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;->d:Lb3/u;

    invoke-virtual {v0}, Lb3/u;->t()V

    return-void
.end method

.method public final E(Lcom/samsung/android/app/notes/sync/importing/core/a;Ljava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/notes/sync/importing/core/a;",
            "Ljava/util/List<",
            "Ld1/d;",
            ">;Z)V"
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;->k:J

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;->o()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lc3/h;->e(Landroid/content/Context;)Z

    move-result p3

    if-nez p3, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/app/notes/sync/importing/core/a;->d()Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

    move-result-object p1

    const/4 p2, 0x4

    const-string p3, "Network is unable."

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;->w(Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;ILjava/lang/String;)V

    return-void

    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/app/notes/sync/importing/core/a;->d()Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "start to download : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    if-nez p2, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v1, "ImportLogic"

    invoke-static {v1, p3}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_3

    iget-object p3, p1, Lcom/samsung/android/app/notes/sync/importing/core/a;->a:Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

    sget-object v1, Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;->SDOC_SCLOUD:Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

    if-eq p3, v1, :cond_2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    invoke-virtual {p0, p3, v0}, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;->z(IZ)V

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;->A()V

    :cond_2
    invoke-static {}, Lcom/samsung/android/app/notes/sync/importing/core/f;->b()Lcom/samsung/android/app/notes/sync/importing/core/f;

    move-result-object p3

    invoke-virtual {p3}, Lcom/samsung/android/app/notes/sync/importing/core/f;->a()Ljava/util/concurrent/Executor;

    move-result-object p3

    invoke-virtual {p1, p3, p2, v0}, Lcom/samsung/android/app/notes/sync/importing/core/a;->e(Ljava/util/concurrent/Executor;Ljava/util/List;Z)Z

    goto :goto_1

    :cond_3
    const-string p2, "requestDownloadLists onImportEnded()"

    invoke-static {v1, p2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/app/notes/sync/importing/core/a;->d()Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

    move-result-object p1

    const/4 p2, 0x3

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;->v(Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;I)V

    :goto_1
    return-void
.end method

.method public final F()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;->b:Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$ImportHandler;

    const-string v1, "ImportLogic"

    if-eqz v0, :cond_0

    const/16 v2, 0x66

    invoke-static {v0, v2}, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$ImportHandler;->a(Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$ImportHandler;I)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;->b:Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$ImportHandler;

    invoke-static {v0, v2}, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$ImportHandler;->c(Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$ImportHandler;I)V

    goto :goto_0

    :cond_0
    const-string v0, "call requestImportNow() mImportHandler is null"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string v0, "call requestImportNow()"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public G(Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$ImportHandler$a;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;->c:Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$ImportHandler$a;

    return-void
.end method

.method public final H()V
    .locals 6

    const-string v0, "ImportLogic"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start import - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;->i:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;->i:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/notes/sync/importing/core/d;

    iget-object v3, v2, Lcom/samsung/android/app/notes/sync/importing/core/d;->a:Lcom/samsung/android/app/notes/sync/importing/core/e;

    iget-object v4, v3, Lcom/samsung/android/app/notes/sync/importing/core/a;->a:Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

    sget-object v5, Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;->MEMO_SCLOUD:Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

    if-eq v4, v5, :cond_1

    sget-object v5, Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;->SNOTE_SCLOUD:Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

    if-eq v4, v5, :cond_1

    sget-object v5, Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;->SNOTE_GOOGLEDRIVE:Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

    if-eq v4, v5, :cond_1

    sget-object v5, Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;->SCRAPBOOK_SCLOUD:Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

    if-ne v4, v5, :cond_0

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v4, 0x1

    :goto_2
    iget-object v2, v2, Lcom/samsung/android/app/notes/sync/importing/core/d;->b:Ljava/util/List;

    invoke-virtual {p0, v3, v2, v4}, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;->E(Lcom/samsung/android/app/notes/sync/importing/core/a;Ljava/util/List;Z)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public I(Ly0/a;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;->e:Lcom/samsung/android/app/notes/sync/importing/core/c;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/notes/sync/importing/core/c;->b(Ljava/lang/Class;)Ly0/b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;->e:Lcom/samsung/android/app/notes/sync/importing/core/c;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/notes/sync/importing/core/c;->c(Ly0/a;)Lcom/samsung/android/app/notes/sync/importing/core/e;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;->e:Lcom/samsung/android/app/notes/sync/importing/core/c;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/notes/sync/importing/core/c;->b(Ljava/lang/Class;)Ly0/b;

    move-result-object v1

    invoke-virtual {v1, p1}, Ly0/b;->a(Ly0/a;)V

    invoke-virtual {p1}, Ly0/a;->a()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;->h(Lcom/samsung/android/app/notes/sync/importing/core/e;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public J()V
    .locals 2

    const-string v0, "ImportLogic"

    const-string v1, "stop import internal"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;->e:Lcom/samsung/android/app/notes/sync/importing/core/c;

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/importing/core/c;->j()V

    return-void
.end method

.method public final h(Lcom/samsung/android/app/notes/sync/importing/core/e;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/notes/sync/importing/core/e;",
            "Ljava/util/List<",
            "Ld1/d;",
            ">;)V"
        }
    .end annotation

    const-string v0, "ImportLogic"

    const-string v1, "addImportData()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;->i:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;->i:Ljava/util/ArrayList;

    new-instance v2, Lcom/samsung/android/app/notes/sync/importing/core/d;

    invoke-direct {v2, p1, p2}, Lcom/samsung/android/app/notes/sync/importing/core/d;-><init>(Lcom/samsung/android/app/notes/sync/importing/core/e;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;->d:Lb3/u;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lb3/u;->e(I)Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;->F()V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;->b:Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$ImportHandler;

    if-eqz p1, :cond_2

    const/16 p2, 0x66

    invoke-static {p1, p2}, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$ImportHandler;->a(Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$ImportHandler;I)V

    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;->b:Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$ImportHandler;

    const-wide/16 v0, 0x1f4

    invoke-static {p1, p2, v0, v1}, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$ImportHandler;->d(Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$ImportHandler;IJ)V

    goto :goto_1

    :cond_2
    const-string p1, "ImportLogic"

    const-string p2, "call addImportData() mImportHandler is null"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public i(La1/a;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;->f:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La1/a;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    monitor-exit v0

    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p1, "ImportLogic"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Added sync listener - size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;->f:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final declared-synchronized k()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "ImportLogic"

    const-string v1, "checkAllTaskStoped()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;->e:Lcom/samsung/android/app/notes/sync/importing/core/c;

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/importing/core/c;->f()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final l()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;->m(Z)V

    return-void
.end method

.method public final m(Z)V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;->k()Z

    move-result v0

    const-string v1, "ImportLogic"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkAllImportingEnded() : mImporting = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;->h:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " ignoreCheckImporting : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;->h:Z

    if-nez v1, :cond_0

    if-eqz p1, :cond_2

    :cond_0
    if-eqz v0, :cond_2

    new-instance p1, Lb3/t;

    invoke-direct {p1}, Lb3/t;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;->d:Lb3/u;

    invoke-virtual {v0, p1}, Lb3/u;->w(Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;->d:Lb3/u;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;->getType()I

    move-result p1

    invoke-virtual {v0, p1}, Lb3/u;->n(I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;->h:Z

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;->o()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lc3/q;->v(Landroid/content/Context;Ljava/lang/Boolean;)V

    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;->f:Ljava/util/ArrayList;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;->d:Lb3/u;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lb3/u;->p(I)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La1/a;

    invoke-interface {v1}, La1/a;->b()V

    goto :goto_0

    :cond_1
    monitor-exit p1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :goto_1
    return-void
.end method

.method public final n()V
    .locals 3

    const-string v0, "ImportLogic"

    const-string v1, "checkNeedToImport()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;->u()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;->o()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lc3/h;->h(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;->o()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lc3/q;->k(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v0

    invoke-virtual {v0}, Lx/e;->b()La0/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;->o()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2}, La0/a;->show(Landroid/content/Context;I)V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;->t()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;->o()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lc3/h;->o(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;->o()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lc3/q;->k(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;->B()V

    :cond_2
    return-void
.end method

.method public final o()Landroid/content/Context;
    .locals 1

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v0

    invoke-virtual {v0}, Lx/e;->a()Lx/a;

    move-result-object v0

    invoke-interface {v0}, Lx/a;->getAppContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final q(Landroid/os/Message;)V
    .locals 1

    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x66

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;->H()V

    :goto_0
    return-void
.end method

.method public final r(Landroid/content/Context;)V
    .locals 2

    invoke-static {}, Lcom/samsung/android/app/notes/sync/importing/core/f;->b()Lcom/samsung/android/app/notes/sync/importing/core/f;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;->e:Lcom/samsung/android/app/notes/sync/importing/core/c;

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/app/notes/sync/importing/core/f;->c(Landroid/content/Context;Lcom/samsung/android/app/notes/sync/importing/core/c;)V

    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;->e:Lcom/samsung/android/app/notes/sync/importing/core/c;

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;->a:Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/notes/sync/importing/core/c;->i(Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;)V

    return-void
.end method

.method public s()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreate() : v."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;->o()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/notes/sync/utils/a;->x(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImportLogic"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;->j()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mStartServiceCount = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;->p()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v0

    invoke-virtual {v0}, Lx/e;->a()Lx/a;

    move-result-object v0

    invoke-interface {v0}, Lx/a;->getAppContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$ImportHandler;

    iget-object v3, p0, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;->c:Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$ImportHandler$a;

    invoke-direct {v2, p0, v3}, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$ImportHandler;-><init>(Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$ImportHandler$a;)V

    iput-object v2, p0, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;->b:Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$ImportHandler;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;->r(Landroid/content/Context;)V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;->h:Z

    invoke-static {v0}, Lc3/h;->q(Landroid/content/Context;)V

    const-string v0, "onCreate() finishes"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public t()Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isImporting : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImportLogic"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;->h:Z

    return v0
.end method

.method public u()I
    .locals 2

    const-string v0, "ImportLogic"

    const-string v1, "isImportingPaused()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;->o()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lf/a;->m(Landroid/content/Context;)Lf/a;

    move-result-object v1

    invoke-virtual {v1}, Lf/a;->r()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "isImportingPaused() : not loginned!"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;->e:Lcom/samsung/android/app/notes/sync/importing/core/c;

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/importing/core/c;->a()I

    move-result v0

    return v0
.end method

.method public final v(Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;I)V
    .locals 6

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;->l()V

    const-string v0, "ImportLogic"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEnded - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;->k:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "ms"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x2

    if-ne p2, p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;->f:Ljava/util/ArrayList;

    monitor-enter p1

    :try_start_0
    iget-object p2, p0, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;->f:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La1/a;

    invoke-interface {v0}, La1/a;->a()V

    goto :goto_0

    :cond_0
    monitor-exit p1

    goto :goto_1

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    :cond_1
    :goto_1
    return-void
.end method

.method public final w(Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;ILjava/lang/String;)V
    .locals 7

    const-string v0, "ImportLogic"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFailed["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "] errorCode("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "), "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;->k:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "ms "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p3, p0, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;->f:Ljava/util/ArrayList;

    monitor-enter p3

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La1/a;

    const/4 v2, 0x0

    invoke-interface {v1, p1, p2, v2}, La1/a;->c(Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;ILjava/lang/Exception;)V

    goto :goto_0

    :cond_0
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;->l()V

    sget-object p3, Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;->SDOCX:Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

    if-eq p1, p3, :cond_1

    const/4 p3, 0x0

    iput-boolean p3, p0, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;->h:Z

    :cond_1
    new-instance v0, Lb3/e;

    invoke-direct {v0}, Lb3/e;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;->o()Landroid/content/Context;

    move-result-object v1

    const/4 v4, -0x1

    iget-object v5, p0, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;->g:Ljava/util/ArrayList;

    new-instance v6, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$b;

    invoke-direct {v6, p0}, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$b;-><init>(Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;)V

    move-object v2, p1

    move v3, p2

    invoke-virtual/range {v0 .. v6}, Lb3/e;->a(Landroid/content/Context;Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;IILjava/util/List;Ljava/lang/Runnable;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;->getType()I

    move-result p3

    invoke-static {p1, p3}, Ls0/b;->b(Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;I)Lt0/i;

    move-result-object p3

    invoke-virtual {p3}, Lt0/i;->a()V

    goto :goto_1

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public x(ZZ)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Network : onNetworkConnected() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImportLogic"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;->o()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/app/notes/sync/importing/core/i;->a()Z

    move-result v2

    if-ne p1, v2, :cond_0

    invoke-static {}, Lcom/samsung/android/app/notes/sync/importing/core/i;->b()Z

    move-result v2

    if-ne p2, v2, :cond_0

    const-string p1, "onNetworkConnected() : not changed!"

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/app/notes/sync/importing/core/i;->c(Z)V

    invoke-static {p2}, Lcom/samsung/android/app/notes/sync/importing/core/i;->d(Z)V

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object p1

    invoke-virtual {p1}, Lx/e;->a()Lx/a;

    move-result-object p1

    if-eqz p2, :cond_1

    invoke-interface {p1, v0}, Lx/a;->reConnectedToWAN(Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    invoke-interface {p1, v0}, Lx/a;->reConnectedToMobile(Landroid/content/Context;)V

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;->n()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    invoke-static {p1}, Lcom/samsung/android/app/notes/sync/importing/core/i;->c(Z)V

    :goto_1
    return-void
.end method

.method public y(II)V
    .locals 4

    const/4 v0, 0x2

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eqz p1, :cond_3

    if-ne p1, v2, :cond_0

    goto :goto_1

    :cond_0
    if-eq p1, v1, :cond_2

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;->o()Landroid/content/Context;

    move-result-object p1

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v3}, Lc3/q;->v(Landroid/content/Context;Ljava/lang/Boolean;)V

    :cond_3
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Network is re-enabled isReEnabled:"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "ImportLogic"

    invoke-static {v3, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v2, :cond_4

    return-void

    :cond_4
    if-eq p2, v1, :cond_5

    if-ne p2, v0, :cond_6

    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;->B()V

    :cond_6
    return-void
.end method

.method public final z(IZ)V
    .locals 5

    const-string v0, "ImportLogic"

    const-string v1, "onPreStartedImporting()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;->h:Z

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;->j:Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$c;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;->d:Lb3/u;

    invoke-virtual {v2, v0}, Lb3/u;->e(I)Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;

    move-result-object v0

    check-cast v0, Lb3/t;

    if-nez v0, :cond_0

    new-instance p2, Lb3/t;

    invoke-direct {p2}, Lb3/t;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0, v0}, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCardProgress;->setProgressInfo(III)V

    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;->j:Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$c;

    iput p1, v2, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$c;->a:I

    iput v0, v2, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$c;->b:I

    const-string v0, "ImportLogic"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "# Importing Tipcard created. # - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;->j:Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$c;

    iget v3, v3, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$c;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;->d:Lb3/u;

    invoke-virtual {v0, p2}, Lb3/u;->u(Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;)Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "ImportLogic"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# Importing Tipcard created. # - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;->j:Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$c;

    iget v2, v2, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$c;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_0
    const-string v2, "ImportLogic"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "# Importing Tipcard update. 1 # - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;->j:Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$c;

    iget v4, v4, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$c;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_1

    const-string p2, "ImportLogic"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "# Importing Tipcard update. 2 # - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;->j:Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$c;

    iget v3, v3, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$c;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;->j:Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$c;

    iget v2, p2, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$c;->a:I

    add-int/2addr v2, p1

    iput v2, p2, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$c;->a:I

    :cond_1
    const-string p2, "ImportLogic"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "# Importing Tipcard update. 3 # - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;->j:Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$c;

    iget v3, v3, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$c;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;->j:Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$c;

    iget p1, p1, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$c;->a:I

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCardProgress;->setTotal(I)V

    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;->d:Lb3/u;

    invoke-virtual {p1, v0}, Lb3/u;->x(Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;)V

    :cond_2
    :goto_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
