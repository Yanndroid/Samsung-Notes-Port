.class public abstract Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Landroid/content/Context;

.field public b:Ljava/lang/String;

.field public final c:Lcom/samsung/android/app/notes/sync/contentsharing/sessession/a;

.field public final d:Lcom/samsung/android/app/notes/sync/contentsharing/sessession/b;

.field public final e:Lcom/samsung/android/app/notes/sync/contentsharing/sessession/h;

.field public final f:Lcom/samsung/android/app/notes/sync/contentsharing/sessession/e;

.field public final g:Lcom/samsung/android/app/notes/sync/contentsharing/sessession/d;

.field public final h:Lcom/samsung/android/app/notes/sync/contentsharing/sessession/f;

.field public final i:Lcom/samsung/android/app/notes/sync/contentsharing/sessession/g;

.field public j:Lcom/samsung/android/app/notes/sync/contentsharing/sessession/c;

.field public k:Lcom/samsung/android/sdk/mobileservice/SeMobileServiceSession;

.field public final l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/notes/sync/contentsharing/sessession/i;",
            ">;"
        }
    .end annotation
.end field

.field public final m:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->l:Ljava/util/ArrayList;

    new-instance v0, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase$1;-><init>(Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->m:Landroid/os/Handler;

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v0

    invoke-virtual {v0}, Lx/e;->a()Lx/a;

    move-result-object v0

    invoke-interface {v0}, Lx/a;->getAppContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->a:Landroid/content/Context;

    new-instance v0, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/a;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/a;-><init>(Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;)V

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->c:Lcom/samsung/android/app/notes/sync/contentsharing/sessession/a;

    new-instance v0, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/b;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/b;-><init>(Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;)V

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->d:Lcom/samsung/android/app/notes/sync/contentsharing/sessession/b;

    new-instance v0, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/h;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/h;-><init>(Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;)V

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->e:Lcom/samsung/android/app/notes/sync/contentsharing/sessession/h;

    new-instance v0, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/e;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/e;-><init>(Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;)V

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->f:Lcom/samsung/android/app/notes/sync/contentsharing/sessession/e;

    new-instance v1, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/d;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/d;-><init>(Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;)V

    iput-object v1, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->g:Lcom/samsung/android/app/notes/sync/contentsharing/sessession/d;

    new-instance v1, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/f;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/f;-><init>(Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;)V

    iput-object v1, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->h:Lcom/samsung/android/app/notes/sync/contentsharing/sessession/f;

    new-instance v1, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/g;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/g;-><init>(Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;)V

    iput-object v1, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->i:Lcom/samsung/android/app/notes/sync/contentsharing/sessession/g;

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->j:Lcom/samsung/android/app/notes/sync/contentsharing/sessession/c;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;)Lcom/samsung/android/app/notes/sync/contentsharing/sessession/a;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->c:Lcom/samsung/android/app/notes/sync/contentsharing/sessession/a;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;)Lcom/samsung/android/app/notes/sync/contentsharing/sessession/c;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->j:Lcom/samsung/android/app/notes/sync/contentsharing/sessession/c;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;)Lcom/samsung/android/app/notes/sync/contentsharing/sessession/d;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->g:Lcom/samsung/android/app/notes/sync/contentsharing/sessession/d;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;)Lcom/samsung/android/app/notes/sync/contentsharing/sessession/e;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->f:Lcom/samsung/android/app/notes/sync/contentsharing/sessession/e;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->l:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;)Lcom/samsung/android/sdk/mobileservice/SeMobileServiceSession;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->k:Lcom/samsung/android/sdk/mobileservice/SeMobileServiceSession;

    return-object p0
.end method

.method public static bridge synthetic g(Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;)V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->o()V

    return-void
.end method

