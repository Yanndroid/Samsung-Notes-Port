.class Lcom/samsung/android/sdk/pen/setting/SpenBrushDropListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/setting/SpenBrushDropListener$ActionListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SpenBrushDropListener"

.field private static final alignTag:[Ljava/lang/String;


# instance fields
.field private mActionListener:Lcom/samsung/android/sdk/pen/setting/SpenBrushDropListener$ActionListener;

.field private mColorTag:Ljava/lang/String;

.field private mCurrentPosition:I

.field private mDragAreaList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/pen/setting/SpenBrushDragArea;",
            ">;"
        }
    .end annotation
.end field

.field private mDragRect:Landroid/graphics/Rect;

.field private mDragViewOffset:Landroid/graphics/Point;

.field private mLastDragRect:Landroid/graphics/Rect;

.field private mOriginalPosition:I

.field private mPenTag:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const-string v0, "BOTTOM"

    const-string v1, "END"

    const-string v2, "START"

    const-string v3, "TOP"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDropListener;->alignTag:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDropListener;->mPenTag:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDropListener;->mColorTag:Ljava/lang/String;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDropListener;->mLastDragRect:Landroid/graphics/Rect;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDropListener;->mDragAreaList:Ljava/util/List;

    return-void
.end method

.method private changeMenuViewPosition(Landroid/view/View;)V
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDropListener;->mCurrentPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDropListener;->mCurrentPosition:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushDropListener;->getDragArea(I)Lcom/samsung/android/sdk/pen/setting/SpenBrushDragArea;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragArea;->getCurrentTag()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushDropListener;->getAlign(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDropListener;->mPenTag:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushDropListener;->notifyPositionChanged(IZ)V

    :cond_2
    :goto_0
    return-void
.end method

.method private checkDragArea(Landroid/graphics/Rect;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateDragArea() Rect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenBrushDropListener"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDropListener;->mDragAreaList:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushDropListener;->getDragArea(I)Lcom/samsung/android/sdk/pen/setting/SpenBrushDragArea;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushDropListener;->hasRightAngle(Lcom/samsung/android/sdk/pen/setting/SpenBrushDragArea;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushDropListener;->findTargetByOverlapArea(Landroid/graphics/Rect;)I

    move-result p1

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushDropListener;->findTargetByContains(Landroid/graphics/Rect;)I

    move-result p1

    :goto_0
    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDropListener;->mCurrentPosition:I

    iget p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDropListener;->mCurrentPosition:I

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushDropListener;->setDragLocation(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method private dropAction(Landroid/view/DragEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushDropListener;->isValidClipData(Landroid/content/ClipData;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDropListener;->mCurrentPosition:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDropListener;->mLastDragRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/sdk/pen/setting/SpenBrushDropListener;->getCurrentRect(FF)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushDropListener;->changeMenuViewPosition(Landroid/view/View;)V

    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method private findTargetByContains(Landroid/graphics/Rect;)I
    .locals 4

    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result p1

    invoke-direct {v0, v1, p1}, Landroid/graphics/Point;-><init>(II)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDropListener;->mDragAreaList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, -0x1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragArea;

    invoke-virtual {v3, v0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragArea;->isContains(Landroid/graphics/Point;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "### target="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SpenBrushDropListener"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private findTargetByOverlapArea(Landroid/graphics/Rect;)I
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDropListener;->mDragAreaList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    move v3, v2

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragArea;

    invoke-virtual {v4, p1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragArea;->getOverlapArea(Landroid/graphics/Rect;)I

    move-result v4

    if-le v4, v1, :cond_0

    move v3, v2

    move v1, v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "### target="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " targetValue="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SpenBrushDropListener"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method private getAlign(Ljava/lang/String;)I
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDropListener;->alignTag:[Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method private getCurrentRect(FF)Landroid/graphics/Rect;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDropListener;->mDragRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDropListener;->mDragViewOffset:Landroid/graphics/Point;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    float-to-int p1, p1

    iget v1, v0, Landroid/graphics/Point;->x:I

    sub-int/2addr p1, v1

    float-to-int p2, p2

    iget v0, v0, Landroid/graphics/Point;->y:I

    sub-int/2addr p2, v0

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDropListener;->mDragRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    add-int/2addr v1, p1

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDropListener;->mDragRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    add-int/2addr v2, p2

    invoke-direct {v0, p1, p2, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0

    :cond_1
    :goto_0
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    return-object p1
.end method

.method private getDragArea(I)Lcom/samsung/android/sdk/pen/setting/SpenBrushDragArea;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDropListener;->mDragAreaList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDropListener;->mDragAreaList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragArea;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private hasRightAngle(Lcom/samsung/android/sdk/pen/setting/SpenBrushDragArea;)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragArea;->hasRightAngle()Z

    move-result p1

    return p1
.end method

.method private isValidClipData(Landroid/content/ClipData;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1, v0}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    const-string v2, "SpenBrushDropListener"

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clipData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    const-string p1, "invalid ClipData()"

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    return v0
.end method

.method private notifyDragAction(Landroid/view/DragEvent;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDropListener;->mActionListener:Lcom/samsung/android/sdk/pen/setting/SpenBrushDropListener$ActionListener;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDropListener;->mActionListener:Lcom/samsung/android/sdk/pen/setting/SpenBrushDropListener$ActionListener;

    invoke-interface {p1, v0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushDropListener$ActionListener;->onActionStarted(Landroid/view/View;)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDropListener;->mActionListener:Lcom/samsung/android/sdk/pen/setting/SpenBrushDropListener$ActionListener;

    invoke-virtual {p1}, Landroid/view/DragEvent;->getResult()Z

    move-result p1

    invoke-interface {v1, v0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushDropListener$ActionListener;->onActionEnded(Landroid/view/View;Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method private notifyPositionChanged(IZ)V
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDropListener;->mActionListener:Lcom/samsung/android/sdk/pen/setting/SpenBrushDropListener$ActionListener;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDropListener;->mLastDragRect:Landroid/graphics/Rect;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/SpenBrushDropListener$ActionListener;->onPenPositionChanged(ILandroid/graphics/Rect;)V

    return-void

    :cond_1
    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDropListener;->mLastDragRect:Landroid/graphics/Rect;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/SpenBrushDropListener$ActionListener;->onColorPositionChanged(ILandroid/graphics/Rect;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private setDragLocation(I)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDropListener;->mDragAreaList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragArea;

    if-ne v2, p1, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    move v4, v1

    :goto_1
    invoke-virtual {v3, v4}, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragArea;->setDragLocation(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private startDrag(Landroid/content/ClipDescription;)Z
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDropListener;->mCurrentPosition:I

    if-eqz p1, :cond_0

    const-string/jumbo v0, "text/plain"

    invoke-virtual {p1, v0}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private updateDragLocation(Landroid/view/DragEvent;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ACTION_DRAG_LOCATION X="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " Y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenBrushDropListener"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushDropListener;->getCurrentRect(FF)Landroid/graphics/Rect;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushDropListener;->checkDragArea(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDropListener;->mActionListener:Lcom/samsung/android/sdk/pen/setting/SpenBrushDropListener$ActionListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushDropListener$ActionListener;->onDragLocationChanged(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public clearDragArea()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDropListener;->mDragAreaList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDropListener;->mDragAreaList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragArea;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragArea;->close()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDropListener;->mDragAreaList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public close()V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushDropListener;->clearDragArea()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDropListener;->mDragAreaList:Ljava/util/List;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDropListener;->mLastDragRect:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDropListener;->mDragViewOffset:Landroid/graphics/Point;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDropListener;->mDragRect:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDropListener;->mPenTag:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDropListener;->mColorTag:Ljava/lang/String;

    return-void
.end method

.method public makeFirstState()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "makeFirstState() orgPos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDropListener;->mOriginalPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenBrushDropListener"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDropListener;->mOriginalPosition:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushDropListener;->setDragLocation(I)V

    return-void
.end method

.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 1

    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    :pswitch_0
    return v0

    :pswitch_1
    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/pen/setting/SpenBrushDropListener;->notifyDragAction(Landroid/view/DragEvent;)V

    return v0

    :pswitch_2
    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/pen/setting/SpenBrushDropListener;->dropAction(Landroid/view/DragEvent;)Z

    move-result p1

    return p1

    :pswitch_3
    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/pen/setting/SpenBrushDropListener;->updateDragLocation(Landroid/view/DragEvent;)V

    return v0

    :pswitch_4
    invoke-virtual {p2}, Landroid/view/DragEvent;->getClipDescription()Landroid/content/ClipDescription;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushDropListener;->startDrag(Landroid/content/ClipDescription;)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setActionListener(Lcom/samsung/android/sdk/pen/setting/SpenBrushDropListener$ActionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDropListener;->mActionListener:Lcom/samsung/android/sdk/pen/setting/SpenBrushDropListener$ActionListener;

    return-void
.end method

.method public varargs setDragArea(I[Lcom/samsung/android/sdk/pen/setting/SpenBrushDragArea;)V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushDropListener;->clearDragArea()V

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDropListener;->mOriginalPosition:I

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDropListener;->mDragAreaList:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public setDragViewInfo(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDropListener;->mDragRect:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDropListener;->mDragViewOffset:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDropListener;->mDragRect:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1, p2}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDropListener;->mDragViewOffset:Landroid/graphics/Point;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, " Rect="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDropListener;->mDragRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SpenBrushDropListener"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " Offset="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDropListener;->mDragViewOffset:Landroid/graphics/Point;

    invoke-virtual {v0}, Landroid/graphics/Point;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
