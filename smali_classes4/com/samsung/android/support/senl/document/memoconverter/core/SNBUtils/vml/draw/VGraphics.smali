.class public Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/VGraphics;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mCanvas:Landroid/graphics/Canvas;

.field private mFillColor:Ljava/lang/String;

.field private mIsArrowEd:Z

.field private mIsArrowSt:Z

.field private mIsLineObject:Z

.field private mMetaDataInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPaint:Landroid/graphics/Paint;

.field private mPicture:Landroid/graphics/Picture;

.field private mPossibleFill:Z

.field private mShapeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataShape;",
            ">;"
        }
    .end annotation
.end field

.field private mShapeTypeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataShapeType;",
            ">;"
        }
    .end annotation
.end field

.field private mStrokeColor:Ljava/lang/String;

.field private mStrokeSize:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x40800000    # 4.0f

    iput v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/VGraphics;->mStrokeSize:F

    const-string v0, "#FF000000"

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/VGraphics;->mStrokeColor:Ljava/lang/String;

    const-string v0, "#00000000"

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/VGraphics;->mFillColor:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/VGraphics;->mPossibleFill:Z

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/VGraphics;->mIsLineObject:Z

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/VGraphics;->mIsArrowSt:Z

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/VGraphics;->mIsArrowEd:Z

    return-void
.end method

