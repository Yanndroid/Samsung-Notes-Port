.class final Lcom/google/android/play/core/assetpacks/ab;
.super Lcom/google/android/play/core/internal/ag;
.source "SourceFile"


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Ljava/util/Map;

.field public final synthetic c:Lcom/google/android/play/core/tasks/i;

.field public final synthetic d:Ljava/util/List;

.field public final synthetic e:Lcom/google/android/play/core/assetpacks/ar;


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/assetpacks/ar;Lcom/google/android/play/core/tasks/i;Ljava/util/List;Ljava/util/Map;Lcom/google/android/play/core/tasks/i;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/ab;->e:Lcom/google/android/play/core/assetpacks/ar;

    iput-object p3, p0, Lcom/google/android/play/core/assetpacks/ab;->a:Ljava/util/List;

    iput-object p4, p0, Lcom/google/android/play/core/assetpacks/ab;->b:Ljava/util/Map;

    iput-object p5, p0, Lcom/google/android/play/core/assetpacks/ab;->c:Lcom/google/android/play/core/tasks/i;

    iput-object p6, p0, Lcom/google/android/play/core/assetpacks/ab;->d:Ljava/util/List;

    invoke-direct {p0, p2}, Lcom/google/android/play/core/internal/ag;-><init>(Lcom/google/android/play/core/tasks/i;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 9

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/ab;->a:Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/play/core/assetpacks/ar;->a(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/ab;->e:Lcom/google/android/play/core/assetpacks/ar;

    invoke-static {v1}, Lcom/google/android/play/core/assetpacks/ar;->c(Lcom/google/android/play/core/assetpacks/ar;)Lcom/google/android/play/core/internal/ap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/play/core/internal/ap;->b()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/google/android/play/core/internal/s;

    iget-object v2, p0, Lcom/google/android/play/core/assetpacks/ab;->e:Lcom/google/android/play/core/assetpacks/ar;

    invoke-static {v2}, Lcom/google/android/play/core/assetpacks/ar;->a(Lcom/google/android/play/core/assetpacks/ar;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/play/core/assetpacks/ab;->b:Ljava/util/Map;

    invoke-static {v3}, Lcom/google/android/play/core/assetpacks/ar;->b(Ljava/util/Map;)Landroid/os/Bundle;

    move-result-object v3

    new-instance v4, Lcom/google/android/play/core/assetpacks/aq;

    iget-object v5, p0, Lcom/google/android/play/core/assetpacks/ab;->e:Lcom/google/android/play/core/assetpacks/ar;

    iget-object v6, p0, Lcom/google/android/play/core/assetpacks/ab;->c:Lcom/google/android/play/core/tasks/i;

    invoke-static {v5}, Lcom/google/android/play/core/assetpacks/ar;->b(Lcom/google/android/play/core/assetpacks/ar;)Lcom/google/android/play/core/assetpacks/bz;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/play/core/assetpacks/ab;->d:Ljava/util/List;

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/google/android/play/core/assetpacks/aq;-><init>(Lcom/google/android/play/core/assetpacks/ar;Lcom/google/android/play/core/tasks/i;Lcom/google/android/play/core/assetpacks/bz;Ljava/util/List;)V

    invoke-interface {v1, v2, v0, v3, v4}, Lcom/google/android/play/core/internal/s;->a(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;Lcom/google/android/play/core/internal/u;)V
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

    iget-object v4, p0, Lcom/google/android/play/core/assetpacks/ab;->a:Ljava/util/List;

    aput-object v4, v2, v3

    const-string v3, "startDownload(%s)"

    invoke-virtual {v1, v0, v3, v2}, Lcom/google/android/play/core/internal/af;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/ab;->c:Lcom/google/android/play/core/tasks/i;

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/google/android/play/core/tasks/i;->b(Ljava/lang/Exception;)V

    return-void
.end method
