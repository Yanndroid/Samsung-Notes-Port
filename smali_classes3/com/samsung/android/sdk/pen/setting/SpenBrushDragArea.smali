.class Lcom/samsung/android/sdk/pen/setting/SpenBrushDragArea;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "SpenBrushDragArea"


# instance fields
.field private mColorHelper:Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaHelper;

.field private mPenHelper:Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaHelper;

.field private mQuadrilateral:Lcom/samsung/android/sdk/pen/setting/SpenQuadrilateral;

.field private mTarget:Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaHelper;


# direct methods
.method public varargs constructor <init>(Landroid/view/View;Landroid/view/View;ZZ[Landroid/graphics/Point;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/SpenBrushPenDragAreaHelper;

    invoke-direct {v0, p1, p3, p4}, Lcom/samsung/android/sdk/pen/setting/SpenBrushPenDragAreaHelper;-><init>(Landroid/view/View;ZZ)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragArea;->mPenHelper:Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaHelper;

    new-instance p1, Lcom/samsung/android/sdk/pen/setting/SpenBrushColorDragAreaHelper;

    invoke-direct {p1, p2, p4, p3}, Lcom/samsung/android/sdk/pen/setting/SpenBrushColorDragAreaHelper;-><init>(Landroid/view/View;ZZ)V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragArea;->mColorHelper:Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaHelper;

    new-instance p1, Lcom/samsung/android/sdk/pen/setting/SpenQuadrilateral;

    invoke-direct {p1, p5}, Lcom/samsung/android/sdk/pen/setting/SpenQuadrilateral;-><init>([Landroid/graphics/Point;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragArea;->mQuadrilateral:Lcom/samsung/android/sdk/pen/setting/SpenQuadrilateral;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragArea;->mPenHelper:Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaHelper;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaHelper;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragArea;->mPenHelper:Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaHelper;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragArea;->mColorHelper:Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaHelper;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaHelper;->close()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragArea;->mColorHelper:Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaHelper;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragArea;->mQuadrilateral:Lcom/samsung/android/sdk/pen/setting/SpenQuadrilateral;

    return-void
.end method

.method public getCurrentTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragArea;->mTarget:Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaHelper;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaHelper;->getCurrentTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOverlapArea(Landroid/graphics/Rect;)I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragArea;->mQuadrilateral:Lcom/samsung/android/sdk/pen/setting/SpenQuadrilateral;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenQuadrilateral;->getOverlapArea(Landroid/graphics/Rect;)I

    move-result p1

    return p1
.end method

.method public hasRightAngle()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragArea;->mQuadrilateral:Lcom/samsung/android/sdk/pen/setting/SpenQuadrilateral;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/SpenQuadrilateral;->isRectangle()Z

    move-result v0

    return v0
.end method

.method public isContains(Landroid/graphics/Point;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragArea;->mQuadrilateral:Lcom/samsung/android/sdk/pen/setting/SpenQuadrilateral;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenQuadrilateral;->isContains(Landroid/graphics/Point;)Z

    move-result p1

    return p1
.end method

.method public setDragLocation(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragArea;->mTarget:Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaHelper;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaHelper;->performDraggingInside()V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragArea;->mTarget:Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaHelper;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaHelper;->performDraggingOutside()V

    return-void
.end method

.method public setTarget(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragArea;->mPenHelper:Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaHelper;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragArea;->mColorHelper:Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaHelper;

    :goto_0
    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragArea;->mTarget:Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaHelper;

    return-void
.end method

.method public startDrag()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragArea;->mPenHelper:Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaHelper;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragArea;->mColorHelper:Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaHelper;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaHelper;->getGuide()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaHelper;->startDrag(Landroid/view/View;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragArea;->mColorHelper:Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaHelper;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragArea;->mPenHelper:Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaHelper;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaHelper;->getGuide()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaHelper;->startDrag(Landroid/view/View;)V

    return-void
.end method
