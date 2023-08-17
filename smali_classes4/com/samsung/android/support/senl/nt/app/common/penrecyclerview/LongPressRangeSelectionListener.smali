.class public Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/LongPressRangeSelectionListener;
.super Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerView$LongPressMultiSelectionListener;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/OnLongPressMultiSelectionListener;


# instance fields
.field public mIsTouchMoved:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerView$LongPressMultiSelectionListener;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/LongPressRangeSelectionListener;->mIsTouchMoved:Z

    return-void
.end method


# virtual methods
.method public isTouchMoved()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/LongPressRangeSelectionListener;->mIsTouchMoved:Z

    return v0
.end method

.method public onItemSelected(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;IJ)V
    .locals 0

    invoke-super/range {p0 .. p5}, Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerView$LongPressMultiSelectionListener;->onItemSelected(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;IJ)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/LongPressRangeSelectionListener;->mIsTouchMoved:Z

    return-void
.end method

.method public onLongPressMultiSelectionEnded(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerView$LongPressMultiSelectionListener;->onLongPressMultiSelectionEnded(II)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/LongPressRangeSelectionListener;->mIsTouchMoved:Z

    return-void
.end method

.method public onLongPressMultiSelectionStarted(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerView$LongPressMultiSelectionListener;->onLongPressMultiSelectionStarted(II)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/LongPressRangeSelectionListener;->mIsTouchMoved:Z

    return-void
.end method

.method public onTouchEvent(FF)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
