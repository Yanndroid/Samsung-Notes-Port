.class public Lcom/samsung/android/spr/drawable/document/attribute/impl/SprRadialGradient;
.super Lcom/samsung/android/spr/drawable/document/attribute/impl/SprGradientBase;
.source "SourceFile"


# instance fields
.field public cx:F

.field public cy:F

.field public r:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/spr/drawable/document/attribute/impl/SprGradientBase;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/spr/drawable/document/SprInputStream;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/spr/drawable/document/attribute/impl/SprGradientBase;-><init>()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/spr/drawable/document/attribute/impl/SprRadialGradient;->fromSPR(Lcom/samsung/android/spr/drawable/document/SprInputStream;)V

    return-void
.end method


# virtual methods
.method public fromSPR(Lcom/samsung/android/spr/drawable/document/SprInputStream;)V
    .locals 1

    invoke-virtual {p1}, Lcom/samsung/android/spr/drawable/document/SprInputStream;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/spr/drawable/document/attribute/impl/SprRadialGradient;->cx:F

    invoke-virtual {p1}, Lcom/samsung/android/spr/drawable/document/SprInputStream;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/spr/drawable/document/attribute/impl/SprRadialGradient;->cy:F

    invoke-virtual {p1}, Lcom/samsung/android/spr/drawable/document/SprInputStream;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/spr/drawable/document/attribute/impl/SprRadialGradient;->r:F

    invoke-super {p0, p1}, Lcom/samsung/android/spr/drawable/document/attribute/impl/SprGradientBase;->fromSPR(Lcom/samsung/android/spr/drawable/document/SprInputStream;)V

    return-void
.end method

.method public getSPRSize()I
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/spr/drawable/document/attribute/impl/SprGradientBase;->getSPRSize()I

    move-result v0

    add-int/lit8 v0, v0, 0xc

    return v0
.end method

.method public toSPR(Ljava/io/DataOutputStream;)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/spr/drawable/document/attribute/impl/SprRadialGradient;->cx:F

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v0, p0, Lcom/samsung/android/spr/drawable/document/attribute/impl/SprRadialGradient;->cy:F

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v0, p0, Lcom/samsung/android/spr/drawable/document/attribute/impl/SprRadialGradient;->r:F

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    invoke-super {p0, p1}, Lcom/samsung/android/spr/drawable/document/attribute/impl/SprGradientBase;->toSPR(Ljava/io/DataOutputStream;)V

    return-void
.end method

.method public updateGradient()V
    .locals 15

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/document/attribute/impl/SprGradientBase;->positions:[F

    array-length v1, v0

    add-int/lit8 v2, v1, -0x1

    aget v2, v0, v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    const/4 v2, 0x0

    aget v4, v0, v2

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_1

    add-int/lit8 v1, v1, 0x1

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/spr/drawable/document/attribute/impl/SprGradientBase;->colors:[I

    array-length v6, v0

    if-eq v1, v6, :cond_5

    new-array v6, v1, [I

    new-array v7, v1, [F

    aget v0, v0, v2

    cmpl-float v0, v0, v5

    const/4 v8, 0x1

    if-eqz v0, :cond_2

    aget v0, v4, v2

    aput v0, v6, v2

    aput v5, v7, v2

    move v0, v8

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    iget-object v4, p0, Lcom/samsung/android/spr/drawable/document/attribute/impl/SprGradientBase;->colors:[I

    array-length v5, v4

    if-ge v2, v5, :cond_3

    aget v4, v4, v2

    aput v4, v6, v0

    iget-object v4, p0, Lcom/samsung/android/spr/drawable/document/attribute/impl/SprGradientBase;->positions:[F

    aget v4, v4, v2

    aput v4, v7, v0

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v8

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/spr/drawable/document/attribute/impl/SprGradientBase;->positions:[F

    array-length v2, v0

    sub-int/2addr v2, v8

    aget v2, v0, v2

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_4

    sub-int/2addr v1, v8

    array-length v0, v0

    sub-int/2addr v0, v8

    aget v0, v4, v0

    aput v0, v6, v1

    aput v3, v7, v1

    :cond_4
    move-object v12, v6

    move-object v13, v7

    goto :goto_1

    :cond_5
    move-object v13, v0

    move-object v12, v4

    :goto_1
    new-instance v0, Landroid/graphics/RadialGradient;

    iget v9, p0, Lcom/samsung/android/spr/drawable/document/attribute/impl/SprRadialGradient;->cx:F

    iget v10, p0, Lcom/samsung/android/spr/drawable/document/attribute/impl/SprRadialGradient;->cy:F

    iget v11, p0, Lcom/samsung/android/spr/drawable/document/attribute/impl/SprRadialGradient;->r:F

    sget-object v1, Lcom/samsung/android/spr/drawable/document/attribute/impl/SprGradientBase;->sTileModeArray:[Landroid/graphics/Shader$TileMode;

    iget-byte v2, p0, Lcom/samsung/android/spr/drawable/document/attribute/impl/SprGradientBase;->spreadMode:B

    aget-object v14, v1, v2

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/samsung/android/spr/drawable/document/attribute/impl/SprGradientBase;->shader:Landroid/graphics/Shader;

    iget-object v1, p0, Lcom/samsung/android/spr/drawable/document/attribute/impl/SprGradientBase;->matrix:Landroid/graphics/Matrix;

    if-eqz v1, :cond_6

    invoke-virtual {v0, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    :cond_6
    return-void
.end method
