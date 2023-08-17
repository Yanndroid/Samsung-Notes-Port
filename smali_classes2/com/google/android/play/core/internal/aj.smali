.class final Lcom/google/android/play/core/internal/aj;
.super Lcom/google/android/play/core/internal/ag;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/google/android/play/core/internal/ap;


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/internal/ap;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/play/core/internal/aj;->a:Lcom/google/android/play/core/internal/ap;

    invoke-direct {p0}, Lcom/google/android/play/core/internal/ag;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/play/core/internal/aj;->a:Lcom/google/android/play/core/internal/ap;

    invoke-static {v0}, Lcom/google/android/play/core/internal/ap;->a(Lcom/google/android/play/core/internal/ap;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/play/core/internal/aj;->a:Lcom/google/android/play/core/internal/ap;

    invoke-static {v0}, Lcom/google/android/play/core/internal/ap;->b(Lcom/google/android/play/core/internal/ap;)Lcom/google/android/play/core/internal/af;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Unbind from service."

    invoke-virtual {v0, v2, v1}, Lcom/google/android/play/core/internal/af;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/play/core/internal/aj;->a:Lcom/google/android/play/core/internal/ap;

    invoke-static {v0}, Lcom/google/android/play/core/internal/ap;->d(Lcom/google/android/play/core/internal/ap;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/play/core/internal/aj;->a:Lcom/google/android/play/core/internal/ap;

    invoke-static {v1}, Lcom/google/android/play/core/internal/ap;->c(Lcom/google/android/play/core/internal/ap;)Landroid/content/ServiceConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v0, p0, Lcom/google/android/play/core/internal/aj;->a:Lcom/google/android/play/core/internal/ap;

    invoke-static {v0}, Lcom/google/android/play/core/internal/ap;->j(Lcom/google/android/play/core/internal/ap;)V

    iget-object v0, p0, Lcom/google/android/play/core/internal/aj;->a:Lcom/google/android/play/core/internal/ap;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/play/core/internal/ap;->a(Lcom/google/android/play/core/internal/ap;Landroid/os/IInterface;)V

    iget-object v0, p0, Lcom/google/android/play/core/internal/aj;->a:Lcom/google/android/play/core/internal/ap;

    invoke-static {v0}, Lcom/google/android/play/core/internal/ap;->i(Lcom/google/android/play/core/internal/ap;)V

    :cond_0
    return-void
.end method
