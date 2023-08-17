.class public Lcom/samsung/android/app/notes/sync/contentsharing/controllers/ShareOldServiceController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/notes/sync/contentsharing/controllers/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/notes/sync/contentsharing/controllers/ShareOldServiceController$h;
    }
.end annotation


# instance fields
.field public a:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v0

    invoke-virtual {v0}, Lx/e;->a()Lx/a;

    move-result-object v0

    invoke-interface {v0}, Lx/a;->getAppContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/controllers/ShareOldServiceController;->a:Landroid/content/Context;

    return-void
.end method

.method public static bridge synthetic n(Lcom/samsung/android/app/notes/sync/contentsharing/controllers/ShareOldServiceController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/controllers/ShareOldServiceController;->a:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/util/List;)V
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

    new-instance v0, Lcom/samsung/android/app/notes/sync/contentsharing/controllers/ShareOldServiceController$c;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/app/notes/sync/contentsharing/controllers/ShareOldServiceController$c;-><init>(Lcom/samsung/android/app/notes/sync/contentsharing/controllers/ShareOldServiceController;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/notes/sync/contentsharing/controllers/ShareOldServiceController;->o(Lcom/samsung/android/app/notes/sync/contentsharing/controllers/ShareOldServiceController$h;)Z

    return-void
.end method

.method public b(Lr/a;)V
    .locals 0

    invoke-static {p1}, Lcom/samsung/android/app/notes/sync/contentsharing/sharelogic/b;->m(Lr/a;)V

    return-void
.end method

.method public c(Lr/a;)V
    .locals 0

    invoke-static {p1}, Lcom/samsung/android/app/notes/sync/contentsharing/sharelogic/b;->g(Lr/a;)V

    return-void
.end method

.method public d()Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/app/notes/sync/contentsharing/sharelogic/a;->i()Z

    move-result v0

    return v0
.end method

.method public e(Lr/a;)V
    .locals 0

    invoke-static {p1}, Lcom/samsung/android/app/notes/sync/contentsharing/sharelogic/a;->m(Lr/a;)V

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 2

    const-string v0, "ShareOldServiceController"

    const-string v1, "requestShare()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/app/notes/sync/contentsharing/sharelogic/a;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "Cancel share because of deletion."

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/app/notes/sync/contentsharing/controllers/ShareOldServiceController$f;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/notes/sync/contentsharing/controllers/ShareOldServiceController$f;-><init>(Lcom/samsung/android/app/notes/sync/contentsharing/controllers/ShareOldServiceController;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/notes/sync/contentsharing/controllers/ShareOldServiceController;->o(Lcom/samsung/android/app/notes/sync/contentsharing/controllers/ShareOldServiceController$h;)Z

    return-void
.end method

.method public g()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/notes/sync/contentsharing/controllers/ShareOldServiceController$d;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/notes/sync/contentsharing/controllers/ShareOldServiceController$d;-><init>(Lcom/samsung/android/app/notes/sync/contentsharing/controllers/ShareOldServiceController;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/notes/sync/contentsharing/controllers/ShareOldServiceController;->o(Lcom/samsung/android/app/notes/sync/contentsharing/controllers/ShareOldServiceController$h;)Z

    return-void
.end method

.method public h()V
    .locals 2

    const-string v0, "ShareOldServiceController"

    const-string v1, "stopDelete()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/app/notes/sync/contentsharing/controllers/ShareOldServiceController$e;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/notes/sync/contentsharing/controllers/ShareOldServiceController$e;-><init>(Lcom/samsung/android/app/notes/sync/contentsharing/controllers/ShareOldServiceController;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/notes/sync/contentsharing/controllers/ShareOldServiceController;->o(Lcom/samsung/android/app/notes/sync/contentsharing/controllers/ShareOldServiceController$h;)Z

    return-void
.end method

.method public i(Ljava/lang/String;Ljava/util/List;)V
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

    new-instance v0, Lcom/samsung/android/app/notes/sync/contentsharing/controllers/ShareOldServiceController$a;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/app/notes/sync/contentsharing/controllers/ShareOldServiceController$a;-><init>(Lcom/samsung/android/app/notes/sync/contentsharing/controllers/ShareOldServiceController;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/notes/sync/contentsharing/controllers/ShareOldServiceController;->o(Lcom/samsung/android/app/notes/sync/contentsharing/controllers/ShareOldServiceController$h;)Z

    return-void
.end method

.method public j()V
    .locals 2

    const-string v0, "ShareOldServiceController"

    const-string v1, "stopImport()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/app/notes/sync/contentsharing/controllers/ShareOldServiceController$b;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/notes/sync/contentsharing/controllers/ShareOldServiceController$b;-><init>(Lcom/samsung/android/app/notes/sync/contentsharing/controllers/ShareOldServiceController;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/notes/sync/contentsharing/controllers/ShareOldServiceController;->o(Lcom/samsung/android/app/notes/sync/contentsharing/controllers/ShareOldServiceController$h;)Z

    return-void
.end method

.method public k(Ljava/lang/String;Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestShareNow() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShareOldServiceController"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/app/notes/sync/contentsharing/sharelogic/a;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "Cancel share because of deletion."

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/app/notes/sync/contentsharing/controllers/ShareOldServiceController$g;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/app/notes/sync/contentsharing/controllers/ShareOldServiceController$g;-><init>(Lcom/samsung/android/app/notes/sync/contentsharing/controllers/ShareOldServiceController;Ljava/lang/String;Z)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/notes/sync/contentsharing/controllers/ShareOldServiceController;->o(Lcom/samsung/android/app/notes/sync/contentsharing/controllers/ShareOldServiceController$h;)Z

    return-void
.end method

.method public l(Lr/a;)V
    .locals 0

    invoke-static {p1}, Lcom/samsung/android/app/notes/sync/contentsharing/sharelogic/a;->g(Lr/a;)V

    return-void
.end method

.method public m()Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/app/notes/sync/contentsharing/sharelogic/b;->i()Z

    move-result v0

    return v0
.end method

.method public final o(Lcom/samsung/android/app/notes/sync/contentsharing/controllers/ShareOldServiceController$h;)Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/controllers/ShareOldServiceController;->a:Landroid/content/Context;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/contentsharing/controllers/ShareOldServiceController;->a:Landroid/content/Context;

    const-class v3, Lcom/samsung/android/app/notes/sync/contentsharing/service/ShareOldService;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "ShareOldServiceController"

    const-string v3, "bindService"

    invoke-static {v2, v3}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/contentsharing/controllers/ShareOldServiceController;->a:Landroid/content/Context;

    new-instance v3, Lcom/samsung/android/app/notes/sync/contentsharing/controllers/ShareOldServiceController$9;

    invoke-direct {v3, p0, p1}, Lcom/samsung/android/app/notes/sync/contentsharing/controllers/ShareOldServiceController$9;-><init>(Lcom/samsung/android/app/notes/sync/contentsharing/controllers/ShareOldServiceController;Lcom/samsung/android/app/notes/sync/contentsharing/controllers/ShareOldServiceController$h;)V

    invoke-virtual {v2, v0, v3, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    :cond_0
    return v1
.end method
