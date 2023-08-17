.class final Lcom/google/android/play/core/assetpacks/aa;
.super Lcom/google/android/play/core/internal/ag;
.source "SourceFile"


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/google/android/play/core/tasks/i;

.field public final synthetic c:Lcom/google/android/play/core/assetpacks/ar;


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/assetpacks/ar;Lcom/google/android/play/core/tasks/i;Ljava/lang/String;Lcom/google/android/play/core/tasks/i;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/aa;->c:Lcom/google/android/play/core/assetpacks/ar;

    iput-object p3, p0, Lcom/google/android/play/core/assetpacks/aa;->a:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/play/core/assetpacks/aa;->b:Lcom/google/android/play/core/tasks/i;

    invoke-direct {p0, p2}, Lcom/google/android/play/core/internal/ag;-><init>(Lcom/google/android/play/core/tasks/i;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 9

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/aa;->c:Lcom/google/android/play/core/assetpacks/ar;

    invoke-static {v1}, Lcom/google/android/play/core/assetpacks/ar;->c(Lcom/google/android/play/core/assetpacks/ar;)Lcom/google/android/play/core/internal/ap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/play/core/internal/ap;->b()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/google/android/play/core/internal/s;

    iget-object v2, p0, Lcom/google/android/play/core/assetpacks/aa;->c:Lcom/google/android/play/core/assetpacks/ar;

    invoke-static {v2}, Lcom/google/android/play/core/assetpacks/ar;->a(Lcom/google/android/play/core/assetpacks/ar;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/play/core/assetpacks/aa;->a:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/google/android/play/core/assetpacks/ar;->b(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    invoke-static {}, Lcom/google/android/play/core/assetpacks/ar;->c()Landroid/os/Bundle;

    move-result-object v4

    new-instance v5, Lcom/google/android/play/core/assetpacks/ak;

    iget-object v6, p0, Lcom/google/android/play/core/assetpacks/aa;->c:Lcom/google/android/play/core/assetpacks/ar;

    iget-object v7, p0, Lcom/google/android/play/core/assetpacks/aa;->b:Lcom/google/android/play/core/tasks/i;

    const/4 v8, 0x0

    invoke-direct {v5, v6, v7, v8}, Lcom/google/android/play/core/assetpacks/ak;-><init>(Lcom/google/android/play/core/assetpacks/ar;Lcom/google/android/play/core/tasks/i;[S)V

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/google/android/play/core/internal/s;->e(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Lcom/google/android/play/core/internal/u;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    invoke-static {}, Lcom/google/android/play/core/assetpacks/ar;->b()Lcom/google/android/play/core/internal/af;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/play/core/assetpacks/aa;->a:Ljava/lang/String;

    aput-object v4, v3, v0

    const-string v0, "removePack(%s)"

    invoke-virtual {v2, v1, v0, v3}, Lcom/google/android/play/core/internal/af;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
