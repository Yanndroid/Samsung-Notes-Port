.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListView$OnScrollListenerImpl;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnScrollListenerImpl"
.end annotation


# static fields
.field private static final SUPPLEMENT_FACTOR:F = 1.0f


# instance fields
.field private mBeforeFirst:I

.field private mBeforeLast:I

.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListView;


# direct methods
.method private constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListView$OnScrollListenerImpl;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListView$OnScrollListenerImpl;->mBeforeFirst:I

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListView$OnScrollListenerImpl;->mBeforeLast:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListView;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/c;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListView$OnScrollListenerImpl;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListView;)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListView$OnScrollListenerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListView$OnScrollListenerImpl;->notifyVisibleItemChanged()V

    return-void
.end method

.method private notifyVisibleItemChanged()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListView$OnScrollListenerImpl;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListView;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListView;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListView;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListLayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListLayoutManager;->getGridLayoutManager()Landroidx/recyclerview/widget/GridLayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListView$OnScrollListenerImpl;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListView;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListView;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListView;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListLayoutManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListLayoutManager;->getGridLayoutManager()Landroidx/recyclerview/widget/GridLayoutManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v1

    iget v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListView$OnScrollListenerImpl;->mBeforeFirst:I

    if-ne v2, v0, :cond_0

    iget v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListView$OnScrollListenerImpl;->mBeforeLast:I

    if-eq v2, v1, :cond_1

    :cond_0
    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListView$OnScrollListenerImpl;->mBeforeFirst:I

    iput v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListView$OnScrollListenerImpl;->mBeforeLast:I

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListView$OnScrollListenerImpl;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListView;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListView;->e(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListView;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->onVisibleItemChanged(II)V

    :cond_1
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListView$OnScrollListenerImpl;->mBeforeFirst:I

    return-void
.end method

.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListView$OnScrollListenerImpl;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListView;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListView;->e(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListView;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;

    move-result-object p1

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->setBlockThumbnailUpdate(Z)V

    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListView$OnScrollListenerImpl;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListView;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListView;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListView;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageAdapter;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListView$OnScrollListenerImpl;->notifyVisibleItemChanged()V

    return-void
.end method
