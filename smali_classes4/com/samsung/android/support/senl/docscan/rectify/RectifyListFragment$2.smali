.class Lcom/samsung/android/support/senl/docscan/rectify/RectifyListFragment$2;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
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
.field private diff:I

.field private idlePosition:I

.field public final synthetic this$0:Lcom/samsung/android/support/senl/docscan/rectify/RectifyListFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/docscan/rectify/RectifyListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/docscan/rectify/RectifyListFragment$2;->this$0:Lcom/samsung/android/support/senl/docscan/rectify/RectifyListFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/support/senl/docscan/rectify/RectifyListFragment$2;->diff:I

    iput p1, p0, Lcom/samsung/android/support/senl/docscan/rectify/RectifyListFragment$2;->idlePosition:I

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-nez p2, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/docscan/rectify/RectifyListFragment$2;->this$0:Lcom/samsung/android/support/senl/docscan/rectify/RectifyListFragment;

    invoke-static {p1}, Lcom/samsung/android/support/senl/docscan/rectify/RectifyListFragment;->a(Lcom/samsung/android/support/senl/docscan/rectify/RectifyListFragment;)Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter;->getCurrentPosition()I

    move-result p1

    const/4 p2, 0x0

    iput p2, p0, Lcom/samsung/android/support/senl/docscan/rectify/RectifyListFragment$2;->diff:I

    iput p1, p0, Lcom/samsung/android/support/senl/docscan/rectify/RectifyListFragment$2;->idlePosition:I

    iget-object p2, p0, Lcom/samsung/android/support/senl/docscan/rectify/RectifyListFragment$2;->this$0:Lcom/samsung/android/support/senl/docscan/rectify/RectifyListFragment;

    invoke-static {p2}, Lcom/samsung/android/support/senl/docscan/rectify/RectifyListFragment;->b(Lcom/samsung/android/support/senl/docscan/rectify/RectifyListFragment;)Lcom/samsung/android/support/senl/docscan/rectify/adapter/RectifiedImageThumbnailAdapter;

    move-result-object p2

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p2, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget p3, p0, Lcom/samsung/android/support/senl/docscan/rectify/RectifyListFragment$2;->diff:I

    add-int/2addr p3, p2

    iput p3, p0, Lcom/samsung/android/support/senl/docscan/rectify/RectifyListFragment$2;->diff:I

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result p2

    const/4 p3, 0x1

    if-ne p3, p2, :cond_1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/samsung/android/support/senl/docscan/R$dimen;->rectified_image_thumbnail_item_size:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iget p2, p0, Lcom/samsung/android/support/senl/docscan/rectify/RectifyListFragment$2;->idlePosition:I

    iget p3, p0, Lcom/samsung/android/support/senl/docscan/rectify/RectifyListFragment$2;->diff:I

    int-to-float p3, p3

    div-float/2addr p3, p1

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p1

    add-int/2addr p2, p1

    iget p1, p0, Lcom/samsung/android/support/senl/docscan/rectify/RectifyListFragment$2;->idlePosition:I

    if-ne p1, p2, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/docscan/rectify/RectifyListFragment$2;->this$0:Lcom/samsung/android/support/senl/docscan/rectify/RectifyListFragment;

    invoke-static {p1}, Lcom/samsung/android/support/senl/docscan/rectify/RectifyListFragment;->a(Lcom/samsung/android/support/senl/docscan/rectify/RectifyListFragment;)Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter;->setCurrentPosition(IZ)V

    :cond_1
    return-void
.end method
