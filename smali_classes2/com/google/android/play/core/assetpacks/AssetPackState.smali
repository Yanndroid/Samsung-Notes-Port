.class public abstract Lcom/google/android/play/core/assetpacks/AssetPackState;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/os/Bundle;Ljava/lang/String;Lcom/google/android/play/core/assetpacks/bz;Lcom/google/android/play/core/assetpacks/az;)Lcom/google/android/play/core/assetpacks/AssetPackState;
    .locals 10

    const-string v0, "status"

    invoke-static {v0, p1}, Lcom/google/android/play/core/internal/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p3, v0, p1}, Lcom/google/android/play/core/assetpacks/az;->a(ILjava/lang/String;)I

    move-result v2

    const-string p3, "error_code"

    invoke-static {p3, p1}, Lcom/google/android/play/core/internal/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string p3, "bytes_downloaded"

    invoke-static {p3, p1}, Lcom/google/android/play/core/internal/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    const-string/jumbo p3, "total_bytes_to_download"

    invoke-static {p3, p1}, Lcom/google/android/play/core/internal/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {p2, p1}, Lcom/google/android/play/core/assetpacks/bz;->b(Ljava/lang/String;)D

    move-result-wide v8

    move-object v1, p1

    invoke-static/range {v1 .. v9}, Lcom/google/android/play/core/assetpacks/AssetPackState;->a(Ljava/lang/String;IIJJD)Lcom/google/android/play/core/assetpacks/AssetPackState;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;IIJJD)Lcom/google/android/play/core/assetpacks/AssetPackState;
    .locals 10
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Lcom/google/android/play/core/assetpacks/model/AssetPackStatus;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Lcom/google/android/play/core/assetpacks/model/AssetPackErrorCode;
        .end annotation
    .end param

    new-instance v9, Lcom/google/android/play/core/assetpacks/bh;

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    mul-double v0, v0, p7

    invoke-static {v0, v1}, Ljava/lang/Math;->rint(D)D

    move-result-wide v0

    double-to-int v8, v0

    move-object v0, v9

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v0 .. v8}, Lcom/google/android/play/core/assetpacks/bh;-><init>(Ljava/lang/String;IIJJI)V

    return-object v9
.end method


# virtual methods
.method public abstract bytesDownloaded()J
.end method

.method public abstract errorCode()I
    .annotation build Lcom/google/android/play/core/assetpacks/model/AssetPackErrorCode;
    .end annotation
.end method

.method public abstract name()Ljava/lang/String;
.end method

.method public abstract status()I
    .annotation build Lcom/google/android/play/core/assetpacks/model/AssetPackStatus;
    .end annotation
.end method

.method public abstract totalBytesToDownload()J
.end method

.method public abstract transferProgressPercentage()I
.end method
