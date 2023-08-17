.class final Lcom/google/android/play/core/assetpacks/bs;
.super Lcom/google/android/play/core/assetpacks/cr;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:J

.field public final c:Ljava/lang/String;

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:J

.field public final h:I
    .annotation build Lcom/google/android/play/core/assetpacks/model/AssetPackStatus;
    .end annotation
.end field

.field public final i:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(ILjava/lang/String;IJLjava/lang/String;IIIJILjava/io/InputStream;)V
    .locals 0
    .param p12    # I
        .annotation build Lcom/google/android/play/core/assetpacks/model/AssetPackStatus;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Lcom/google/android/play/core/assetpacks/cr;-><init>(ILjava/lang/String;)V

    iput p3, p0, Lcom/google/android/play/core/assetpacks/bs;->a:I

    iput-wide p4, p0, Lcom/google/android/play/core/assetpacks/bs;->b:J

    iput-object p6, p0, Lcom/google/android/play/core/assetpacks/bs;->c:Ljava/lang/String;

    iput p7, p0, Lcom/google/android/play/core/assetpacks/bs;->d:I

    iput p8, p0, Lcom/google/android/play/core/assetpacks/bs;->e:I

    iput p9, p0, Lcom/google/android/play/core/assetpacks/bs;->f:I

    iput-wide p10, p0, Lcom/google/android/play/core/assetpacks/bs;->g:J

    iput p12, p0, Lcom/google/android/play/core/assetpacks/bs;->h:I

    iput-object p13, p0, Lcom/google/android/play/core/assetpacks/bs;->i:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 3

    iget v0, p0, Lcom/google/android/play/core/assetpacks/bs;->e:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget v2, p0, Lcom/google/android/play/core/assetpacks/bs;->f:I

    if-ne v0, v2, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