.method private makePictureSub(Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataPredefinedShape;Landroid/graphics/RectF;FLjava/lang/String;Ljava/lang/String;)Landroid/graphics/Picture;
    .locals 3

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataPredefinedShape;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "arc"

    invoke-virtual {v1, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataPredefinedShape;->getObject()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/predefined/VPredefinedBase;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/predefined/VPredefinedArc;

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/VGraphics;->setPossibleFill(Z)V

    invoke-static {p1, p2, p3, p4, p5}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/predefined/VDrawArc;->createPicture(Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/predefined/VPredefinedArc;Landroid/graphics/RectF;FLjava/lang/String;Ljava/lang/String;)Landroid/graphics/Picture;

    move-result-object p1

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataPredefinedShape;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v2, "curve"

    invoke-virtual {v2, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataPredefinedShape;->getObject()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/predefined/VPredefinedBase;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/predefined/VPredefinedCurve;

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/VGraphics;->setPossibleFill(Z)V

    invoke-static {p1, p2, p3, p4, p5}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/predefined/VDrawCurve;->createPicture(Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/predefined/VPredefinedCurve;Landroid/graphics/RectF;FLjava/lang/String;Ljava/lang/String;)Landroid/graphics/Picture;

    move-result-object p1

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataPredefinedShape;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v2, "image"

    invoke-virtual {v2, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataPredefinedShape;->getObject()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/predefined/VPredefinedBase;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/predefined/VPredefinedImage;

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/VGraphics;->setPossibleFill(Z)V

    invoke-static {p1, p2, p3, p4, p5}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/predefined/VDrawImage;->createPicture(Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/predefined/VPredefinedImage;Landroid/graphics/RectF;FLjava/lang/String;Ljava/lang/String;)Landroid/graphics/Picture;

    move-result-object p1

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataPredefinedShape;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v2, "line"

    invoke-virtual {v2, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataPredefinedShape;->getObject()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/predefined/VPredefinedBase;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/predefined/VPredefinedLine;

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/VGraphics;->setPossibleFill(Z)V

    invoke-static {p1, p2, p3, p4, p5}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/predefined/VDrawLine;->createPicture(Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/predefined/VPredefinedLine;Landroid/graphics/RectF;FLjava/lang/String;Ljava/lang/String;)Landroid/graphics/Picture;

    move-result-object p1

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataPredefinedShape;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v2, "polyline"

    invoke-virtual {v2, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataPredefinedShape;->getObject()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/predefined/VPredefinedBase;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/predefined/VPredefinedPolyLine;

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/VGraphics;->setPossibleFill(Z)V

    invoke-static {p1, p2, p3, p4, p5}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/predefined/VDrawPolyLine;->createPicture(Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/predefined/VPredefinedPolyLine;Landroid/graphics/RectF;FLjava/lang/String;Ljava/lang/String;)Landroid/graphics/Picture;

    move-result-object p1

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataPredefinedShape;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "rect"

    invoke-virtual {v1, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_5

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataPredefinedShape;->getObject()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/predefined/VPredefinedBase;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/predefined/VPredefinedRect;

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/VGraphics;->setPossibleFill(Z)V

    invoke-static {p1, p2, p3, p4, p5}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/predefined/VDrawRect;->createPicture(Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/predefined/VPredefinedRect;Landroid/graphics/RectF;FLjava/lang/String;Ljava/lang/String;)Landroid/graphics/Picture;

    move-result-object p1

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataPredefinedShape;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v2, "roundrect"

    invoke-virtual {v2, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataPredefinedShape;->getObject()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/predefined/VPredefinedBase;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/predefined/VPredefinedRoundRect;

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/VGraphics;->setPossibleFill(Z)V

    invoke-static {p1, p2, p3, p4, p5}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/predefined/VDrawRoundRect;->createPicture(Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/predefined/VPredefinedRoundRect;Landroid/graphics/RectF;FLjava/lang/String;Ljava/lang/String;)Landroid/graphics/Picture;

    move-result-object p1

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataPredefinedShape;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v2, "oval"

    invoke-virtual {v2, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataPredefinedShape;->getObject()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/predefined/VPredefinedBase;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/predefined/VPredefinedOval;

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/VGraphics;->setPossibleFill(Z)V

    invoke-static {p1, p2, p3, p4, p5}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/predefined/VDrawOval;->createPicture(Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/predefined/VPredefinedOval;Landroid/graphics/RectF;FLjava/lang/String;Ljava/lang/String;)Landroid/graphics/Picture;

    move-result-object p1

    goto :goto_0

    :cond_7
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method


# virtual methods
.method public getCanvas()Landroid/graphics/Canvas;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/VGraphics;->mCanvas:Landroid/graphics/Canvas;

    return-object v0
.end method

.method public getFillColor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/VGraphics;->mFillColor:Ljava/lang/String;

    return-object v0
.end method

.method public getIsArrowEd()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/VGraphics;->mIsArrowEd:Z

    return v0
.end method

.method public getIsArrowSt()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/VGraphics;->mIsArrowSt:Z

    return v0
.end method

.method public getIsLineObject()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/VGraphics;->mIsLineObject:Z

    return v0
.end method

.method public getLinePathMargin()I
    .locals 1

    const/16 v0, 0x64

    return v0
.end method

.method public getMetaDataInfos()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/VGraphics;->mMetaDataInfos:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPaint()Landroid/graphics/Paint;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/VGraphics;->mPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getPicture()Landroid/graphics/Picture;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/VGraphics;->mPicture:Landroid/graphics/Picture;

    return-object v0
.end method

.method public getPictureDrawable()Landroid/graphics/drawable/PictureDrawable;
    .locals 2

    new-instance v0, Landroid/graphics/drawable/PictureDrawable;

    iget-object v1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/VGraphics;->mPicture:Landroid/graphics/Picture;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/PictureDrawable;-><init>(Landroid/graphics/Picture;)V

    return-object v0
.end method

.method public getPossibleFill()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/VGraphics;->mPossibleFill:Z

    return v0
.end method

.method public getStrokeColor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/VGraphics;->mStrokeColor:Ljava/lang/String;

    return-object v0
.end method

.method public getStrokeColorInt()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/VGraphics;->mStrokeColor:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/util/VUtilString;->parseColor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getStrokeSize()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/VGraphics;->mStrokeSize:F

    return v0
.end method

.method public makeLineBitmap(FFFF)Landroid/graphics/Bitmap;
    .locals 10

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/VGraphics;->getLinePathMargin()I

    move-result v0

    int-to-float v5, v0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/VGraphics;->getStrokeSize()F

    move-result v6

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/VGraphics;->getStrokeColorInt()I

    move-result v7

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/VGraphics;->getIsArrowSt()Z

    move-result v8

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/VGraphics;->getIsArrowEd()Z

    move-result v9

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v1 .. v9}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/path/VDrawLinePath;->makeLineBitmap(FFFFFFIZZ)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public makePictureDrawable(Landroid/graphics/RectF;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/VGraphics;->getStrokeSize()F

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/VGraphics;->getStrokeColor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/VGraphics;->getFillColor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/VGraphics;->makePictureDrawable(Landroid/graphics/RectF;FLjava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public makePictureDrawable(Landroid/graphics/RectF;FLjava/lang/String;Ljava/lang/String;)Z
    .locals 21

    move-object/from16 v6, p0

    iget-object v0, v6, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/VGraphics;->mMetaDataInfos:Ljava/util/ArrayList;

    const/4 v7, 0x0

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_7

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v6, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/VGraphics;->mShapeTypeList:Ljava/util/ArrayList;

    iget-object v0, v6, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/VGraphics;->mMetaDataInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataInfo;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataInfo;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "shapetype"

    invoke-virtual {v3, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v6, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/VGraphics;->mShapeTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataInfo;->getObject()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataBase;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataShapeType;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v6, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/VGraphics;->mShapeList:Ljava/util/ArrayList;

    iget-object v0, v6, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/VGraphics;->mMetaDataInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v8, "shape"

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataInfo;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataInfo;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, v6, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/VGraphics;->mShapeList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataInfo;->getObject()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataBase;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataShape;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    iget-object v0, v6, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/VGraphics;->mShapeList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-le v0, v10, :cond_5

    new-instance v0, Landroid/graphics/Picture;

    invoke-direct {v0}, Landroid/graphics/Picture;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->width()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->height()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Picture;->beginRecording(II)Landroid/graphics/Canvas;

    move-result-object v1

    move-object/from16 v19, v1

    goto :goto_2

    :cond_5
    move-object v0, v9

    move-object/from16 v19, v0

    :goto_2
    iget-object v1, v6, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/VGraphics;->mMetaDataInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_6
    :goto_3
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataInfo;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataInfo;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_c

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataInfo;->getObject()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataBase;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataShape;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataShape;->getType()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eq v3, v10, :cond_8

    iget-object v3, v6, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/VGraphics;->mShapeTypeList:Ljava/util/ArrayList;

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_8

    iget-object v3, v6, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/VGraphics;->mShapeTypeList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v4, v9

    :cond_7
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataShapeType;

    invoke-virtual {v5}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataShapeType;->getCoreAttrs()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeCore;

    move-result-object v11

    invoke-virtual {v11}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeCore;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    move-object v4, v5

    goto :goto_4

    :cond_8
    move-object v4, v9

    :cond_9
    if-eqz v4, :cond_a

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataShapeType;->getPossibleFill()Z

    move-result v2

    goto :goto_5

    :cond_a
    invoke-virtual {v1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataShape;->getPossibleFill()Z

    move-result v2

    :goto_5
    invoke-virtual {v6, v2}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/VGraphics;->setPossibleFill(Z)V

    iget-object v2, v6, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/VGraphics;->mShapeList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v10, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/VGraphics;->getIsLineObject()Z

    move-result v18

    move-object/from16 v11, v19

    move-object v12, v1

    move-object/from16 v13, p1

    move/from16 v14, p2

    move-object/from16 v15, p3

    move-object/from16 v16, p4

    move-object/from16 v17, v4

    invoke-static/range {v11 .. v18}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/shape/VDrawShape;->createMultiPicture(Landroid/graphics/Canvas;Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataShape;Landroid/graphics/RectF;FLjava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataShapeType;Z)V

    goto/16 :goto_3

    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/VGraphics;->getIsLineObject()Z

    move-result v17

    move-object v11, v1

    move-object/from16 v12, p1

    move/from16 v13, p2

    move-object/from16 v14, p3

    move-object/from16 v15, p4

    move-object/from16 v16, v4

    invoke-static/range {v11 .. v17}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/shape/VDrawShape;->createPicture(Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataShape;Landroid/graphics/RectF;FLjava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataShapeType;Z)Landroid/graphics/Picture;

    move-result-object v0

    :goto_6
    invoke-virtual {v6, v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/VGraphics;->setPicture(Landroid/graphics/Picture;)V

    goto/16 :goto_3

    :cond_c
    invoke-virtual {v1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataInfo;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "predefinedshape"

    invoke-virtual {v3, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataInfo;->getObject()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataBase;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataPredefinedShape;

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/VGraphics;->makePictureSub(Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataPredefinedShape;Landroid/graphics/RectF;FLjava/lang/String;Ljava/lang/String;)Landroid/graphics/Picture;

    move-result-object v0

    goto :goto_6

    :cond_d
    iget-object v1, v6, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/VGraphics;->mShapeList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v10, :cond_e

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/graphics/Picture;->endRecording()V

    invoke-virtual {v6, v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/VGraphics;->setPicture(Landroid/graphics/Picture;)V

    :cond_e
    :goto_7
    return v7
.end method

.method public setCanvas(Landroid/graphics/Canvas;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/VGraphics;->mCanvas:Landroid/graphics/Canvas;

    return-void
.end method

.method public setFillColor(I)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "%08x%"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/VGraphics;->mFillColor:Ljava/lang/String;

    return-void
.end method

.method public setFillColor(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/VGraphics;->mFillColor:Ljava/lang/String;

    return-void
.end method

.method public setIsArrowEd(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/VGraphics;->mIsArrowEd:Z

    return-void
.end method

.method public setIsArrowSt(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/VGraphics;->mIsArrowSt:Z

    return-void
.end method

.method public setIsLineObject(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/VGraphics;->mIsLineObject:Z

    return-void
.end method

.method public setMetaDataInfos(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/VGraphics;->mMetaDataInfos:Ljava/util/ArrayList;

    return-void
.end method

.method public setPaint(Landroid/graphics/Paint;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/VGraphics;->mPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public setPicture(Landroid/graphics/Picture;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/VGraphics;->mPicture:Landroid/graphics/Picture;

    return-void
.end method

.method public setPossibleFill(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/VGraphics;->mPossibleFill:Z

    return-void
.end method

.method public setStrokeColor(I)V
    .locals 2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/VGraphics;->mStrokeColor:Ljava/lang/String;

    return-void
.end method

.method public setStrokeColor(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/VGraphics;->mStrokeColor:Ljava/lang/String;

    return-void
.end method

.method public setStrokeSize(F)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/draw/VGraphics;->mStrokeSize:F

    return-void
.end method
