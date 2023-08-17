.class public Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final INVALID_POSITION:I = -0x1

.field private static final TAG:Ljava/lang/String; = "BasePenRecyclerViewModel"


# instance fields
.field private mIsDragMouseEnabled:Z

.field private mIsMulSelStartItemVisible:Z

.field private mIsPenMultiSelectionOn:Z

.field private mIsfirstMoveEvent:Z

.field private mMuSelCurrentItemPos:I

.field private mMulSelStartItemDeltaY:I

.field private mMulSelStartItemPos:I

.field private mMulSelStartItemY:I

.field private mOnPenMultiSelectionListener:Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/OnPenMultiSelectionListener;

.field private mOriginGapStrategy:I

.field private mPenDragBottom:I

.field private mPenDragLeft:I

.field private mPenDragRight:I

.field private mPenDragTop:I

.field private mSelectedItemArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/SelectedItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedItemHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/SelectedItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedItemPositonArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTwDragEndX:I

.field private mTwDragEndY:I

.field private mTwDragStartX:I

.field private mTwDragStartY:I

.field private mView:Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/IBasePenRecyclerView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/IBasePenRecyclerView;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->mIsPenMultiSelectionOn:Z

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->mIsDragMouseEnabled:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->mOnPenMultiSelectionListener:Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/OnPenMultiSelectionListener;

    iput v0, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->mTwDragStartX:I

    iput v0, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->mTwDragStartY:I

    iput v0, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->mTwDragEndX:I

    iput v0, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->mTwDragEndY:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->mIsfirstMoveEvent:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->mMulSelStartItemPos:I

    iput v1, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->mMuSelCurrentItemPos:I

    iput v0, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->mMulSelStartItemY:I

    iput v0, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->mMulSelStartItemDeltaY:I

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->mIsMulSelStartItemVisible:Z

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->mView:Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/IBasePenRecyclerView;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->mSelectedItemPositonArrayList:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->mSelectedItemArray:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->mSelectedItemHashMap:Ljava/util/HashMap;

    return-void
.end method

