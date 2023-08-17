.class Lcom/samsung/android/sdk/pen/setting/BrushMovableChildStrategy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveStrategy;
.implements Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveAniStrategy;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "LongLogTag"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BrushMovableChildStrategy"


# instance fields
.field private mAlignMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveAlign;",
            ">;"
        }
    .end annotation
.end field

.field private mAniPivotX:F

.field private mAniPivotY:F

.field private mAniRotate:F

.field private mAniTargetX:F

.field private mAniTargetY:F

.field private mColorFlipDegree:I

.field private mColorFlipDir:I

.field private mNotSupportAlign:Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveAlign;

.field private mRotateDegree:I

.field private mSelectorDegree:I

.field private mSelectorFlip:I

.field private mValidAni:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/BrushMovableChildStrategy;->mRotateDegree:I

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/BrushMovableChildStrategy;->mAlignMap:Ljava/util/HashMap;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveAlignFactory;->createBrushMoveAlign(I)Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveAlign;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/BrushMovableChildStrategy;->mAlignMap:Ljava/util/HashMap;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveAlignFactory;->createBrushMoveAlign(I)Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveAlign;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/BrushMovableChildStrategy;->mAlignMap:Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveAlignFactory;->createBrushMoveAlign(I)Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveAlign;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveAlignFactory;->createBrushMoveAlign(I)Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveAlign;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/BrushMovableChildStrategy;->mNotSupportAlign:Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveAlign;

    return-void
.end method

.method private getAlignObject(I)Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveAlign;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/BrushMovableChildStrategy;->mAlignMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveAlign;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/BrushMovableChildStrategy;->mNotSupportAlign:Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveAlign;

    :goto_0
    return-object p1
.end method

