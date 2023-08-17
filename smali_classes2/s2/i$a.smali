.class public Ls2/i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La2/d$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls2/i;->e()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ls2/i;


# direct methods
.method public constructor <init>(Ls2/i;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ls2/i$a;->b:Ls2/i;

    iput-object p2, p0, Ls2/i$a;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onResponse - deleteFile = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SyncOldNote$SyncSDoc"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_2

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object p1

    invoke-virtual {p1}, Lx/e;->m()Lb0/b;

    move-result-object p1

    iget-object v0, p0, Ls2/i$a;->b:Ls2/i;

    invoke-static {v0}, Ls2/i;->b(Ls2/i;)Lt2/b;

    move-result-object v0

    invoke-virtual {v0}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Ls2/i$a;->a:Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "OldLocal"

    invoke-interface {p1, v0, v1, v2, v3}, Lb0/b;->deleteSDocSync(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)V

    iget-object p1, p0, Ls2/i$a;->b:Ls2/i;

    invoke-static {p1}, Ls2/i;->b(Ls2/i;)Lt2/b;

    move-result-object p1

    invoke-virtual {p1}, Lt2/b;->G()Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    iget-object p1, p0, Ls2/i$a;->b:Ls2/i;

    invoke-static {p1}, Ls2/i;->b(Ls2/i;)Lt2/b;

    move-result-object p1

    invoke-virtual {p1, v0}, Lt2/b;->T(Z)V

    :cond_0
    iget-object p1, p0, Ls2/i$a;->b:Ls2/i;

    invoke-static {p1}, Ls2/i;->b(Ls2/i;)Lt2/b;

    move-result-object p1

    invoke-virtual {p1}, Lt2/b;->H()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Ls2/i$a;->b:Ls2/i;

    invoke-static {p1}, Ls2/i;->b(Ls2/i;)Lt2/b;

    move-result-object p1

    invoke-virtual {p1, v0}, Lt2/b;->U(Z)V

    :cond_1
    iget-object p1, p0, Ls2/i$a;->b:Ls2/i;

    invoke-static {p1}, Ls2/i;->b(Ls2/i;)Lt2/b;

    move-result-object p1

    invoke-virtual {p1}, Lt2/b;->I()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Ls2/i$a;->b:Ls2/i;

    invoke-static {p1}, Ls2/i;->b(Ls2/i;)Lt2/b;

    move-result-object p1

    invoke-virtual {p1, v0}, Lt2/b;->V(Z)V

    :cond_2
    return-void
.end method
