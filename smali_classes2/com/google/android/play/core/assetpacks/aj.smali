.class final Lcom/google/android/play/core/assetpacks/aj;
.super Lcom/google/android/play/core/internal/ag;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/google/android/play/core/tasks/i;

.field public final synthetic b:Lcom/google/android/play/core/assetpacks/ar;


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/assetpacks/ar;Lcom/google/android/play/core/tasks/i;Lcom/google/android/play/core/tasks/i;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/aj;->b:Lcom/google/android/play/core/assetpacks/ar;

    iput-object p3, p0, Lcom/google/android/play/core/assetpacks/aj;->a:Lcom/google/android/play/core/tasks/i;

    invoke-direct {p0, p2}, Lcom/google/android/play/core/internal/ag;-><init>(Lcom/google/android/play/core/tasks/i;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/aj;->b:Lcom/google/android/play/core/assetpacks/ar;

    invoke-static {v0}, Lcom/google/android/play/core/assetpacks/ar;->d(Lcom/google/android/play/core/assetpacks/ar;)Lcom/google/android/play/core/internal/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/play/core/internal/ap;->b()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/core/internal/s;

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/aj;->b:Lcom/google/android/play/core/assetpacks/ar;

    invoke-static {v1}, Lcom/google/android/play/core/assetpacks/ar;->a(Lcom/google/android/play/core/assetpacks/ar;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/google/android/play/core/assetpacks/ar;->c()Landroid/os/Bundle;

    move-result-object v2

    new-instance v3, Lcom/google/android/play/core/assetpacks/an;

    iget-object v4, p0, Lcom/google/android/play/core/assetpacks/aj;->b:Lcom/google/android/play/core/assetpacks/ar;

    iget-object v5, p0, Lcom/google/android/play/core/assetpacks/aj;->a:Lcom/google/android/play/core/tasks/i;

    invoke-direct {v3, v4, v5}, Lcom/google/android/play/core/assetpacks/an;-><init>(Lcom/google/android/play/core/assetpacks/ar;Lcom/google/android/play/core/tasks/i;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/play/core/internal/s;->b(Ljava/lang/String;Landroid/os/Bundle;Lcom/google/android/play/core/internal/u;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/google/android/play/core/assetpacks/ar;->b()Lcom/google/android/play/core/internal/af;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "keepAlive"

    invoke-virtual {v1, v0, v3, v2}, Lcom/google/android/play/core/internal/af;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
