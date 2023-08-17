.class public Lcom/google/android/play/core/assetpacks/AssetPackException;
.super Lcom/google/android/play/core/tasks/j;
.source "SourceFile"


# instance fields
.field private final a:I
    .annotation build Lcom/google/android/play/core/assetpacks/model/AssetPackErrorCode;
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 3
    .param p1    # I
        .annotation build Lcom/google/android/play/core/assetpacks/model/AssetPackErrorCode;
        .end annotation
    .end param

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1}, Lcom/google/android/play/core/assetpacks/model/a;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "Asset Pack Download Error(%d): %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/play/core/tasks/j;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iput p1, p0, Lcom/google/android/play/core/assetpacks/AssetPackException;->a:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "errorCode should not be 0."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1
    .annotation build Lcom/google/android/play/core/assetpacks/model/AssetPackErrorCode;
    .end annotation

    iget v0, p0, Lcom/google/android/play/core/assetpacks/AssetPackException;->a:I

    return v0
.end method