.method private getViewRect(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 5

    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method private setCenterToTarget(Landroid/view/View;Landroid/graphics/Rect;I)Z
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setCenterToTarget() rotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " aniView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " target="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BrushMovableChildStrategy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/BrushMovableChildStrategy;->mAniPivotX:F

    iput v2, p0, Lcom/samsung/android/sdk/pen/setting/BrushMovableChildStrategy;->mAniPivotY:F

    int-to-float p3, p3

    iput p3, p0, Lcom/samsung/android/sdk/pen/setting/BrushMovableChildStrategy;->mAniRotate:F

    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result p3

    if-nez p3, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr p1, v0

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/BrushMovableChildStrategy;->mAniTargetX:F

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    move-result p3

    int-to-float p3, p3

    int-to-float p1, p1

    sub-float/2addr p1, v0

    sub-float/2addr p3, p1

    iput p3, p0, Lcom/samsung/android/sdk/pen/setting/BrushMovableChildStrategy;->mAniTargetX:F

    :goto_0
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerY()I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr p1, v2

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/BrushMovableChildStrategy;->mAniTargetY:F

    iget p1, p0, Lcom/samsung/android/sdk/pen/setting/BrushMovableChildStrategy;->mAniRotate:F

    const/high16 p2, -0x40800000    # -1.0f

    cmpl-float p1, p1, p2

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/setting/BrushMovableChildStrategy;->mValidAni:Z

    return p1
.end method


# virtual methods
.method public getAniPivotX()F
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/BrushMovableChildStrategy;->mValidAni:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/BrushMovableChildStrategy;->mAniPivotX:F

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getAniPivotY()F
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/BrushMovableChildStrategy;->mValidAni:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/BrushMovableChildStrategy;->mAniPivotY:F

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getAniRotation()F
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/BrushMovableChildStrategy;->mValidAni:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/BrushMovableChildStrategy;->mAniRotate:F

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getAniTransX()F
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/BrushMovableChildStrategy;->mValidAni:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/BrushMovableChildStrategy;->mAniTargetX:F

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getAniTransY()F
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/BrushMovableChildStrategy;->mValidAni:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/BrushMovableChildStrategy;->mAniTargetY:F

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getColorFlip(II)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/BrushMovableChildStrategy;->getAlignObject(I)Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveAlign;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveAlign;->getColorFlip(I)I

    move-result p1

    return p1
.end method

.method public getColorFlipDegree()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/BrushMovableChildStrategy;->mColorFlipDegree:I

    return v0
.end method

.method public getColorFlipDir()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/BrushMovableChildStrategy;->mColorFlipDir:I

    return v0
.end method

.method public getPenDegree(III)F
    .locals 0

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/pen/setting/BrushMovableChildStrategy;->getAlignObject(I)Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveAlign;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveAlign;->getPenAngle(I)I

    move-result p1

    int-to-float p1, p1

    return p1
.end method

.method public getRotateDegree()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/BrushMovableChildStrategy;->mRotateDegree:I

    return v0
.end method

.method public getSelectorDegree(III)F
    .locals 0

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/pen/setting/BrushMovableChildStrategy;->getAlignObject(I)Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveAlign;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveAlign;->getSelectorAngle(I)I

    move-result p1

    int-to-float p1, p1

    iget p2, p0, Lcom/samsung/android/sdk/pen/setting/BrushMovableChildStrategy;->mRotateDegree:I

    if-gtz p2, :cond_0

    return p1

    :cond_0
    int-to-float p2, p2

    add-float/2addr p1, p2

    const/high16 p2, 0x43b40000    # 360.0f

    rem-float/2addr p1, p2

    return p1
.end method

.method public getSelectorFlipDegree()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/BrushMovableChildStrategy;->mSelectorDegree:I

    return v0
.end method

.method public getSelectorFlipDir()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/BrushMovableChildStrategy;->mSelectorFlip:I

    return v0
.end method

.method public moveView(Landroid/view/View;Landroid/util/Size;II)I
    .locals 1
    .param p2    # Landroid/util/Size;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p3}, Lcom/samsung/android/sdk/pen/setting/BrushMovableChildStrategy;->getAlignObject(I)Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveAlign;

    move-result-object p3

    invoke-virtual {p3, p1, p2, p4}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveAlign;->moveView(Landroid/view/View;Landroid/util/Size;I)V

    invoke-virtual {p3}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveAlign;->getMoveOrientation()I

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public moveView(Landroid/view/View;Landroid/view/View;II)I
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "movePenView() guideView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " targetView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " align="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " direction = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BrushMovableChildStrategy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/util/Size;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    invoke-direct {v0, v1, p1}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {p0, p2, v0, p3, p4}, Lcom/samsung/android/sdk/pen/setting/BrushMovableChildStrategy;->moveView(Landroid/view/View;Landroid/util/Size;II)I

    move-result p1

    return p1
.end method

.method public setAniInfo(Landroid/view/View;ZLandroid/view/View;III)Z
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/BrushMovableChildStrategy;->mValidAni:Z

    const-string v1, "BrushMovableChildStrategy"

    if-eqz p1, :cond_1

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_1

    if-eqz p6, :cond_0

    const/4 v2, 0x1

    if-eq p6, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAniInfo() aniView="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " targetGuide="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " align["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "->"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] direction = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p3}, Lcom/samsung/android/sdk/pen/setting/BrushMovableChildStrategy;->getViewRect(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p3

    invoke-direct {p0, p4}, Lcom/samsung/android/sdk/pen/setting/BrushMovableChildStrategy;->getAlignObject(I)Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveAlign;

    move-result-object p4

    invoke-virtual {p4, p2, p6, p5}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveAlign;->getNextViewAngle(ZII)I

    move-result p2

    invoke-direct {p0, p1, p3, p2}, Lcom/samsung/android/sdk/pen/setting/BrushMovableChildStrategy;->setCenterToTarget(Landroid/view/View;Landroid/graphics/Rect;I)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const-string p1, "Invalid parameter."

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public setColorInfo(III)V
    .locals 3

    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/sdk/pen/setting/BrushMovableChildStrategy;->getColorFlip(II)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/BrushMovableChildStrategy;->mColorFlipDir:I

    const/16 v1, 0xb4

    if-eqz v0, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput v2, p0, Lcom/samsung/android/sdk/pen/setting/BrushMovableChildStrategy;->mColorFlipDegree:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    const/4 p1, -0x1

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/BrushMovableChildStrategy;->mSelectorFlip:I

    iput v1, p0, Lcom/samsung/android/sdk/pen/setting/BrushMovableChildStrategy;->mSelectorDegree:I

    goto :goto_1

    :cond_1
    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/BrushMovableChildStrategy;->mSelectorFlip:I

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/setting/BrushMovableChildStrategy;->getSelectorDegree(III)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/BrushMovableChildStrategy;->mSelectorDegree:I

    :goto_1
    return-void
.end method

.method public setRotateDegree(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setRotateDegree() degree="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BrushMovableChildStrategy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/BrushMovableChildStrategy;->mRotateDegree:I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/BrushMovableChildStrategy;->mAlignMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveAlign;

    invoke-virtual {v1, p1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveAlign;->setDeviceAngle(I)V

    goto :goto_0

    :cond_0
    return-void
.end method
