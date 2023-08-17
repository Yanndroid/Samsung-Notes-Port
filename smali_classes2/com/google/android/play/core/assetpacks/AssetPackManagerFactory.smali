.class public Lcom/google/android/play/core/assetpacks/AssetPackManagerFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/google/android/play/core/assetpacks/AssetPackManager;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-class v0, Lcom/google/android/play/core/assetpacks/AssetPackManagerFactory;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lcom/google/android/play/core/assetpacks/db;->a(Landroid/content/Context;)Lcom/google/android/play/core/assetpacks/a;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/android/play/core/assetpacks/a;->a()Lcom/google/android/play/core/assetpacks/AssetPackManager;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
