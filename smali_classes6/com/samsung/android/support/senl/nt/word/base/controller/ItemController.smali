.class public abstract Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<OfficeElement:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final IMAGE_EXTENSION:Ljava/lang/String; = ".png"

.field public static final IMAGE_PREFIX:Ljava/lang/String; = "image"


# instance fields
.field public height:D

.field public isObjectSpan:Z

.field public left:D

.field public mBodyTextContext:Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;

.field public mElement:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TOfficeElement;"
        }
    .end annotation
.end field

.field public mObject:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

.field public mSpenWPage:Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

.field public mView:Lcom/samsung/android/support/senl/nt/word/base/OfficeView;

.field public top:D

.field public width:D


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;Lcom/samsung/android/sdk/pen/document/SpenObjectBase;Lcom/samsung/android/support/senl/nt/word/base/OfficeView;Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;Ljava/lang/Object;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            "Lcom/samsung/android/support/senl/nt/word/base/OfficeView;",
            "Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;",
            "TOfficeElement;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->mBodyTextContext:Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->mObject:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->mView:Lcom/samsung/android/support/senl/nt/word/base/OfficeView;

    iput-object p4, p0, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->mSpenWPage:Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    iput-object p5, p0, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->mElement:Ljava/lang/Object;

    iput-boolean p6, p0, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->isObjectSpan:Z

    return-void
.end method


# virtual methods
.method public calculateSize()V
    .locals 12

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->getObjectRectF()Landroid/graphics/RectF;

    move-result-object v0

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->mView:Lcom/samsung/android/support/senl/nt/word/base/OfficeView;

    instance-of v3, v2, Lcom/samsung/android/support/senl/nt/word/word/WordView;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    iget-object v2, v2, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mDocParams:Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;->getMarginLeft()I

    move-result v2

    :goto_0
    int-to-float v2, v2

    add-float/2addr v1, v2

    float-to-double v1, v1

    iput-wide v1, p0, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->left:D

    iget v1, v0, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->mView:Lcom/samsung/android/support/senl/nt/word/base/OfficeView;

    instance-of v3, v2, Lcom/samsung/android/support/senl/nt/word/word/WordView;

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, v2, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mDocParams:Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;->getMarginTop()I

    move-result v4

    :goto_1
    int-to-float v2, v4

    add-float/2addr v1, v2

    float-to-double v1, v1

    iput-wide v1, p0, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->top:D

    iget v3, v0, Landroid/graphics/RectF;->right:F

    iget v4, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v4

    float-to-double v3, v3

    iput-wide v3, p0, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->width:D

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    iget v0, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v5, v0

    float-to-double v5, v5

    iput-wide v5, p0, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->height:D

    add-double v7, v1, v5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->mView:Lcom/samsung/android/support/senl/nt/word/base/OfficeView;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mDocParams:Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;

    iget v9, v0, Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;->mHeight:I

    int-to-double v10, v9

    cmpl-double v7, v7, v10

    if-lez v7, :cond_2

    int-to-double v7, v9

    sub-double/2addr v7, v1

    div-double/2addr v7, v5

    double-to-float v5, v7

    int-to-double v6, v9

    sub-double/2addr v6, v1

    iput-wide v6, p0, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->height:D

    float-to-double v1, v5

    mul-double/2addr v3, v1

    iput-wide v3, p0, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->width:D

    :cond_2
    iget-wide v1, p0, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->left:D

    iget-wide v3, p0, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->width:D

    add-double v5, v1, v3

    iget v0, v0, Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;->mWidth:I

    int-to-double v7, v0

    cmpl-double v5, v5, v7

    if-lez v5, :cond_3

    int-to-double v5, v0

    sub-double/2addr v5, v1

    div-double/2addr v5, v3

    double-to-float v3, v5

    int-to-double v4, v0

    sub-double/2addr v4, v1

    iput-wide v4, p0, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->width:D

    iget-wide v0, p0, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->height:D

    float-to-double v2, v3

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->height:D

    :cond_3
    iget-wide v0, p0, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->width:D

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->width:D

    iget-wide v0, p0, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->height:D

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->height:D

    return-void
.end method

.method public getNewName(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "image"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ".png"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getObjectRectF()Landroid/graphics/RectF;
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->mObject:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getType()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/word/common/ConvertUtils;->isStrokeType(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->mObject:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getRotation()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->mBodyTextContext:Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->mObject:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->belongsToSpan()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->mBodyTextContext:Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->mObject:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;->getObjectDrawnRect(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)Landroid/graphics/RectF;

    move-result-object v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->mObject:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getRect()Landroid/graphics/RectF;

    move-result-object v0

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->mBodyTextContext:Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->mObject:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->belongsToSpan()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->mBodyTextContext:Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->mObject:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;->getObjectRect(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)Landroid/graphics/RectF;

    move-result-object v0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->mObject:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getDrawnRect()Landroid/graphics/RectF;

    move-result-object v0

    :goto_1
    move-object v6, v0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->mView:Lcom/samsung/android/support/senl/nt/word/base/OfficeView;

    iget-boolean v1, v0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->isContinuousPage:Z

    if-eqz v1, :cond_4

    iget v1, v0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->prevHeight:I

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->mSpenWPage:Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getWidth()I

    move-result v2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->mView:Lcom/samsung/android/support/senl/nt/word/base/OfficeView;

    iget v3, v0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->cropHeight:I

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mDocParams:Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;->getWidth()I

    move-result v4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->mView:Lcom/samsung/android/support/senl/nt/word/base/OfficeView;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mDocParams:Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;->getHeight()I

    move-result v5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->mSpenWPage:Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->hasPDF()Z

    move-result v7

    invoke-static/range {v1 .. v7}, Lcom/samsung/android/support/senl/nt/word/common/ConvertUtils;->convertRectContinuousPage(IIIIILandroid/graphics/RectF;Z)Landroid/graphics/RectF;

    move-result-object v0

    return-object v0

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->mSpenWPage:Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mDocParams:Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;->getWidth()I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/word/base/controller/ItemController;->mView:Lcom/samsung/android/support/senl/nt/word/base/OfficeView;

    iget-object v2, v2, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mDocParams:Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;->getHeight()I

    move-result v2

    invoke-static {v1, v0, v2, v6}, Lcom/samsung/android/support/senl/nt/word/common/ConvertUtils;->convertRectF(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;IILandroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public abstract processItem()V
.end method
