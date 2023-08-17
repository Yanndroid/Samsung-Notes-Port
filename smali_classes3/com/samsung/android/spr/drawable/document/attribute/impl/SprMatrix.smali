.class public Lcom/samsung/android/spr/drawable/document/attribute/impl/SprMatrix;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromSPR(Lcom/samsung/android/spr/drawable/document/SprInputStream;)Landroid/graphics/Matrix;
    .locals 8

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/spr/drawable/document/SprInputStream;->readFloat()F

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/spr/drawable/document/SprInputStream;->readFloat()F

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/spr/drawable/document/SprInputStream;->readFloat()F

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/spr/drawable/document/SprInputStream;->readFloat()F

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/android/spr/drawable/document/SprInputStream;->readFloat()F

    move-result v5

    invoke-virtual {p0}, Lcom/samsung/android/spr/drawable/document/SprInputStream;->readFloat()F

    move-result p0

    const/16 v6, 0x9

    new-array v6, v6, [F

    const/4 v7, 0x0

    aput v1, v6, v7

    const/4 v1, 0x1

    aput v2, v6, v1

    const/4 v1, 0x2

    aput v3, v6, v1

    const/4 v1, 0x3

    aput v4, v6, v1

    const/4 v1, 0x4

    aput v5, v6, v1

    const/4 v1, 0x5

    aput p0, v6, v1

    const/4 p0, 0x6

    const/4 v1, 0x0

    aput v1, v6, p0

    const/4 p0, 0x7

    aput v1, v6, p0

    const/16 p0, 0x8

    const/high16 v1, 0x3f800000    # 1.0f

    aput v1, v6, p0

    invoke-virtual {v0, v6}, Landroid/graphics/Matrix;->setValues([F)V

    return-object v0
.end method

.method public static toSPR(Ljava/io/DataOutputStream;Landroid/graphics/Matrix;)V
    .locals 1

    if-nez p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->writeFloat(F)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->writeFloat(F)V

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x9

    new-array v0, v0, [F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    const/4 p1, 0x0

    aget p1, v0, p1

    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->writeFloat(F)V

    const/4 p1, 0x1

    aget p1, v0, p1

    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->writeFloat(F)V

    const/4 p1, 0x2

    aget p1, v0, p1

    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->writeFloat(F)V

    const/4 p1, 0x3

    aget p1, v0, p1

    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->writeFloat(F)V

    const/4 p1, 0x4

    aget p1, v0, p1

    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->writeFloat(F)V

    const/4 p1, 0x5

    aget p1, v0, p1

    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->writeFloat(F)V

    :goto_0
    return-void
.end method
