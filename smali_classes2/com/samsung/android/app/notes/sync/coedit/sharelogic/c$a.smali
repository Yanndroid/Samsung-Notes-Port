.class public Lcom/samsung/android/app/notes/sync/coedit/sharelogic/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/notes/sync/coedit/sharecore/strategy/CoeditShareBaseTask$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/notes/sync/coedit/sharelogic/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/samsung/android/app/notes/sync/coedit/sharelogic/c;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/notes/sync/coedit/sharelogic/c;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/c$a;->a:Lcom/samsung/android/app/notes/sync/coedit/sharelogic/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/c$a;->a:Lcom/samsung/android/app/notes/sync/coedit/sharelogic/c;

    invoke-static {v0}, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/c;->e(Lcom/samsung/android/app/notes/sync/coedit/sharelogic/c;)V

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/c;->g()Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/c;->g()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/nt/base/common/sync/SharedFileUpdatedListener;

    invoke-interface {v2, p1}, Lcom/samsung/android/support/senl/nt/base/common/sync/SharedFileUpdatedListener;->onSharedFileUpdated(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public e()V
    .locals 2

    const-string v0, "CoeditShareLogic"

    const-string v1, "onShareStart()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public f(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ly1/a;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/c$a;->a:Lcom/samsung/android/app/notes/sync/coedit/sharelogic/c;

    invoke-static {v0, p1}, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/c;->f(Lcom/samsung/android/app/notes/sync/coedit/sharelogic/c;Ljava/util/ArrayList;)V

    return-void
.end method
