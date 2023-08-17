.class public Ls2/i$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La2/d$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls2/i;->q()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/samsung/android/app/notes/sync/db/o;

.field public final synthetic b:Ld1/h;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ls2/i;


# direct methods
.method public constructor <init>(Ls2/i;Lcom/samsung/android/app/notes/sync/db/o;Ld1/h;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ls2/i$b;->d:Ls2/i;

    iput-object p2, p0, Ls2/i$b;->a:Lcom/samsung/android/app/notes/sync/db/o;

    iput-object p3, p0, Ls2/i$b;->b:Ld1/h;

    iput-object p4, p0, Ls2/i$b;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onResponse - uploadFile = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SyncOldNote$SyncSDoc"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_1

    iget-object p1, p0, Ls2/i$b;->a:Lcom/samsung/android/app/notes/sync/db/o;

    invoke-virtual {p1}, Lcom/samsung/android/app/notes/sync/db/o;->j()J

    move-result-wide v0

    iget-object p1, p0, Ls2/i$b;->b:Ld1/h;

    invoke-virtual {p1}, Ld1/h;->p()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-gtz p1, :cond_0

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object p1

    invoke-virtual {p1}, Lx/e;->m()Lb0/b;

    move-result-object p1

    iget-object v0, p0, Ls2/i$b;->d:Ls2/i;

    invoke-static {v0}, Ls2/i;->b(Ls2/i;)Lt2/b;

    move-result-object v0

    invoke-virtual {v0}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Ls2/i$b;->c:Ljava/lang/String;

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v2

    invoke-virtual {v2}, Lx/e;->m()Lb0/b;

    move-result-object v2

    invoke-interface {v2}, Lb0/b;->getSdocContractNo()I

    move-result v2

    invoke-interface {p1, v0, v1, v2}, Lb0/b;->setNoteDirty(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_0
    iget-object p1, p0, Ls2/i$b;->d:Ls2/i;

    invoke-static {p1}, Ls2/i;->b(Ls2/i;)Lt2/b;

    move-result-object p1

    invoke-virtual {p1}, Lt2/b;->I()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Ls2/i$b;->d:Ls2/i;

    invoke-static {p1}, Ls2/i;->b(Ls2/i;)Lt2/b;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lt2/b;->V(Z)V

    :cond_1
    return-void
.end method
