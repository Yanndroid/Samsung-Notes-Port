.class public Lcom/samsung/android/spr/drawable/document/fileAttribute/SprFileAttributeNinePatch;
.super Lcom/samsung/android/spr/drawable/document/fileAttribute/SprFileAttributeBase;
.source "SourceFile"


# instance fields
.field public xEnd:[F

.field public xSize:I

.field public xStart:[F

.field public yEnd:[F

.field public ySize:I

.field public yStart:[F


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/spr/drawable/document/fileAttribute/SprFileAttributeBase;-><init>(B)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/spr/drawable/document/fileAttribute/SprFileAttributeNinePatch;->xSize:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/spr/drawable/document/fileAttribute/SprFileAttributeNinePatch;->xStart:[F

    iput-object v1, p0, Lcom/samsung/android/spr/drawable/document/fileAttribute/SprFileAttributeNinePatch;->xEnd:[F

    iput v0, p0, Lcom/samsung/android/spr/drawable/document/fileAttribute/SprFileAttributeNinePatch;->ySize:I

    iput-object v1, p0, Lcom/samsung/android/spr/drawable/document/fileAttribute/SprFileAttributeNinePatch;->yStart:[F

    iput-object v1, p0, Lcom/samsung/android/spr/drawable/document/fileAttribute/SprFileAttributeNinePatch;->yEnd:[F

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/spr/drawable/document/SprInputStream;)V
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/spr/drawable/document/fileAttribute/SprFileAttributeBase;-><init>(B)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/spr/drawable/document/fileAttribute/SprFileAttributeNinePatch;->xSize:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/spr/drawable/document/fileAttribute/SprFileAttributeNinePatch;->xStart:[F

    iput-object v1, p0, Lcom/samsung/android/spr/drawable/document/fileAttribute/SprFileAttributeNinePatch;->xEnd:[F

    iput v0, p0, Lcom/samsung/android/spr/drawable/document/fileAttribute/SprFileAttributeNinePatch;->ySize:I

    iput-object v1, p0, Lcom/samsung/android/spr/drawable/document/fileAttribute/SprFileAttributeNinePatch;->yStart:[F

    iput-object v1, p0, Lcom/samsung/android/spr/drawable/document/fileAttribute/SprFileAttributeNinePatch;->yEnd:[F

    invoke-virtual {p0, p1}, Lcom/samsung/android/spr/drawable/document/fileAttribute/SprFileAttributeNinePatch;->fromSPR(Lcom/samsung/android/spr/drawable/document/SprInputStream;)V

    return-void
.end method


# virtual methods
.method public fromSPR(Lcom/samsung/android/spr/drawable/document/SprInputStream;)V
    .locals 4

    invoke-virtual {p1}, Lcom/samsung/android/spr/drawable/document/SprInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/spr/drawable/document/fileAttribute/SprFileAttributeNinePatch;->xSize:I

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/samsung/android/spr/drawable/document/fileAttribute/SprFileAttributeNinePatch;->xStart:[F

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/samsung/android/spr/drawable/document/fileAttribute/SprFileAttributeNinePatch;->xEnd:[F

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lcom/samsung/android/spr/drawable/document/fileAttribute/SprFileAttributeNinePatch;->xSize:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/spr/drawable/document/fileAttribute/SprFileAttributeNinePatch;->xStart:[F

    invoke-virtual {p1}, Lcom/samsung/android/spr/drawable/document/SprInputStream;->readFloat()F

    move-result v3

    aput v3, v2, v1

    iget-object v2, p0, Lcom/samsung/android/spr/drawable/document/fileAttribute/SprFileAttributeNinePatch;->xEnd:[F

    invoke-virtual {p1}, Lcom/samsung/android/spr/drawable/document/SprInputStream;->readFloat()F

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/spr/drawable/document/SprInputStream;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/spr/drawable/document/fileAttribute/SprFileAttributeNinePatch;->ySize:I

    new-array v2, v1, [F

    iput-object v2, p0, Lcom/samsung/android/spr/drawable/document/fileAttribute/SprFileAttributeNinePatch;->yStart:[F

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/android/spr/drawable/document/fileAttribute/SprFileAttributeNinePatch;->yEnd:[F

    :goto_1
    iget v1, p0, Lcom/samsung/android/spr/drawable/document/fileAttribute/SprFileAttributeNinePatch;->ySize:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/spr/drawable/document/fileAttribute/SprFileAttributeNinePatch;->yStart:[F

    invoke-virtual {p1}, Lcom/samsung/android/spr/drawable/document/SprInputStream;->readFloat()F

    move-result v2

    aput v2, v1, v0

    iget-object v1, p0, Lcom/samsung/android/spr/drawable/document/fileAttribute/SprFileAttributeNinePatch;->yEnd:[F

    invoke-virtual {p1}, Lcom/samsung/android/spr/drawable/document/SprInputStream;->readFloat()F

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public getSPRSize()I
    .locals 2

    iget v0, p0, Lcom/samsung/android/spr/drawable/document/fileAttribute/SprFileAttributeNinePatch;->xSize:I

    mul-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x4

    iget v1, p0, Lcom/samsung/android/spr/drawable/document/fileAttribute/SprFileAttributeNinePatch;->ySize:I

    mul-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    return v0
.end method

.method public isValid()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/spr/drawable/document/fileAttribute/SprFileAttributeNinePatch;->xSize:I

    iget v1, p0, Lcom/samsung/android/spr/drawable/document/fileAttribute/SprFileAttributeNinePatch;->ySize:I

    mul-int/2addr v0, v1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toSPR(Ljava/io/DataOutputStream;)V
    .locals 3

    iget v0, p0, Lcom/samsung/android/spr/drawable/document/fileAttribute/SprFileAttributeNinePatch;->xSize:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lcom/samsung/android/spr/drawable/document/fileAttribute/SprFileAttributeNinePatch;->xSize:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/spr/drawable/document/fileAttribute/SprFileAttributeNinePatch;->xStart:[F

    aget v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget-object v2, p0, Lcom/samsung/android/spr/drawable/document/fileAttribute/SprFileAttributeNinePatch;->xEnd:[F

    aget v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/samsung/android/spr/drawable/document/fileAttribute/SprFileAttributeNinePatch;->ySize:I

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    :goto_1
    iget v1, p0, Lcom/samsung/android/spr/drawable/document/fileAttribute/SprFileAttributeNinePatch;->ySize:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/spr/drawable/document/fileAttribute/SprFileAttributeNinePatch;->yStart:[F

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget-object v1, p0, Lcom/samsung/android/spr/drawable/document/fileAttribute/SprFileAttributeNinePatch;->yEnd:[F

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeFloat(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method
