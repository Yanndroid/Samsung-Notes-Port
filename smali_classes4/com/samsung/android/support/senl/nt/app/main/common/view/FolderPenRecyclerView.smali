.class public Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;
.super Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView$RoundedDecoration;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerView;->mLayoutMode:I

    return p0
.end method

.method public static synthetic access$100(Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerView;->mLayoutMode:I

    return p0
.end method

.method public static synthetic access$200(Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerView;->mLayoutMode:I

    return p0
.end method

.method public static synthetic access$300(Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerView;->mLayoutMode:I

    return p0
.end method

.method public static synthetic access$400(Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerView;->mLayoutMode:I

    return p0
.end method

.method public static synthetic access$500(Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerView;->mLayoutMode:I

    return p0
.end method

.method private init(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView$RoundedDecoration;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView$RoundedDecoration;-><init>(Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method


# virtual methods
.method public scrollBy(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0, v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    return-void
.end method

.method public scrollBy(II)V
    .locals 6

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "onTouchEvent"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-void

    :cond_0
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "doCallbacks"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    return-void

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    return-void
.end method

.method public scrollToBottom()V
    .locals 1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    return-void
.end method

.method public smoothScrollToPositionForDrawer(I)V
    .locals 1

    const/high16 v0, 0x43fa0000    # 500.0f

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;->smoothScrollToPositionForDrawer(IF)V

    return-void
.end method

.method public smoothScrollToPositionForDrawer(IF)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView$1;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2, p2}, Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView$1;-><init>(Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;Landroid/content/Context;F)V

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    return-void
.end method
