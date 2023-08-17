.class public Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeEllipse;
.super Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;
.source "SourceFile"


# instance fields
.field public bottom:F

.field public left:F

.field public right:F

.field public top:F


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;-><init>(B)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeEllipse;->left:F

    iput v0, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeEllipse;->top:F

    iput v0, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeEllipse;->right:F

    iput v0, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeEllipse;->bottom:F

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/spr/drawable/document/SprInputStream;)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;-><init>(B)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeEllipse;->left:F

    iput v0, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeEllipse;->top:F

    iput v0, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeEllipse;->right:F

    iput v0, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeEllipse;->bottom:F

    invoke-virtual {p0, p1}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeEllipse;->fromSPR(Lcom/samsung/android/spr/drawable/document/SprInputStream;)V

    return-void
.end method


# virtual methods
.method public draw(Lcom/samsung/android/spr/drawable/document/SprDocument;Landroid/graphics/Canvas;FFF)V
    .locals 1

    const/16 p3, 0x1f

    invoke-virtual {p2, p3}, Landroid/graphics/Canvas;->save(I)I

    iget p3, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->alpha:F

    mul-float/2addr p5, p3

    iget-object p3, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-lez p3, :cond_0

    invoke-virtual {p0, p1, p2, p5}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->applyAttribute(Lcom/samsung/android/spr/drawable/document/SprDocument;Landroid/graphics/Canvas;F)V

    :cond_0
    new-instance p1, Landroid/graphics/RectF;

    iget p3, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeEllipse;->left:F

    iget p4, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeEllipse;->top:F

    iget p5, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeEllipse;->right:F

    iget v0, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeEllipse;->bottom:F

    invoke-direct {p1, p3, p4, p5, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p0}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->setShadowLayer()V

    iget-boolean p3, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->isVisibleFill:Z

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1, p3}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_1
    iget-boolean p3, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->isVisibleStroke:Z

    if-eqz p3, :cond_2

    iget-object p3, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1, p3}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->clearShadowLayer()V

    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public fromSPR(Lcom/samsung/android/spr/drawable/document/SprInputStream;)V
    .locals 1

    invoke-virtual {p1}, Lcom/samsung/android/spr/drawable/document/SprInputStream;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeEllipse;->left:F

    invoke-virtual {p1}, Lcom/samsung/android/spr/drawable/document/SprInputStream;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeEllipse;->top:F

    invoke-virtual {p1}, Lcom/samsung/android/spr/drawable/document/SprInputStream;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeEllipse;->right:F

    invoke-virtual {p1}, Lcom/samsung/android/spr/drawable/document/SprInputStream;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeEllipse;->bottom:F

    invoke-super {p0, p1}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->fromSPR(Lcom/samsung/android/spr/drawable/document/SprInputStream;)V

    return-void
.end method

.method public getSPRSize()I
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->getSPRSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x10

    return v0
.end method

.method public getTotalElementCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getTotalSegmentCount()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public toSPR(Ljava/io/DataOutputStream;)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeEllipse;->left:F

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v0, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeEllipse;->top:F

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v0, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeEllipse;->right:F

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v0, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeEllipse;->bottom:F

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    invoke-super {p0, p1}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->toSPR(Ljava/io/DataOutputStream;)V

    return-void
.end method
