.class public Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeUse;
.super Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;
.source "SourceFile"


# instance fields
.field public link:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x11

    invoke-direct {p0, v0}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;-><init>(B)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeUse;->link:I

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/spr/drawable/document/SprInputStream;)V
    .locals 1

    const/16 v0, 0x11

    invoke-direct {p0, v0}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;-><init>(B)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeUse;->link:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeUse;->fromSPR(Lcom/samsung/android/spr/drawable/document/SprInputStream;)V

    return-void
.end method


# virtual methods
.method public draw(Lcom/samsung/android/spr/drawable/document/SprDocument;Landroid/graphics/Canvas;FFF)V
    .locals 7

    const/16 v0, 0x1f

    invoke-virtual {p2, v0}, Landroid/graphics/Canvas;->save(I)I

    iget v0, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->alpha:F

    mul-float v6, p5, v0

    iget-object p5, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    move-result p5

    if-lez p5, :cond_0

    invoke-virtual {p0, p1, p2, v6}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->applyAttribute(Lcom/samsung/android/spr/drawable/document/SprDocument;Landroid/graphics/Canvas;F)V

    :cond_0
    iget p5, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeUse;->link:I

    invoke-virtual {p1, p5}, Lcom/samsung/android/spr/drawable/document/SprDocument;->getReference(I)Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;

    move-result-object v1

    if-eqz v1, :cond_1

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->draw(Lcom/samsung/android/spr/drawable/document/SprDocument;Landroid/graphics/Canvas;FFF)V

    :cond_1
    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public fromSPR(Lcom/samsung/android/spr/drawable/document/SprInputStream;)V
    .locals 1

    invoke-virtual {p1}, Lcom/samsung/android/spr/drawable/document/SprInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeUse;->link:I

    invoke-super {p0, p1}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->fromSPR(Lcom/samsung/android/spr/drawable/document/SprInputStream;)V

    return-void
.end method

.method public getSPRSize()I
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->getSPRSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public getTotalElementCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getTotalSegmentCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public preDraw(Lcom/samsung/android/spr/drawable/document/SprDocument;Landroid/graphics/Paint;Landroid/graphics/Paint;ZZLcom/samsung/android/spr/drawable/document/attribute/SprAttributeShadow;)V
    .locals 8

    iget v0, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeUse;->link:I

    invoke-virtual {p1, v0}, Lcom/samsung/android/spr/drawable/document/SprDocument;->getReference(I)Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->preDraw(Lcom/samsung/android/spr/drawable/document/SprDocument;Landroid/graphics/Paint;Landroid/graphics/Paint;ZZLcom/samsung/android/spr/drawable/document/attribute/SprAttributeShadow;)V

    :cond_0
    return-void
.end method

.method public toSPR(Ljava/io/DataOutputStream;)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeUse;->link:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-super {p0, p1}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->toSPR(Ljava/io/DataOutputStream;)V

    return-void
.end method
