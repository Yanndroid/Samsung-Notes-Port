.class public Lcom/samsung/android/app/notes/sync/coedit/sharelogic/c;
.super Lcom/samsung/android/app/notes/sync/coedit/sharelogic/CoeditBaseLogic;
.source "SourceFile"


# static fields
.field public static final e:Ljava/util/concurrent/Executor;

.field public static f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/support/senl/nt/base/common/sync/SharedFileUpdatedListener;",
            ">;"
        }
    .end annotation
.end field

.field public static g:Lcom/samsung/android/app/notes/sync/coedit/sharehelpers/d;

.field public static h:J


# instance fields
.field public d:Lcom/samsung/android/app/notes/sync/coedit/sharecore/strategy/CoeditShareBaseTask$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;

    const-string v1, "CoeditShareLogic"

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/c;->e:Ljava/util/concurrent/Executor;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/c;->f:Ljava/util/ArrayList;

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/c;->g:Lcom/samsung/android/app/notes/sync/coedit/sharehelpers/d;

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/c;->h:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/CoeditBaseLogic;-><init>()V

    new-instance v0, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/c$a;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/c$a;-><init>(Lcom/samsung/android/app/notes/sync/coedit/sharelogic/c;)V

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/c;->d:Lcom/samsung/android/app/notes/sync/coedit/sharecore/strategy/CoeditShareBaseTask$a;

    return-void
.end method

.method public static bridge synthetic e(Lcom/samsung/android/app/notes/sync/coedit/sharelogic/c;)V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/c;->l()V

    return-void
.end method

