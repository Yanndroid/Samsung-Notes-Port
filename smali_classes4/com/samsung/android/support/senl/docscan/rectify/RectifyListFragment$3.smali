.class Lcom/samsung/android/support/senl/docscan/rectify/RectifyListFragment$3;
.super Landroidx/recyclerview/widget/PagerSnapHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/docscan/rectify/RectifyListFragment;->initRecyclerView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/docscan/rectify/RectifyListFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/docscan/rectify/RectifyListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/docscan/rectify/RectifyListFragment$3;->this$0:Lcom/samsung/android/support/senl/docscan/rectify/RectifyListFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/PagerSnapHelper;-><init>()V

    return-void
.end method


# virtual methods
.method public findTargetSnapPosition(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;II)I
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/PagerSnapHelper;->findTargetSnapPosition(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;II)I

    move-result p1

    if-ltz p1, :cond_0

    iget-object p2, p0, Lcom/samsung/android/support/senl/docscan/rectify/RectifyListFragment$3;->this$0:Lcom/samsung/android/support/senl/docscan/rectify/RectifyListFragment;

    invoke-static {p2}, Lcom/samsung/android/support/senl/docscan/rectify/RectifyListFragment;->a(Lcom/samsung/android/support/senl/docscan/rectify/RectifyListFragment;)Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p2, p1, p3}, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter;->setCurrentPosition(IZ)V

    :cond_0
    return p1
.end method
