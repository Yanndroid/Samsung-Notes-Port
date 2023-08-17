.class Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper;
.super Landroidx/recyclerview/widget/ItemTouchHelper$Callback;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "LongLogTag"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper$OutsideReorderHelper;,
        Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper$ReorderHelper;,
        Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper$OnItemDropListener;,
        Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper$OnItemMoveListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SpenFavoriteItemDragHelper"


# instance fields
.field private mBoundingBoxMargin:I

.field private mContext:Landroid/content/Context;

.field private mIsRequestedStop:Z

.field private mItemMoveListener:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper$OnItemMoveListener;

.field private mReorderHelper:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper$ReorderHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper$OnItemMoveListener;)V
    .locals 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper;->mBoundingBoxMargin:I

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper;->mIsRequestedStop:Z

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper;->mItemMoveListener:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper$OnItemMoveListener;

    new-instance p2, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper$ReorderHelper;

    const/4 v0, 0x0

    invoke-direct {p2, p0, p1, v0}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper$ReorderHelper;-><init>(Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper;Landroid/content/Context;Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper$ReorderHelper;)V

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper;->mReorderHelper:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper$ReorderHelper;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p2, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le p2, p1, :cond_0

    goto :goto_0

    :cond_0
    move p2, p1

    :goto_0
    iput p2, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper;->mBoundingBoxMargin:I

    return-void
.end method

.method private setItemScaleAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper;->mReorderHelper:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper$ReorderHelper;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper;->mIsRequestedStop:Z

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper$ReorderHelper;->requestDragStop(Z)V

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper;->mReorderHelper:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper$ReorderHelper;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2, p1}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper$ReorderHelper;->startDrag(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper;->mReorderHelper:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper$ReorderHelper;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2, p1}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper$ReorderHelper;->endDrag(Landroid/view/View;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper;->mIsRequestedStop:Z

    :goto_0
    return-void
.end method


# virtual methods
.method public canDropOver(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 2
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->canDropOver(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result p2

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v1

    if-lt v0, v1, :cond_0

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p3

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result p1

    if-le p3, p1, :cond_1

    :cond_0
    const/4 p2, 0x0

    :cond_1
    return p2
.end method

.method public chooseDropTarget(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/util/List;II)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;II)",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper;->mReorderHelper:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper$ReorderHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p3, p4}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper$ReorderHelper;->adjustCurrentPositionForDropTarget(II)Landroid/graphics/Point;

    move-result-object p3

    iget p4, p3, Landroid/graphics/Point;->x:I

    iget p3, p3, Landroid/graphics/Point;->y:I

    move v1, p4

    move p4, p3

    move p3, v1

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->chooseDropTarget(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/util/List;II)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    const-string p1, "SpenFavoriteItemDragHelper"

    const-string v0, "clearView()"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper;->mReorderHelper:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper$ReorderHelper;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper$ReorderHelper;->clearView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public close()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper;->mItemMoveListener:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper$OnItemMoveListener;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper;->mReorderHelper:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper$ReorderHelper;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper;->mContext:Landroid/content/Context;

    return-void
.end method

.method public getBoundingBoxMargin()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper;->mBoundingBoxMargin:I

    return v0
.end method

.method public getMovementFlags(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper;->mReorderHelper:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper$ReorderHelper;

    if-nez p1, :cond_0

    const/4 p1, 0x3

    return p1

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper$ReorderHelper;->getDragFlags()I

    move-result p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->makeMovementFlags(II)I

    move-result p1

    return p1
.end method

.method public isLongPressDragEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onChildDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V
    .locals 8
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper;->mReorderHelper:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper$ReorderHelper;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper;->mIsRequestedStop:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-direct {p0, p3, v0}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper;->setItemScaleAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper;->mReorderHelper:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper$ReorderHelper;

    iget-object v1, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1, p2, p4, p5}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper$ReorderHelper;->updateChildDraw(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;FF)Landroid/graphics/PointF;

    move-result-object p4

    iget v4, p4, Landroid/graphics/PointF;->x:F

    iget v5, p4, Landroid/graphics/PointF;->y:F

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v6, p6

    move v7, p7

    invoke-super/range {v0 .. v7}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onChildDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V

    return-void
.end method

.method public onMove(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper;->mItemMoveListener:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper$OnItemMoveListener;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p2

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p3

    invoke-interface {p1, p2, p3}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper$OnItemMoveListener;->onItemMove(II)Z

    const/4 p1, 0x1

    return p1
.end method

.method public onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper;->mIsRequestedStop:Z

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper;->setItemScaleAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    goto :goto_0

    :cond_0
    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper;->mIsRequestedStop:Z

    :goto_0
    return-void
.end method

.method public onSwiped(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public setOnItemDropListener(Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper$OnItemDropListener;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper;->mReorderHelper:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper$ReorderHelper;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper$ReorderHelper;->setItemDropListener(Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper$OnItemDropListener;)V

    return-void
.end method

.method public setOnPenMiniDragListener(Lcom/samsung/android/sdk/pen/setting/favoritepen/OnFavoritePenMiniViewDragListener;)V
    .locals 3

    const-string v0, "SpenFavoriteItemDragHelper"

    const-string/jumbo v1, "setOnPenMiniDragListener()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper;->mReorderHelper:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper$ReorderHelper;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    new-instance v1, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper$OutsideReorderHelper;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2, p1, v0}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper$OutsideReorderHelper;-><init>(Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper;Landroid/content/Context;Lcom/samsung/android/sdk/pen/setting/favoritepen/OnFavoritePenMiniViewDragListener;Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper$ReorderHelper;)V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper;->mReorderHelper:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper$ReorderHelper;

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper$ReorderHelper;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0, v1, v0}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper$ReorderHelper;-><init>(Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper;Landroid/content/Context;Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper$ReorderHelper;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper;->mReorderHelper:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper$ReorderHelper;

    :goto_0
    return-void
.end method

.method public setOrientation(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper;->mReorderHelper:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper$ReorderHelper;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setOrientation("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenFavoriteItemDragHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper;->mReorderHelper:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper$ReorderHelper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenLayoutConfigHelper;->setOrientation(I)V

    return-void
.end method

.method public setToolType(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper;->mReorderHelper:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper$ReorderHelper;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper$ReorderHelper;->setToolType(I)V

    return-void
.end method
