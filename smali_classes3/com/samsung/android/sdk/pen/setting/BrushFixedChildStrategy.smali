.class Lcom/samsung/android/sdk/pen/setting/BrushFixedChildStrategy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveStrategy;


# static fields
.field private static final TAG:Ljava/lang/String; = "BrushFixedChildStrategy"


# instance fields
.field private mColorFlipDegree:I

.field private mColorFlipDir:I

.field private mRotateDegree:I

.field private mSelectorDegree:I

.field private mSelectorFlip:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/BrushFixedChildStrategy;->mRotateDegree:I

    return-void
.end method


# virtual methods
.method public getColorFlip(II)I
    .locals 4

    const/16 v0, 0x10e

    const/16 v1, 0x5a

    const/4 v2, 0x1

    if-eq p1, v2, :cond_3

    const/4 v3, 0x2

    if-eq p1, v3, :cond_1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/samsung/android/sdk/pen/setting/BrushFixedChildStrategy;->mRotateDegree:I

    const/16 p2, 0xb4

    if-ne p1, p2, :cond_5

    goto :goto_1

    :cond_1
    iget p1, p0, Lcom/samsung/android/sdk/pen/setting/BrushFixedChildStrategy;->mRotateDegree:I

    if-nez p2, :cond_2

    if-ne p1, v1, :cond_5

    goto :goto_1

    :cond_2
    if-ne p1, v0, :cond_5

    goto :goto_1

    :cond_3
    iget p1, p0, Lcom/samsung/android/sdk/pen/setting/BrushFixedChildStrategy;->mRotateDegree:I

    if-nez p2, :cond_4

    if-ne p1, v0, :cond_5

    goto :goto_1

    :cond_4
    if-ne p1, v1, :cond_5

    goto :goto_1

    :cond_5
    :goto_0
    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method public getColorFlipDegree()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/BrushFixedChildStrategy;->mColorFlipDegree:I

    return v0
.end method

.method public getColorFlipDir()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/BrushFixedChildStrategy;->mColorFlipDir:I

    return v0
.end method

.method public getPenDegree(III)F
    .locals 4

    const/high16 p1, 0x43340000    # 180.0f

    const/4 v0, 0x0

    const/4 v1, 0x3

    if-ne p2, v1, :cond_1

    iget p2, p0, Lcom/samsung/android/sdk/pen/setting/BrushFixedChildStrategy;->mRotateDegree:I

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    return p1

    :cond_1
    const/4 v1, 0x2

    const/16 v2, 0x10e

    const/16 v3, 0x5a

    if-ne p2, v1, :cond_5

    iget p2, p0, Lcom/samsung/android/sdk/pen/setting/BrushFixedChildStrategy;->mRotateDegree:I

    if-nez p3, :cond_3

    if-eq p2, v2, :cond_2

    goto :goto_1

    :cond_2
    move p1, v0

    :goto_1
    return p1

    :cond_3
    if-eq p2, v3, :cond_4

    goto :goto_2

    :cond_4
    move p1, v0

    :goto_2
    return p1

    :cond_5
    const/4 v1, 0x1

    if-ne p2, v1, :cond_9

    iget p2, p0, Lcom/samsung/android/sdk/pen/setting/BrushFixedChildStrategy;->mRotateDegree:I

    if-nez p3, :cond_7

    if-eq p2, v3, :cond_6

    move p1, v0

    :cond_6
    return p1

    :cond_7
    if-eq p2, v2, :cond_8

    move p1, v0

    :cond_8
    return p1

    :cond_9
    return v0
.end method

.method public getRotateDegree()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/BrushFixedChildStrategy;->mRotateDegree:I

    return v0
.end method

.method public getSelectorDegree(III)F
    .locals 2

    const/high16 p1, 0x42b40000    # 90.0f

    const/high16 v0, 0x43870000    # 270.0f

    const/4 v1, 0x2

    if-ne p2, v1, :cond_1

    if-nez p3, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    move p1, v0

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    if-ne p2, v1, :cond_2

    if-nez p3, :cond_3

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :cond_3
    :goto_1
    iget p2, p0, Lcom/samsung/android/sdk/pen/setting/BrushFixedChildStrategy;->mRotateDegree:I

    if-lez p2, :cond_4

    int-to-float p2, p2

    add-float/2addr p1, p2

    const/high16 p2, 0x43b40000    # 360.0f

    rem-float/2addr p1, p2

    :cond_4
    return p1
.end method

.method public getSelectorFlipDegree()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/BrushFixedChildStrategy;->mSelectorDegree:I

    return v0
.end method

.method public getSelectorFlipDir()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/BrushFixedChildStrategy;->mSelectorFlip:I

    return v0
.end method

.method public moveView(Landroid/view/View;Landroid/view/View;II)I
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "moveView() guideView="

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

    const-string v1, "BrushFixedChildStrategy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x3

    const/4 v1, 0x1

    const/4 v3, 0x0

    if-ne p3, v0, :cond_1

    invoke-virtual {p2, v3}, Landroid/view/View;->setRotation(F)V

    invoke-virtual {p2, v3}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p2, v3}, Landroid/view/View;->setTranslationY(F)V

    return v1

    :cond_1
    const/4 v0, 0x2

    if-eq p3, v0, :cond_3

    if-ne p3, v1, :cond_2

    goto :goto_0

    :cond_2
    return v2

    :cond_3
    :goto_0
    if-nez p4, :cond_4

    invoke-virtual {p2, v3}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {p2, v3}, Landroid/view/View;->setPivotY(F)V

    const/high16 p3, -0x3d4c0000    # -90.0f

    invoke-virtual {p2, p3}, Landroid/view/View;->setRotation(F)V

    int-to-float p1, p1

    goto :goto_1

    :cond_4
    int-to-float p1, p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {p2, v3}, Landroid/view/View;->setPivotY(F)V

    const/high16 p3, 0x42b40000    # 90.0f

    invoke-virtual {p2, p3}, Landroid/view/View;->setRotation(F)V

    :goto_1
    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationY(F)V

    return v0

    :cond_5
    :goto_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "width ="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " height="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public setColorInfo(III)V
    .locals 3

    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/sdk/pen/setting/BrushFixedChildStrategy;->getColorFlip(II)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/BrushFixedChildStrategy;->mColorFlipDir:I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/16 v2, 0xb4

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iput v2, p0, Lcom/samsung/android/sdk/pen/setting/BrushFixedChildStrategy;->mColorFlipDegree:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    const/4 v1, -0x1

    :cond_1
    iput v1, p0, Lcom/samsung/android/sdk/pen/setting/BrushFixedChildStrategy;->mSelectorFlip:I

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/setting/BrushFixedChildStrategy;->getSelectorDegree(III)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/BrushFixedChildStrategy;->mSelectorDegree:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setColorInfo() orientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " align="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " direction="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BrushFixedChildStrategy"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "setColorInfo() colorFlip["

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/samsung/android/sdk/pen/setting/BrushFixedChildStrategy;->mColorFlipDir:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/BrushFixedChildStrategy;->mColorFlipDegree:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "] Selector["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/BrushFixedChildStrategy;->mSelectorFlip:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/samsung/android/sdk/pen/setting/BrushFixedChildStrategy;->mSelectorDegree:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "]"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

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

    const-string v1, "BrushFixedChildStrategy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/BrushFixedChildStrategy;->mRotateDegree:I

    return-void
.end method
