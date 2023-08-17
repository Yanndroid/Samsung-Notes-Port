.class Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerViewModel;
.super Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;
.source "SourceFile"


# instance fields
.field private mOnLongPressMultiSelectionListener:Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/OnLongPressMultiSelectionListener;

.field private mView:Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerViewContract$PenRecyclerView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerViewContract$PenRecyclerView;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;-><init>(Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/IBasePenRecyclerView;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerViewModel;->mOnLongPressMultiSelectionListener:Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/OnLongPressMultiSelectionListener;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerViewModel;->mView:Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerViewContract$PenRecyclerView;

    return-void
.end method

.method private processTouchEvent(Landroid/view/MotionEvent;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerViewModel;->mOnLongPressMultiSelectionListener:Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/OnLongPressMultiSelectionListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerViewModel;->mView:Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerViewContract$PenRecyclerView;

    invoke-interface {v2}, Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerViewContract$PenRecyclerView;->isLongPressed()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerViewModel;->mOnLongPressMultiSelectionListener:Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/OnLongPressMultiSelectionListener;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/OnLongPressMultiSelectionListener;->onTouchEvent(FF)Z

    :cond_1
    return-void
.end method


# virtual methods
.method public getOnLongPressMultiSelectionListener()Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/OnLongPressMultiSelectionListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerViewModel;->mOnLongPressMultiSelectionListener:Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/OnLongPressMultiSelectionListener;

    return-object v0
.end method

.method public processTouchEvent(Landroid/content/Context;Landroid/view/MotionEvent;Z)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerViewModel;->processTouchEvent(Landroid/view/MotionEvent;)V

    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;->processTouchEvent(Landroid/content/Context;Landroid/view/MotionEvent;Z)V

    return-void
.end method

.method public removeOnLongPressMultiSelectionListener()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerViewModel;->mOnLongPressMultiSelectionListener:Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/OnLongPressMultiSelectionListener;

    return-void
.end method

.method public setOnLongPressMultiSelectionListener(Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/OnLongPressMultiSelectionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerViewModel;->mOnLongPressMultiSelectionListener:Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/OnLongPressMultiSelectionListener;

    return-void
.end method