.method public static bridge synthetic f(Lcom/samsung/android/app/notes/sync/coedit/sharelogic/c;Ljava/util/ArrayList;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/c;->m(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static bridge synthetic g()Ljava/util/ArrayList;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/c;->f:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static k()Z
    .locals 3

    sget-object v0, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/c;->g:Lcom/samsung/android/app/notes/sync/coedit/sharehelpers/d;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/coedit/sharehelpers/CoeditAbsShareHelper;->h()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    move v1, v2

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isMdeSharing : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CoeditShareLogic"

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method


# virtual methods
.method public c(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/c;->r(ILjava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "CoeditShareLogic"

    const-string v0, "can\'t start sharing now!"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->s(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/c;->g:Lcom/samsung/android/app/notes/sync/coedit/sharehelpers/d;

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/coedit/sharehelpers/d;->k()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i()V
    .locals 4

    const-class v0, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/c;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/c;->g:Lcom/samsung/android/app/notes/sync/coedit/sharehelpers/d;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/app/notes/sync/coedit/sharehelpers/d;

    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/CoeditBaseLogic;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/CoeditBaseLogic;->a:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/app/notes/sync/coedit/sharehelpers/d;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sput-object v1, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/c;->g:Lcom/samsung/android/app/notes/sync/coedit/sharehelpers/d;

    :cond_0
    sget-object v1, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/c;->g:Lcom/samsung/android/app/notes/sync/coedit/sharehelpers/d;

    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/c;->d:Lcom/samsung/android/app/notes/sync/coedit/sharecore/strategy/CoeditShareBaseTask$a;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/notes/sync/coedit/sharehelpers/d;->m(Lcom/samsung/android/app/notes/sync/coedit/sharecore/strategy/CoeditShareBaseTask$a;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final j()V
    .locals 2

    const-string v0, "CoeditShareLogic"

    const-string v1, "initializeShareData()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/CoeditBaseLogic;->c:Landroid/content/Context;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lw/a;->d(Landroid/content/Context;Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/CoeditBaseLogic;->c:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lw/a;->c(Landroid/content/Context;Z)V

    return-void
.end method

.method public final l()V
    .locals 2

    const-string v0, "CoeditShareLogic"

    const-string v1, "onEnded()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/CoeditBaseLogic;->c:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lw/a;->c(Landroid/content/Context;Z)V

    return-void
.end method

.method public final m(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ly1/a;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFailed("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CoeditShareLogic"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/c;->g:Lcom/samsung/android/app/notes/sync/coedit/sharehelpers/d;

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/coedit/sharehelpers/CoeditAbsShareHelper;->h()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/CoeditBaseLogic;->c:Landroid/content/Context;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lw/a;->d(Landroid/content/Context;Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/CoeditBaseLogic;->c:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lw/a;->c(Landroid/content/Context;Z)V

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ly1/a;

    invoke-virtual {v0}, Ly1/a;->c()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final n(Ly1/a;)V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/c;->m(Ljava/util/ArrayList;)V

    return-void
.end method

.method public final o()V
    .locals 4

    const-string v0, "CoeditShareLogic"

    const-string v1, "removeShareUi()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v0

    invoke-virtual {v0}, Lx/e;->g()Lc0/b;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/CoeditBaseLogic;->c:Landroid/content/Context;

    sget-object v2, Lcom/samsung/android/app/notes/sync/infos/ModelType;->SHARE:Lcom/samsung/android/app/notes/sync/infos/ModelType;

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lc0/b;->remove(Landroid/content/Context;Lcom/samsung/android/app/notes/sync/infos/ModelType;I)V

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v0

    invoke-virtual {v0}, Lx/e;->p()Le0/a;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/CoeditBaseLogic;->c:Landroid/content/Context;

    invoke-interface {v0, v1, v2, v3}, Le0/a;->removeTipCard(Landroid/content/Context;Lcom/samsung/android/app/notes/sync/infos/ModelType;I)V

    return-void
.end method

.method public p(Ljava/lang/String;)V
    .locals 3

    const-string v0, "CoeditShareLogic"

    const-string v1, "requestShareNow()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/CoeditBaseLogic;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ln/a;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/CoeditBaseLogic;->b:Lcom/samsung/android/app/notes/sync/coedit/sharelogic/CoeditBaseLogic$CoeditBaseLogicHandler;

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/CoeditBaseLogic$CoeditBaseLogicHandler;->b()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x64

    iput v1, v0, Landroid/os/Message;->what:I

    const/4 v2, 0x0

    iput v2, v0, Landroid/os/Message;->arg1:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/CoeditBaseLogic;->b:Lcom/samsung/android/app/notes/sync/coedit/sharelogic/CoeditBaseLogic$CoeditBaseLogicHandler;

    invoke-virtual {p1, v1}, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/CoeditBaseLogic$CoeditBaseLogicHandler;->c(I)V

    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/CoeditBaseLogic;->b:Lcom/samsung/android/app/notes/sync/coedit/sharelogic/CoeditBaseLogic$CoeditBaseLogicHandler;

    const-wide/16 v1, 0x1388

    invoke-virtual {p1, v0, v1, v2}, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/CoeditBaseLogic$CoeditBaseLogicHandler;->g(Landroid/os/Message;J)V

    return-void
.end method

.method public q(Ljava/lang/String;Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestShareNow() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CoeditShareLogic"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/CoeditBaseLogic;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ln/a;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/CoeditBaseLogic;->b:Lcom/samsung/android/app/notes/sync/coedit/sharelogic/CoeditBaseLogic$CoeditBaseLogicHandler;

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/CoeditBaseLogic$CoeditBaseLogicHandler;->b()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x64

    iput v1, v0, Landroid/os/Message;->what:I

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    iput p2, v0, Landroid/os/Message;->arg1:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/CoeditBaseLogic;->b:Lcom/samsung/android/app/notes/sync/coedit/sharelogic/CoeditBaseLogic$CoeditBaseLogicHandler;

    invoke-virtual {p1, v1}, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/CoeditBaseLogic$CoeditBaseLogicHandler;->c(I)V

    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/CoeditBaseLogic;->b:Lcom/samsung/android/app/notes/sync/coedit/sharelogic/CoeditBaseLogic$CoeditBaseLogicHandler;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/CoeditBaseLogic$CoeditBaseLogicHandler;->f(Landroid/os/Message;)V

    return-void
.end method

.method public final r(ILjava/lang/Object;)Z
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startShare : msgCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CoeditShareLogic"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/c;->h:J

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/CoeditBaseLogic;->c:Landroid/content/Context;

    invoke-static {v0}, Lc3/h;->e(Landroid/content/Context;)Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_1

    and-int/2addr p1, v3

    if-eq p1, v3, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/CoeditBaseLogic;->c:Landroid/content/Context;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, p2}, Lw/a;->d(Landroid/content/Context;Ljava/lang/Boolean;)V

    :cond_0
    new-instance p1, Ls/c;

    const-string p2, ""

    invoke-direct {p1, p2, v2}, Ls/c;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/c;->n(Ly1/a;)V

    const-string p1, "Skip startShare due to Network disconnected!"

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/c;->j()V

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/c;->o()V

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_2
    sget-object p1, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/c;->g:Lcom/samsung/android/app/notes/sync/coedit/sharehelpers/d;

    sget-object p2, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/c;->e:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, p2, v2}, Lcom/samsung/android/app/notes/sync/coedit/sharehelpers/d;->l(Ljava/util/concurrent/Executor;Ljava/lang/String;)Z

    return v3
.end method

.method public s()V
    .locals 2

    const-string v0, "CoeditShareLogic"

    const-string v1, "stopShare()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/c;->g:Lcom/samsung/android/app/notes/sync/coedit/sharehelpers/d;

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/coedit/sharehelpers/d;->n()V

    return-void
.end method
