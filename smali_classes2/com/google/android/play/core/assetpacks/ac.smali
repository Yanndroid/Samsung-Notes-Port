.class final Lcom/google/android/play/core/assetpacks/ac;
.super Lcom/google/android/play/core/internal/ag;
.source "SourceFile"


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Lcom/google/android/play/core/tasks/i;

.field public final synthetic c:Lcom/google/android/play/core/assetpacks/ar;


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/assetpacks/ar;Lcom/google/android/play/core/tasks/i;Ljava/util/List;Lcom/google/android/play/core/tasks/i;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/ac;->c:Lcom/google/android/play/core/assetpacks/ar;

    iput-object p3, p0, Lcom/google/android/play/core/assetpacks/ac;->a:Ljava/util/List;

    iput-object p4, p0, Lcom/google/android/play/core/assetpacks/ac;->b:Lcom/google/android/play/core/tasks/i;

    invoke-direct {p0, p2}, Lcom/google/android/play/core/internal/ag;-><init>(Lcom/google/android/play/core/tasks/i;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 8

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/ac;->a:Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/play/core/assetpacks/ar;->a(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/ac;->c:Lcom/google/android/play/core/assetpacks/ar;

    invoke-static {v1}, Lcom/google/android/play/core/assetpacks/ar;->c(Lcom/google/android/play/core/assetpacks/ar;)Lcom/google/android/play/core/internal/ap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/play/core/internal/ap;->b()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/google/android/play/core/internal/s;

    iget-object v2, p0, Lcom/google/android/play/core/assetpacks/ac;->c:Lcom/google/android/play/core/assetpacks/ar;

    invoke-static {v2}, Lcom/google/android/play/core/assetpacks/ar;->a(Lcom/google/android/play/core/assetpacks/ar;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/google/android/play/core/assetpacks/ar;->c()Landroid/os/Bundle;

    move-result-object v3

    new-instance v4, Lcom/google/android/play/core/assetpacks/ak;

    iget-object v5, p0, Lcom/google/android/play/core/assetpacks/ac;->c:Lcom/google/android/play/core/assetpacks/ar;

    iget-object v6, p0, Lcom/google/android/play/core/assetpacks/ac;->b:Lcom/google/android/play/core/tasks/i;

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Lcom/google/android/play/core/assetpacks/ak;-><init>(Lcom/google/android/play/core/assetpacks/ar;Lcom/google/android/play/core/tasks/i;[B)V

    invoke-interface {v1, v2, v0, v3, v4}, Lcom/google/android/play/core/internal/s;->b(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;Lcom/google/android/play/core/internal/u;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/google/android/play/core/assetpacks/ar;->b()Lcom/google/android/play/core/internal/af;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/play/core/assetpacks/ac;->a:Ljava/util/List;

    aput-object v4, v2, v3

    const-string v3, "cancelDownloads(%s)"

    invoke-virtual {v1, v0, v3, v2}, Lcom/google/android/play/core/internal/af;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
