.class Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper$ReorderHelper;
.super Lcom/samsung/android/sdk/pen/setting/common/SpenLayoutConfigHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ReorderHelper"
.end annotation


# static fields
.field private static final SCALE_ANIMATION_DURATION:I = 0xc8

.field private static final SCALE_UP_ALPHA:F = 0.6f

.field private static final SCALE_UP_RATIO:F = 1.1f


# instance fields
.field private mIsDragStop:Z

.field private mItemDropListener:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper$OnItemDropListener;

.field private mItemOffsetValue:I

.field private mNormalOffsetY:I

.field private mToolType:I

.field private mVerticalFirstItemOffsetY:I

.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper;Landroid/content/Context;Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper$ReorderHelper;)V
    .locals 1
    .param p1    # Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper$ReorderHelper;->this$0:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper;

    const/4 p1, 0x1

    if-nez p3, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Lcom/samsung/android/sdk/pen/setting/common/SpenLayoutConfigHelper;->getOrientation()I

    move-result v0

    :goto_0
    invoke-direct {p0, p2, v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenLayoutConfigHelper;-><init>(Landroid/content/Context;I)V

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper$ReorderHelper;->mToolType:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper$ReorderHelper;->mIsDragStop:Z

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/samsung/android/spen/R$dimen;->mini_favorite_pen_view_reorder_outside_offset_y:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper$ReorderHelper;->mItemOffsetValue:I

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/samsung/android/spen/R$dimen;->mini_favorite_pen_view_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    const v0, 0x3f8ccccd    # 1.1f

    mul-float/2addr v0, p1

    sub-float/2addr v0, p1

    float-to-int p1, v0

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper$ReorderHelper;->mNormalOffsetY:I

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/samsung/android/spen/R$dimen;->mini_favorite_setting_first_item_margin:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper$ReorderHelper;->mVerticalFirstItemOffsetY:I

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper$ReorderHelper;->getItemDropperListener()Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper$OnItemDropListener;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper$ReorderHelper;->setItemDropListener(Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper$OnItemDropListener;)V

    invoke-virtual {p3}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper$ReorderHelper;->getToolType()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper$ReorderHelper;->setToolType(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public adjustCurrentPositionForDropTarget(II)Landroid/graphics/Point;
    .locals 1

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method public adjustMaxDisplacement(FIII)F
    .locals 2

    int-to-float v0, p2

    add-float/2addr v0, p1

    add-int v1, p4, p3

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    sub-int/2addr p4, p2

    add-int/2addr p4, p3

    int-to-float p1, p4

    :cond_0
    return p1
.end method

.method public adjustMinDisplacement(FII)F
    .locals 2

    int-to-float v0, p2

    add-float/2addr v0, p1

    int-to-float v1, p3

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    neg-int p1, p2

    add-int/2addr p1, p3

    int-to-float p1, p1

    :cond_0
    return p1
.end method

.method public clearView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper$ReorderHelper;->mItemDropListener:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper$OnItemDropListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper$OnItemDropListener;->OnItemDrop(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    :cond_0
    return-void
.end method

.method public endDrag(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x4

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilAnimation;->getInterpolator(I)Landroid/view/animation/PathInterpolator;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public getDragFlags()I
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/common/SpenLayoutConfigHelper;->isVertical()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    const/16 v0, 0xc

    :goto_0
    return v0
.end method

.method public getItemDropperListener()Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper$OnItemDropListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper$ReorderHelper;->mItemDropListener:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper$OnItemDropListener;

    return-object v0
.end method

.method public getItemOffsetValue()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper$ReorderHelper;->mItemOffsetValue:I

    return v0
.end method

.method public getToolType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper$ReorderHelper;->mToolType:I

    return v0
.end method

.method public isDragStopped()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper$ReorderHelper;->mIsDragStop:Z

    return v0
.end method

.method public requestDragStop(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper$ReorderHelper;->mIsDragStop:Z

    return-void
.end method

.method public setItemDropListener(Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper$OnItemDropListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper$ReorderHelper;->mItemDropListener:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper$OnItemDropListener;

    return-void
.end method

.method public setToolType(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper$ReorderHelper;->mToolType:I

    return-void
.end method

.method public startDrag(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const v0, 0x3f8ccccd    # 1.1f

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const v0, 0x3f19999a    # 0.6f

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x4

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilAnimation;->getInterpolator(I)Landroid/view/animation/PathInterpolator;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public updateChildDraw(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;FF)Landroid/graphics/PointF;
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, p3, p4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/common/SpenLayoutConfigHelper;->isVertical()Z

    move-result p3

    const/4 p4, 0x0

    if-eqz p3, :cond_1

    iget p3, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper$ReorderHelper;->mVerticalFirstItemOffsetY:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper$ReorderHelper;->mNormalOffsetY:I

    :goto_0
    invoke-virtual {p0, p3, v2, v0}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper$ReorderHelper;->adjustMinDisplacement(FII)F

    move-result p3

    iput p3, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getHeight()I

    move-result p2

    invoke-virtual {p0, p3, p1, p4, p2}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper$ReorderHelper;->adjustMaxDisplacement(FIII)F

    move-result p1

    iput p1, v1, Landroid/graphics/PointF;->y:F

    goto :goto_1

    :cond_1
    iget p3, v1, Landroid/graphics/PointF;->x:F

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v2, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper$ReorderHelper;->mNormalOffsetY:I

    invoke-virtual {p0, p3, v0, v2}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper$ReorderHelper;->adjustMinDisplacement(FII)F

    move-result p3

    iput p3, v1, Landroid/graphics/PointF;->x:F

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result p1

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getWidth()I

    move-result p2

    invoke-virtual {p0, p3, p1, p4, p2}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper$ReorderHelper;->adjustMaxDisplacement(FIII)F

    move-result p1

    iput p1, v1, Landroid/graphics/PointF;->x:F

    :goto_1
    return-object v1
.end method
