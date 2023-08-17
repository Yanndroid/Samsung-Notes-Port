.class public abstract Ly1/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Landroid/content/Context;

.field public b:Lc0/b;

.field public c:Le0/a;

.field public d:Lc1/a;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/notes/sync/infos/ModelType;ILjava/lang/String;Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lc1/a;

    invoke-direct {v0, p1, p2, p3, p4}, Lc1/a;-><init>(Lcom/samsung/android/app/notes/sync/infos/ModelType;ILjava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Ly1/a;->d:Lc1/a;

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object p1

    invoke-virtual {p1}, Lx/e;->a()Lx/a;

    move-result-object p1

    invoke-interface {p1}, Lx/a;->getAppContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Ly1/a;->a:Landroid/content/Context;

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object p1

    invoke-virtual {p1}, Lx/e;->g()Lc0/b;

    move-result-object p1

    iput-object p1, p0, Ly1/a;->b:Lc0/b;

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object p1

    invoke-virtual {p1}, Lx/e;->p()Le0/a;

    move-result-object p1

    iput-object p1, p0, Ly1/a;->c:Le0/a;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Ly1/a;->c:Le0/a;

    iget-object v1, p0, Ly1/a;->a:Landroid/content/Context;

    iget-object v2, p0, Ly1/a;->d:Lc1/a;

    invoke-interface {v0, v1, v2}, Le0/a;->addErrorTipCard(Landroid/content/Context;Lc1/a;)V

    return-void
.end method

.method public b()Lc1/a;
    .locals 1

    iget-object v0, p0, Ly1/a;->d:Lc1/a;

    return-object v0
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Ly1/a;->d:Lc1/a;

    invoke-virtual {v0}, Lc1/b;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ly1/a;->d:Lc1/a;

    invoke-virtual {v0}, Lc1/b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ly1/a;->d:Lc1/a;

    invoke-virtual {v0}, Lc1/b;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ModelError"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method
