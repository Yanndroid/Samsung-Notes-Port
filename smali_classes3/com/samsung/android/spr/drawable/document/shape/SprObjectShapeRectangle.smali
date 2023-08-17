.class public Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeRectangle;
.super Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;
.source "SourceFile"


# instance fields
.field public bottom:F

.field public left:F

.field public right:F

.field public rx:F

.field public ry:F

.field public top:F


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;-><init>(B)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeRectangle;->left:F

    iput v0, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeRectangle;->top:F

    iput v0, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeRectangle;->right:F

    iput v0, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeRectangle;->bottom:F

    iput v0, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeRectangle;->rx:F

    iput v0, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeRectangle;->ry:F

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 1

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;-><init>(B)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeRectangle;->rx:F

    iput v0, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeRectangle;->ry:F

    iput p1, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeRectangle;->left:F

    iput p2, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeRectangle;->top:F

    iput p3, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeRectangle;->right:F

    iput p4, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeRectangle;->bottom:F

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/spr/drawable/document/SprInputStream;)V
    .locals 1

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;-><init>(B)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeRectangle;->left:F

    iput v0, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeRectangle;->top:F

    iput v0, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeRectangle;->right:F

    iput v0, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeRectangle;->bottom:F

    iput v0, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeRectangle;->rx:F

    iput v0, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeRectangle;->ry:F

    invoke-virtual {p0, p1}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeRectangle;->fromSPR(Lcom/samsung/android/spr/drawable/document/SprInputStream;)V

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

    iget p3, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeRectangle;->left:F

    iget p4, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeRectangle;->top:F

    iget p5, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeRectangle;->right:F

    iget v0, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeRectangle;->bottom:F

    invoke-direct {p1, p3, p4, p5, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p0}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->setShadowLayer()V

    iget p3, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeRectangle;->rx:F

    const/4 p4, 0x0

    cmpl-float p5, p3, p4

    if-nez p5, :cond_3

    iget p5, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeRectangle;->ry:F

    cmpl-float p4, p5, p4

    if-eqz p4, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean p3, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->isVisibleFill:Z

    if-eqz p3, :cond_2

    iget-object p3, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_2
    iget-boolean p3, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->isVisibleStroke:Z

    if-eqz p3, :cond_5

    iget-object p3, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_1

    :cond_3
    :goto_0
    iget-boolean p4, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->isVisibleFill:Z

    if-eqz p4, :cond_4

    iget p4, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeRectangle;->ry:F

    iget-object p5, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1, p3, p4, p5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_4
    iget-boolean p3, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->isVisibleStroke:Z

    if-eqz p3, :cond_5

    iget p3, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeRectangle;->rx:F

    iget p4, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeRectangle;->ry:F

    iget-object p5, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1, p3, p4, p5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->clearShadowLayer()V

    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public fromSPR(Lcom/samsung/android/spr/drawable/document/SprInputStream;)V
    .locals 1

    invoke-virtual {p1}, Lcom/samsung/android/spr/drawable/document/SprInputStream;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeRectangle;->left:F

    invoke-virtual {p1}, Lcom/samsung/android/spr/drawable/document/SprInputStream;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeRectangle;->top:F

    invoke-virtual {p1}, Lcom/samsung/android/spr/drawable/document/SprInputStream;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeRectangle;->right:F

    invoke-virtual {p1}, Lcom/samsung/android/spr/drawable/document/SprInputStream;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeRectangle;->bottom:F

    invoke-virtual {p1}, Lcom/samsung/android/spr/drawable/document/SprInputStream;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeRectangle;->rx:F

    invoke-virtual {p1}, Lcom/samsung/android/spr/drawable/document/SprInputStream;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeRectangle;->ry:F

    invoke-super {p0, p1}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->fromSPR(Lcom/samsung/android/spr/drawable/document/SprInputStream;)V

    return-void
.end method

.method public getSPRSize()I
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->getSPRSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x18

    return v0
.end method

.method public getTotalElementCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getTotalSegmentCount()I
    .locals 2

    iget v0, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeRectangle;->rx:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeRectangle;->ry:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x4

    return v0

    :cond_0
    const/16 v0, 0x8

    return v0
.end method

.method public toSPR(Ljava/io/DataOutputStream;)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeRectangle;->left:F

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v0, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeRectangle;->top:F

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v0, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeRectangle;->right:F

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v0, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeRectangle;->bottom:F

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v0, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeRectangle;->rx:F

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v0, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeRectangle;->ry:F

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    invoke-super {p0, p1}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->toSPR(Ljava/io/DataOutputStream;)V

    return-void
.end method