.method private checkSelectionOfChildView(I)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->mView:Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/IBasePenRecyclerView;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/IBasePenRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    if-ltz v0, :cond_6

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->mView:Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/IBasePenRecyclerView;

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/IBasePenRecyclerView;->getHeight()I

    move-result v1

    if-gt v0, v1, :cond_6

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v1

    iget v2, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->mPenDragTop:I

    const-string v3, "BasePenRecyclerViewModel"

    if-le v2, v0, :cond_0

    iget v4, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->mPenDragBottom:I

    if-lt v4, v1, :cond_3

    :cond_0
    if-lt v2, v0, :cond_1

    iget v4, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->mPenDragBottom:I

    if-le v4, v1, :cond_3

    :cond_1
    if-gt v2, v0, :cond_2

    iget v4, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->mPenDragBottom:I

    if-gt v4, v0, :cond_3

    :cond_2
    if-ge v2, v1, :cond_5

    iget v0, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->mPenDragBottom:I

    if-lt v0, v1, :cond_5

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->mView:Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/IBasePenRecyclerView;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/IBasePenRecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->mSelectedItemHashMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/SelectedItem;

    const-string v2, "dispatchTouchEvent() add item : "

    if-nez v1, :cond_4

    new-instance v1, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/SelectedItem;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/SelectedItem;-><init>()V

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/SelectedItem;->setLeft(I)V

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/SelectedItem;->setRight(I)V

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/SelectedItem;->setPosition(I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->mSelectedItemHashMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->mSelectedItemArray:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->mSelectedItemArray:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->mSelectedItemArray:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->mView:Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/IBasePenRecyclerView;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/IBasePenRecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->mSelectedItemHashMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/SelectedItem;

    if-eqz v0, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchTouchEvent() remove item : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->mSelectedItemHashMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->mSelectedItemArray:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_6
    :goto_1
    return-void
.end method

.method private initPenMoveOnPenSeletion(II)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->mSelectedItemPositonArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->mSelectedItemArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->mSelectedItemHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->mView:Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/IBasePenRecyclerView;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/IBasePenRecyclerView;->setGapStrategy(I)V

    iput p1, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->mTwDragStartX:I

    iput p2, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->mTwDragStartY:I

    iput v1, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->mMulSelStartItemY:I

    iput v1, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->mMulSelStartItemDeltaY:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->mMuSelCurrentItemPos:I

    iput-boolean v1, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->mIsMulSelStartItemVisible:Z

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->mView:Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/IBasePenRecyclerView;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/IBasePenRecyclerView;->getChildCount()I

    move-result p1

    :goto_0
    if-ge v1, p1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->mView:Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/IBasePenRecyclerView;

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/IBasePenRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    int-to-float v2, p2

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v3

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    cmpg-float v3, v2, v3

    if-gtz v3, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->mView:Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/IBasePenRecyclerView;

    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/IBasePenRecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    :goto_1
    iput p1, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->mMulSelStartItemPos:I

    iput p1, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->mMuSelCurrentItemPos:I

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->mMulSelStartItemY:I

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result p1

    float-to-int p1, p1

    sub-int/2addr p2, p1

    iput p2, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->mMulSelStartItemDeltaY:I

    goto :goto_2

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->mView:Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/IBasePenRecyclerView;

    invoke-interface {v3}, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/IBasePenRecyclerView;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v1, v3, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->mView:Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/IBasePenRecyclerView;

    invoke-interface {p1, v1}, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/IBasePenRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/IBasePenRecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method

.method private processPenMoveOnPenSeletion(IIZ)V
    .locals 6

    iput p1, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->mTwDragEndX:I

    iput p2, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->mTwDragEndY:I

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->mIsfirstMoveEvent:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->mIsfirstMoveEvent:Z

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->initPenMoveOnPenSeletion(II)V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->mView:Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/IBasePenRecyclerView;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/IBasePenRecyclerView;->getChildCount()I

    move-result p1

    move v0, v1

    :goto_0
    if-ge v0, p1, :cond_3

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->mView:Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/IBasePenRecyclerView;

    invoke-interface {v2, v0}, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/IBasePenRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->mMulSelStartItemPos:I

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->mView:Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/IBasePenRecyclerView;

    invoke-interface {v4, v2}, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/IBasePenRecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v4

    if-ne v3, v4, :cond_2

    iget p1, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->mMulSelStartItemY:I

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v0

    float-to-int v0, v0

    if-eq p1, v0, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result p1

    float-to-int p1, p1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->mMulSelStartItemDeltaY:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->mTwDragStartY:I

    :cond_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->mIsMulSelStartItemVisible:Z

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    iget-boolean p1, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->mIsMulSelStartItemVisible:Z

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->mView:Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/IBasePenRecyclerView;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/IBasePenRecyclerView;->getChildCount()I

    move-result p1

    move v0, v1

    :goto_2
    if-ge v0, p1, :cond_5

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->mView:Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/IBasePenRecyclerView;

    invoke-interface {v2, v0}, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/IBasePenRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    int-to-float v3, p2

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v4

    cmpl-float v4, v3, v4

    if-ltz v4, :cond_4

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v4

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_4

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->mView:Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/IBasePenRecyclerView;

    invoke-interface {p1, v2}, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/IBasePenRecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->mMuSelCurrentItemPos:I

    goto :goto_3

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    iget p1, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->mMulSelStartItemPos:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_7

    iget v0, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->mMuSelCurrentItemPos:I

    if-eq v0, p2, :cond_7

    if-le v0, p1, :cond_6

    iput v1, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->mTwDragStartY:I

    goto :goto_4

    :cond_6
    if-ge v0, p1, :cond_7

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->mView:Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/IBasePenRecyclerView;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/IBasePenRecyclerView;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->mTwDragStartY:I

    :cond_7
    :goto_4
    iget p1, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->mTwDragStartX:I

    iget p2, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->mTwDragEndX:I

    if-ge p1, p2, :cond_8

    iput p1, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->mPenDragLeft:I

    iput p2, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->mPenDragRight:I

    goto :goto_5

    :cond_8
    iput p2, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->mPenDragLeft:I

    iput p1, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->mPenDragRight:I

    :goto_5
    iget p1, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->mTwDragStartY:I

    iget p2, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->mTwDragEndY:I

    if-ge p1, p2, :cond_9

    iput p1, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->mPenDragTop:I

    iput p2, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->mPenDragBottom:I

    goto :goto_6

    :cond_9
    iput p2, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->mPenDragTop:I

    iput p1, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->mPenDragBottom:I

    :goto_6
    if-eqz p3, :cond_a

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->mView:Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/IBasePenRecyclerView;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/IBasePenRecyclerView;->getChildCount()I

    move-result p1

    if-lez p1, :cond_a

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->mView:Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/IBasePenRecyclerView;

    invoke-interface {p1, v1}, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/IBasePenRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->mPenDragTop:I

    :cond_a
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->mView:Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/IBasePenRecyclerView;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/IBasePenRecyclerView;->getChildCount()I

    move-result p1

    :goto_7
    if-ge v1, p1, :cond_b

    invoke-direct {p0, v1}, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->checkSelectionOfChildView(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_b
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->mView:Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/IBasePenRecyclerView;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/IBasePenRecyclerView;->invalidate()V

    return-void
.end method

.method private processPenUpOnPenSeletion(II)V
    .locals 9

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->mSelectedItemPositonArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->mSelectedItemArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const-string v3, "BasePenRecyclerViewModel"

    if-ge v2, v0, :cond_1

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->mSelectedItemArray:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/SelectedItem;

    iget v5, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->mPenDragLeft:I

    iget v6, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->mPenDragRight:I

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/SelectedItem;->isOverlaid(II)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->mSelectedItemPositonArrayList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->mSelectedItemArray:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/SelectedItem;

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/SelectedItem;->getPosition()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dispatchTouchEvent() remove item : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->mSelectedItemArray:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/SelectedItem;

    invoke-virtual {v5}, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/SelectedItem;->getPosition()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->mSelectedItemPositonArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_4

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->mSelectedItemPositonArrayList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->mOnPenMultiSelectionListener:Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/OnPenMultiSelectionListener;

    if-eqz p1, :cond_2

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->mSelectedItemPositonArrayList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->mView:Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/IBasePenRecyclerView;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/IBasePenRecyclerView;->getWidth()I

    move-result v0

    iget v4, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->mPenDragLeft:I

    iget v5, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->mPenDragRight:I

    invoke-interface {p1, p2, v0, v4, v5}, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/OnPenMultiSelectionListener;->onSelectedItemPosition(Ljava/util/ArrayList;III)V

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->mSelectedItemPositonArrayList:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    move v0, v1

    :goto_2
    if-ge v0, p2, :cond_3

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->mSelectedItemPositonArrayList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "dispatchTouchEvent() items cnt : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->mSelectedItemPositonArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "dispatchTouchEvent() items : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->mView:Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/IBasePenRecyclerView;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/IBasePenRecyclerView;->getChildCount()I

    move-result v0

    move v3, v1

    :goto_3
    if-ge v3, v0, :cond_6

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->mView:Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/IBasePenRecyclerView;

    invoke-interface {v4, v3}, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/IBasePenRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    if-ltz v5, :cond_5

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v5

    iget-object v6, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->mView:Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/IBasePenRecyclerView;

    invoke-interface {v6}, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/IBasePenRecyclerView;->getHeight()I

    move-result v6

    if-gt v5, v6, :cond_5

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v6

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v7

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v8

    if-ge v5, p2, :cond_5

    if-le v6, p2, :cond_5

    if-ge v7, p1, :cond_5

    if-le v8, p1, :cond_5

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->mView:Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/IBasePenRecyclerView;

    invoke-interface {v5, v4}, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/IBasePenRecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->mSelectedItemPositonArrayList:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_6
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->mSelectedItemPositonArrayList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ne p1, v2, :cond_7

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->mOnPenMultiSelectionListener:Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/OnPenMultiSelectionListener;

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->mSelectedItemPositonArrayList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->mView:Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/IBasePenRecyclerView;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/IBasePenRecyclerView;->getWidth()I

    move-result v0

    iget v3, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->mPenDragLeft:I

    iget v4, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->mPenDragRight:I

    invoke-interface {p1, p2, v0, v3, v4}, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/OnPenMultiSelectionListener;->onSelectedItemPosition(Ljava/util/ArrayList;III)V

    :cond_7
    :goto_4
    const/4 p1, -0x1

    iput p1, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->mMulSelStartItemPos:I

    iput v1, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->mMulSelStartItemY:I

    iput v1, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->mMulSelStartItemDeltaY:I

    iput p1, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->mMuSelCurrentItemPos:I

    iput-boolean v1, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->mIsMulSelStartItemVisible:Z

    iput-boolean v1, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->mIsPenMultiSelectionOn:Z

    iput-boolean v2, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->mIsfirstMoveEvent:Z

    iput v1, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->mTwDragStartX:I

    iput v1, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->mTwDragStartY:I

    iput v1, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->mTwDragEndX:I

    iput v1, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->mTwDragEndY:I

    iput v1, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->mPenDragLeft:I

    iput v1, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->mPenDragRight:I

    iput v1, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->mPenDragTop:I

    iput v1, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->mPenDragBottom:I

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->mView:Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/IBasePenRecyclerView;

    iget p2, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->mOriginGapStrategy:I

    invoke-interface {p1, p2}, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/IBasePenRecyclerView;->setGapStrategy(I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->mView:Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/IBasePenRecyclerView;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/IBasePenRecyclerView;->invalidate()V

    return-void
.end method


# virtual methods
.method public cancelDragMouseMultiSelection()V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->mIsPenMultiSelectionOn:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->mIsDragMouseEnabled:Z

    :cond_0
    return-void
.end method

.method public processTouchEvent(Landroid/content/Context;Landroid/view/MotionEvent;Z)V
    .locals 7

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    const/4 v2, 0x1

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/16 v5, 0xd3

    if-eq p1, v5, :cond_0

    if-nez p1, :cond_1

    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v5

    if-ne v5, v3, :cond_1

    iget-boolean v5, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->mIsDragMouseEnabled:Z

    if-eqz v5, :cond_1

    :cond_0
    iput-boolean v2, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->mIsPenMultiSelectionOn:Z

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->mView:Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/IBasePenRecyclerView;

    invoke-interface {v5}, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/IBasePenRecyclerView;->getGapStrategy()I

    move-result v5

    iput v5, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->mOriginGapStrategy:I

    if-eqz p3, :cond_1

    iput-boolean v4, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->mIsPenMultiSelectionOn:Z

    :cond_1
    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/MultiSelection;->getIsMultiSelectingText()Z

    move-result v5

    if-eqz v5, :cond_2

    iput-boolean v4, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->mIsPenMultiSelectionOn:Z

    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    const/16 v6, 0xd5

    if-eq v5, v6, :cond_6

    const/4 v5, 0x2

    if-ne p1, v5, :cond_3

    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v5

    if-ne v5, v3, :cond_3

    iget-boolean v5, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->mIsDragMouseEnabled:Z

    if-eqz v5, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p3

    const/16 v5, 0xd4

    if-eq p3, v5, :cond_5

    if-eq p1, v3, :cond_4

    if-ne p1, v2, :cond_7

    :cond_4
    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result p1

    if-ne p1, v3, :cond_7

    iget-boolean p1, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->mIsDragMouseEnabled:Z

    if-eqz p1, :cond_7

    :cond_5
    iput-boolean v4, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->mIsDragMouseEnabled:Z

    iget-boolean p1, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->mIsPenMultiSelectionOn:Z

    if-eqz p1, :cond_7

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->processPenUpOnPenSeletion(II)V

    goto :goto_1

    :cond_6
    :goto_0
    iget-boolean p1, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->mIsPenMultiSelectionOn:Z

    if-eqz p1, :cond_7

    invoke-direct {p0, v0, v1, p3}, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->processPenMoveOnPenSeletion(IIZ)V

    :cond_7
    :goto_1
    return-void
.end method

.method public setOnPenMultiSelectionListener(Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/OnPenMultiSelectionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->mOnPenMultiSelectionListener:Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/OnPenMultiSelectionListener;

    return-void
.end method

.method public startDragMouseMultiSelection()V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->mIsDragMouseEnabled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->mIsDragMouseEnabled:Z

    :cond_0
    return-void
.end method