.method public static bridge synthetic h(Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->z()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic i(Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->C(I)V

    return-void
.end method

.method public static bridge synthetic j(Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;Ljava/util/HashMap;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->D(Ljava/util/HashMap;Z)V

    return-void
.end method


# virtual methods
.method public A()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->j:Lcom/samsung/android/app/notes/sync/contentsharing/sessession/c;

    instance-of v0, v0, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->k()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CS0] isConnected() : Session is not connected <- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->j:Lcom/samsung/android/app/notes/sync/contentsharing/sessession/c;

    invoke-virtual {v2}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/c;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public final B()V
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;

    const-string v1, "notifyConnectedState"

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase$d;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase$d;-><init>(Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final C(I)V
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;

    const-string v1, "notifyFailedState"

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase$e;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase$e;-><init>(Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final D(Ljava/util/HashMap;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->k()Ljava/lang/String;

    move-result-object p2

    const-string v0, "[CS0-1] onSessionSuccess() : allServiceConnected!"

    invoke-static {p2, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->E(Ljava/util/HashMap;)V

    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->c:Lcom/samsung/android/app/notes/sync/contentsharing/sessession/a;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->K(Lcom/samsung/android/app/notes/sync/contentsharing/sessession/c;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->B()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->k()Ljava/lang/String;

    move-result-object p2

    const-string v0, "[CS0-2] onSessionSuccess() : allServiceConnected is false!"

    invoke-static {p2, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "SocialService"

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    const-string v0, "AuthService"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->k()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CS0-1] SocialService is not connected : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->k()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[CS0-1] AuthService is not connected : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->h:Lcom/samsung/android/app/notes/sync/contentsharing/sessession/f;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->K(Lcom/samsung/android/app/notes/sync/contentsharing/sessession/c;)V

    sget p1, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceSession$ConnectionResultCallback;->CAUSE_AGENT_NOT_AVAILABLE:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->C(I)V

    :goto_0
    return-void
.end method

.method public final E(Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->k()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->u(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final F(Ljava/lang/String;)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " -> \n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->l:Ljava/util/ArrayList;

    monitor-enter p1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->l:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/i;

    const-string v3, "requestId = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v2, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/i;->a:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "connectionCount = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v2, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/i;->b:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/i;->c:Lcom/samsung/android/support/senl/nt/base/common/sync/SesUiListener;

    if-nez v3, :cond_1

    const-string v3, " "

    goto :goto_1

    :cond_1
    const-string v3, "sesUiListener exists"

    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "isConnectedStateNotified = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v2, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/i;->d:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ";\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->k()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[CS0-1] printSesListenerInfo() : Exception = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->k()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CS0] printSesListenerInfo() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public G()Z
    .locals 6

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->k()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CS0] reconnect() : Start, callee = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/base/common/util/CommonUtils;->getCallee([Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->j:Lcom/samsung/android/app/notes/sync/contentsharing/sessession/c;

    iget-object v3, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->k:Lcom/samsung/android/sdk/mobileservice/SeMobileServiceSession;

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/c;->d(Lcom/samsung/android/sdk/mobileservice/SeMobileServiceSession;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->k()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[CS0-1] reconnect() Finish, et = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->k()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[CS0-2] reconnect() Fail, Exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public final H()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->k:Lcom/samsung/android/sdk/mobileservice/SeMobileServiceSession;

    new-instance v1, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase$b;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase$b;-><init>(Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;)V

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceSession;->setSessionListener(Lcom/samsung/android/sdk/mobileservice/SeMobileServiceSession$ServiceConnectionListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->k:Lcom/samsung/android/sdk/mobileservice/SeMobileServiceSession;

    new-instance v1, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase$c;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase$c;-><init>(Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;)V

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceSession;->setOnAgentUpdatedListener(Lcom/samsung/android/sdk/mobileservice/SeMobileServiceSession$OnAgentUpdatedListener;)V

    return-void
.end method

.method public I()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->m:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->m:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->k()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[CS0] Remove previous disconnect msg"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public J(Z)V
    .locals 4

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->m:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->m:Landroid/os/Handler;

    iget v2, v0, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->k()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[CS0] Remove previous disconnect msg"

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->k()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[CS0] Send disconnect msg : isNow = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->m:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->m:Landroid/os/Handler;

    const-wide/32 v1, 0x1d4c0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_0
    return-void
.end method

.method public K(Lcom/samsung/android/app/notes/sync/contentsharing/sessession/c;)V
    .locals 3

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->k()Ljava/lang/String;

    move-result-object p1

    const-string v0, "setState() : No state!"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->k()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setState() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/c;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->j:Lcom/samsung/android/app/notes/sync/contentsharing/sessession/c;

    :goto_0
    return-void
.end method

.method public abstract k()Ljava/lang/String;
.end method

.method public l(ILcom/samsung/android/support/senl/nt/base/common/sync/SesUiListener;)Z
    .locals 6

    const-string v0, "connect()"

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->k()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[CS0] connect() : requestId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", callee = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/base/common/util/CommonUtils;->getCallee([Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->w(ILcom/samsung/android/support/senl/nt/base/common/sync/SesUiListener;)Lcom/samsung/android/app/notes/sync/contentsharing/sessession/i;

    move-result-object p1

    :try_start_0
    iget-object p2, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->j:Lcom/samsung/android/app/notes/sync/contentsharing/sessession/c;

    iget-object v3, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->k:Lcom/samsung/android/sdk/mobileservice/SeMobileServiceSession;

    invoke-virtual {p2, v3}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/c;->b(Lcom/samsung/android/sdk/mobileservice/SeMobileServiceSession;)V

    iget-object p2, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->j:Lcom/samsung/android/app/notes/sync/contentsharing/sessession/c;

    instance-of p2, p2, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/a;

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->k()Ljava/lang/String;

    move-result-object p2

    const-string v3, "[CS0-1] connect() : Service is already connected!"

    invoke-static {p2, v3}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->B()V

    :cond_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->F(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->k()Ljava/lang/String;

    move-result-object p2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[CS0-1] connect() Finish, requestId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/i;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mConnectionCount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/i;->b:I

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", et = "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->k()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CS0-2] connect() Fail, Exception = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->F(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public m(I)V
    .locals 8

    const-string v0, "[CS0-2] connect_Sync() : Fail, Exception = "

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->k()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[CS0] connect_Sync() : requestId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", callee = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/base/common/util/CommonUtils;->getCallee([Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v3}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->w(ILcom/samsung/android/support/senl/nt/base/common/sync/SesUiListener;)Lcom/samsung/android/app/notes/sync/contentsharing/sessession/i;

    move-result-object p1

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->j:Lcom/samsung/android/app/notes/sync/contentsharing/sessession/c;

    iget-object v4, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->k:Lcom/samsung/android/sdk/mobileservice/SeMobileServiceSession;

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/c;->b(Lcom/samsung/android/sdk/mobileservice/SeMobileServiceSession;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    iget-object v3, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->j:Lcom/samsung/android/app/notes/sync/contentsharing/sessession/c;

    instance-of v3, v3, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/a;

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->k()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CS0-1] connect() Finish, Service is already connected, mConnectionCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/i;->b:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->k()Ljava/lang/String;

    move-result-object v3

    const-string v4, "[CS0] connect_Sync() : Wait the connecting"

    invoke-static {v3, v4}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0x64

    if-ge v3, v4, :cond_3

    const-wide/16 v4, 0x1f4

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    iget-object v4, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->j:Lcom/samsung/android/app/notes/sync/contentsharing/sessession/c;

    instance-of v5, v4, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/a;

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->k()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[CS0-1] connect_Sync() Finish to connect : mConnectionCount = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/i;->b:I

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " , et = "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long/2addr v5, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    instance-of v4, v4, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/e;

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->k()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[CS0-2] connect_Sync() Fail, DisConnectedState : et = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v6, v1

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->k()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->k()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[CS0-2] connect_Sync() Fail, et = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/l;

    const-string v0, "Fail to connect SES Session!"

    invoke-direct {p1, v0}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/l;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_1
    move-exception p1

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->k()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/l;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fail to connect SES Session : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/l;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public n(ILcom/samsung/android/support/senl/nt/base/common/sync/SesUiListener;)V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->k()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CS0] disConnect() Start, requestId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->x(ILcom/samsung/android/support/senl/nt/base/common/sync/SesUiListener;)Lcom/samsung/android/app/notes/sync/contentsharing/sessession/i;

    move-result-object p1

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->z()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->j:Lcom/samsung/android/app/notes/sync/contentsharing/sessession/c;

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->k:Lcom/samsung/android/sdk/mobileservice/SeMobileServiceSession;

    invoke-virtual {p2, v0}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/c;->c(Lcom/samsung/android/sdk/mobileservice/SeMobileServiceSession;)V

    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->k()Ljava/lang/String;

    move-result-object p1

    const-string p2, "[CS0-1] disConnect() Finish, no listener!"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->l:Ljava/util/ArrayList;

    monitor-enter p2

    :try_start_0
    iget v0, p1, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/i;->b:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_2
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->k()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[CS0-1] disConnect() Finish, requestId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/i;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mConnectionCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/i;->b:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string p1, "disConnect()"

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->F(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final o()V
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    new-instance v2, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;

    const-string v3, "SesSession-disconnectInternal"

    invoke-direct {v2, v3}, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase$f;

    invoke-direct {v3, p0, v0, v1}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase$f;-><init>(Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;J)V

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final p(ILcom/samsung/android/support/senl/nt/base/common/sync/SesUiListener;)Lcom/samsung/android/app/notes/sync/contentsharing/sessession/i;
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/i;

    iget v3, v2, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/i;->a:I

    if-ne p1, v3, :cond_0

    iget-object v3, v2, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/i;->c:Lcom/samsung/android/support/senl/nt/base/common/sync/SesUiListener;

    if-ne p2, v3, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public q()Lcom/samsung/android/app/notes/sync/contentsharing/sessession/b;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->d:Lcom/samsung/android/app/notes/sync/contentsharing/sessession/b;

    return-object v0
.end method

.method public r()Lcom/samsung/android/app/notes/sync/contentsharing/sessession/e;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->f:Lcom/samsung/android/app/notes/sync/contentsharing/sessession/e;

    return-object v0
.end method

.method public s()Lcom/samsung/android/app/notes/sync/contentsharing/sessession/g;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->i:Lcom/samsung/android/app/notes/sync/contentsharing/sessession/g;

    return-object v0
.end method

.method public t()Lcom/samsung/android/app/notes/sync/contentsharing/sessession/h;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->e:Lcom/samsung/android/app/notes/sync/contentsharing/sessession/h;

    return-object v0
.end method

.method public final u(I)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    const-string p1, "SERVICE_STATUS_BLOCKED_BY_POLICY"

    return-object p1

    :cond_1
    const-string p1, "SERVICE_STATUS_NOT_SUPPORT_SDK_VERSION"

    return-object p1

    :cond_2
    const-string p1, "SERVICE_STATUS_FORCE_UPDATE_REQUIRED"

    return-object p1

    :cond_3
    const-string p1, "SERVICE_STATUS_NOT_SUPPORTED"

    return-object p1

    :cond_4
    const-string p1, "SERVICE_STATUS_OK"

    return-object p1
.end method

.method public v()Lcom/samsung/android/sdk/mobileservice/SeMobileServiceSession;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->j:Lcom/samsung/android/app/notes/sync/contentsharing/sessession/c;

    instance-of v0, v0, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->k:Lcom/samsung/android/sdk/mobileservice/SeMobileServiceSession;

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->k()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CS0] getSession() : Not connected yet <- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->j:Lcom/samsung/android/app/notes/sync/contentsharing/sessession/c;

    invoke-virtual {v2}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/c;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " , callee = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/base/common/util/CommonUtils;->getCallee([Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final w(ILcom/samsung/android/support/senl/nt/base/common/sync/SesUiListener;)Lcom/samsung/android/app/notes/sync/contentsharing/sessession/i;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->l:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->p(ILcom/samsung/android/support/senl/nt/base/common/sync/SesUiListener;)Lcom/samsung/android/app/notes/sync/contentsharing/sessession/i;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/i;

    invoke-direct {v1, p1, p2}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/i;-><init>(ILcom/samsung/android/support/senl/nt/base/common/sync/SesUiListener;)V

    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->l:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget p1, v1, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/i;->b:I

    add-int/lit8 p1, p1, 0x1

    iput p1, v1, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/i;->b:I

    iget-boolean p1, v1, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/i;->d:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->k()Ljava/lang/String;

    move-result-object p1

    const-string p2, "[CS0] handleConnectListener() : Connected state was notified but reset!"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-boolean p1, v1, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/i;->d:Z

    :cond_1
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final x(ILcom/samsung/android/support/senl/nt/base/common/sync/SesUiListener;)Lcom/samsung/android/app/notes/sync/contentsharing/sessession/i;
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->l:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->p(ILcom/samsung/android/support/senl/nt/base/common/sync/SesUiListener;)Lcom/samsung/android/app/notes/sync/contentsharing/sessession/i;

    move-result-object p2

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->k()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[CS0-1] disConnect() : no listener of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget p1, p2, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/i;->b:I

    if-lez p1, :cond_1

    add-int/lit8 p1, p1, -0x1

    iput p1, p2, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/i;->b:I

    :cond_1
    :goto_0
    monitor-exit v0

    return-object p2

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public y()V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->k()Ljava/lang/String;

    move-result-object v0

    const-string v1, "initializeAll()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceSessionFactory;

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->a:Landroid/content/Context;

    new-instance v2, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase$a;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase$a;-><init>(Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;)V

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceSessionFactory;-><init>(Landroid/content/Context;Lcom/samsung/android/sdk/mobileservice/SeMobileServiceSession$ConnectionResultCallback;)V

    const-string v1, "AuthService"

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceSessionFactory;->addService(Ljava/lang/String;)Lcom/samsung/android/sdk/mobileservice/SeMobileServiceSessionFactory;

    move-result-object v0

    const-string v1, "SocialService"

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceSessionFactory;->addService(Ljava/lang/String;)Lcom/samsung/android/sdk/mobileservice/SeMobileServiceSessionFactory;

    move-result-object v0

    const-string v1, "ProfileService"

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceSessionFactory;->addService(Ljava/lang/String;)Lcom/samsung/android/sdk/mobileservice/SeMobileServiceSessionFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceSessionFactory;->setAppId(Ljava/lang/String;)Lcom/samsung/android/sdk/mobileservice/SeMobileServiceSessionFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceSessionFactory;->build()Lcom/samsung/android/sdk/mobileservice/SeMobileServiceSession;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->k:Lcom/samsung/android/sdk/mobileservice/SeMobileServiceSession;

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->H()V

    return-void
.end method

.method public final z()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->l:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->l:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->l:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/i;

    iget v2, v2, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/i;->b:I

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    monitor-exit v0

    return v1

    :cond_1
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
