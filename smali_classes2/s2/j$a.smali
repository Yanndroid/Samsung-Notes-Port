.class public Ls2/j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La2/d$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls2/j;->d()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ls2/j;


# direct methods
.method public constructor <init>(Ls2/j;)V
    .locals 0

    iput-object p1, p0, Ls2/j$a;->a:Ls2/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onResponse - LOCK_SETTINGS_BACKUP_FILE_NAME = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SyncOldNote$SyncServerPassword"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    iget-object p1, p0, Ls2/j$a;->a:Ls2/j;

    invoke-static {p1}, Ls2/j;->a(Ls2/j;)Lt2/b;

    move-result-object p1

    invoke-virtual {p1}, Lt2/b;->I()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Ls2/j$a;->a:Ls2/j;

    invoke-static {p1}, Ls2/j;->a(Ls2/j;)Lt2/b;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lt2/b;->V(Z)V

    :cond_0
    return-void
.end method
