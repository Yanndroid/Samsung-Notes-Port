.class public Ls2/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La2/d$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls2/a;->k()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ld1/b;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ls2/a;


# direct methods
.method public constructor <init>(Ls2/a;Ljava/lang/String;Ld1/b;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ls2/a$b;->d:Ls2/a;

    iput-object p2, p0, Ls2/a$b;->a:Ljava/lang/String;

    iput-object p3, p0, Ls2/a$b;->b:Ld1/b;

    iput-object p4, p0, Ls2/a$b;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 4

    const-string v0, "SyncOldNote$SyncCategory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResponse - uploadFile = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_1

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object p1

    invoke-virtual {p1}, Lx/e;->h()Lb0/a;

    move-result-object p1

    invoke-interface {p1}, Lb0/a;->synchronizeCategory()Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v0

    invoke-virtual {v0}, Lx/e;->h()Lb0/a;

    move-result-object v0

    iget-object v1, p0, Ls2/a$b;->d:Ls2/a;

    invoke-static {v1}, Ls2/a;->a(Ls2/a;)Lt2/b;

    move-result-object v1

    invoke-virtual {v1}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Ls2/a$b;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lb0/a;->getCategoryServerTimestamp(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    iget-object v2, p0, Ls2/a$b;->b:Ld1/b;

    invoke-virtual {v2}, Ld1/b;->c()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v0

    invoke-virtual {v0}, Lx/e;->h()Lb0/a;

    move-result-object v0

    iget-object v1, p0, Ls2/a$b;->d:Ls2/a;

    invoke-static {v1}, Ls2/a;->a(Ls2/a;)Lt2/b;

    move-result-object v1

    invoke-virtual {v1}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Ls2/a$b;->a:Ljava/lang/String;

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v3

    invoke-virtual {v3}, Lx/e;->m()Lb0/b;

    move-result-object v3

    invoke-interface {v3}, Lb0/b;->getSdocContractNo()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lb0/a;->setCategoryDirty(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Ls2/a$b;->d:Ls2/a;

    invoke-static {p1}, Ls2/a;->a(Ls2/a;)Lt2/b;

    move-result-object p1

    invoke-virtual {p1}, Lt2/b;->I()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Ls2/a$b;->d:Ls2/a;

    invoke-static {p1}, Ls2/a;->a(Ls2/a;)Lt2/b;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lt2/b;->V(Z)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    :goto_0
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Ls2/a$b;->c:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "SyncOldNote$SyncCategory"

    const-string v0, "Failed to delete json!"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method
