.class public Lcom/samsung/android/support/senl/docscan/rectify/adapter/RectifiedImageThumbnailAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/docscan/rectify/adapter/RectifiedImageThumbnailAdapter$RectifiedImageThumbnailHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/samsung/android/support/senl/docscan/rectify/adapter/RectifiedImageThumbnailAdapter$RectifiedImageThumbnailHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContract:Lcom/samsung/android/support/senl/docscan/rectify/adapter/AdapterContract$RecyclerView;

.field private final mScanDataModel:Lcom/samsung/android/support/senl/docscan/model/ScanDataModel;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/docscan/rectify/adapter/AdapterContract$RecyclerView;Lcom/samsung/android/support/senl/docscan/model/ScanDataModel;)V
    .locals 0

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/docscan/rectify/adapter/RectifiedImageThumbnailAdapter;->mContract:Lcom/samsung/android/support/senl/docscan/rectify/adapter/AdapterContract$RecyclerView;

    iput-object p2, p0, Lcom/samsung/android/support/senl/docscan/rectify/adapter/RectifiedImageThumbnailAdapter;->mScanDataModel:Lcom/samsung/android/support/senl/docscan/model/ScanDataModel;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/docscan/rectify/adapter/RectifiedImageThumbnailAdapter;)Lcom/samsung/android/support/senl/docscan/rectify/adapter/AdapterContract$RecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/docscan/rectify/adapter/RectifiedImageThumbnailAdapter;->mContract:Lcom/samsung/android/support/senl/docscan/rectify/adapter/AdapterContract$RecyclerView;

    return-object p0
.end method

.method private decorate(Lcom/samsung/android/support/senl/docscan/rectify/adapter/RectifiedImageThumbnailAdapter$RectifiedImageThumbnailHolder;I)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/adapter/RectifiedImageThumbnailAdapter;->mContract:Lcom/samsung/android/support/senl/docscan/rectify/adapter/AdapterContract$RecyclerView;

    if-eqz v0, :cond_1

    if-gez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/samsung/android/support/senl/docscan/rectify/adapter/RectifiedImageThumbnailAdapter$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/docscan/rectify/adapter/RectifiedImageThumbnailAdapter$1;-><init>(Lcom/samsung/android/support/senl/docscan/rectify/adapter/RectifiedImageThumbnailAdapter;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p1, Lcom/samsung/android/support/senl/docscan/rectify/adapter/RectifiedImageThumbnailAdapter$RectifiedImageThumbnailHolder;->mImageView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/adapter/RectifiedImageThumbnailAdapter;->mContract:Lcom/samsung/android/support/senl/docscan/rectify/adapter/AdapterContract$RecyclerView;

    invoke-interface {v0, p2}, Lcom/samsung/android/support/senl/docscan/rectify/adapter/AdapterContract$RecyclerView;->getThumbnailImage(I)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private decorateThumbnail(Lcom/samsung/android/support/senl/docscan/rectify/adapter/RectifiedImageThumbnailAdapter$RectifiedImageThumbnailHolder;IZ)V
    .locals 1

    if-eqz p1, :cond_2

    if-gez p2, :cond_0

    goto :goto_0

    :cond_0
    const/high16 p2, 0x3f800000    # 1.0f

    if-eqz p3, :cond_1

    iget-object p3, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p3, p2}, Landroid/view/View;->setZ(F)V

    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 p3, -0x1

    invoke-virtual {p2, p3}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->bringToFront()V

    iget-object p2, p1, Lcom/samsung/android/support/senl/docscan/rectify/adapter/RectifiedImageThumbnailAdapter$RectifiedImageThumbnailHolder;->mImageView:Landroid/widget/ImageView;

    const p3, 0x3fa66666    # 1.3f

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setScaleX(F)V

    iget-object p1, p1, Lcom/samsung/android/support/senl/docscan/rectify/adapter/RectifiedImageThumbnailAdapter$RectifiedImageThumbnailHolder;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setScaleY(F)V

    goto :goto_0

    :cond_1
    iget-object p3, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/view/View;->setZ(F)V

    iget-object p3, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object p3, p1, Lcom/samsung/android/support/senl/docscan/rectify/adapter/RectifiedImageThumbnailAdapter$RectifiedImageThumbnailHolder;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p3, p2}, Landroid/widget/ImageView;->setScaleX(F)V

    iget-object p1, p1, Lcom/samsung/android/support/senl/docscan/rectify/adapter/RectifiedImageThumbnailAdapter$RectifiedImageThumbnailHolder;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setScaleY(F)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/adapter/RectifiedImageThumbnailAdapter;->mScanDataModel:Lcom/samsung/android/support/senl/docscan/model/ScanDataModel;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/docscan/model/ScanDataModel;->getScanDataCount()I

    move-result v0

    :goto_0
    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/samsung/android/support/senl/docscan/rectify/adapter/RectifiedImageThumbnailAdapter$RectifiedImageThumbnailHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/docscan/rectify/adapter/RectifiedImageThumbnailAdapter;->onBindViewHolder(Lcom/samsung/android/support/senl/docscan/rectify/adapter/RectifiedImageThumbnailAdapter$RectifiedImageThumbnailHolder;I)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/samsung/android/support/senl/docscan/rectify/adapter/RectifiedImageThumbnailAdapter$RectifiedImageThumbnailHolder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/docscan/rectify/adapter/RectifiedImageThumbnailAdapter;->onBindViewHolder(Lcom/samsung/android/support/senl/docscan/rectify/adapter/RectifiedImageThumbnailAdapter$RectifiedImageThumbnailHolder;ILjava/util/List;)V

    return-void
.end method

.method public onBindViewHolder(Lcom/samsung/android/support/senl/docscan/rectify/adapter/RectifiedImageThumbnailAdapter$RectifiedImageThumbnailHolder;I)V
    .locals 1
    .param p1    # Lcom/samsung/android/support/senl/docscan/rectify/adapter/RectifiedImageThumbnailAdapter$RectifiedImageThumbnailHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/docscan/rectify/adapter/RectifiedImageThumbnailAdapter;->decorate(Lcom/samsung/android/support/senl/docscan/rectify/adapter/RectifiedImageThumbnailAdapter$RectifiedImageThumbnailHolder;I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/adapter/RectifiedImageThumbnailAdapter;->mContract:Lcom/samsung/android/support/senl/docscan/rectify/adapter/AdapterContract$RecyclerView;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/docscan/rectify/adapter/AdapterContract$RecyclerView;->getCurrentPosition()I

    move-result v0

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/support/senl/docscan/rectify/adapter/RectifiedImageThumbnailAdapter;->decorateThumbnail(Lcom/samsung/android/support/senl/docscan/rectify/adapter/RectifiedImageThumbnailAdapter$RectifiedImageThumbnailHolder;IZ)V

    return-void
.end method

.method public onBindViewHolder(Lcom/samsung/android/support/senl/docscan/rectify/adapter/RectifiedImageThumbnailAdapter$RectifiedImageThumbnailHolder;ILjava/util/List;)V
    .locals 2
    .param p1    # Lcom/samsung/android/support/senl/docscan/rectify/adapter/RectifiedImageThumbnailAdapter$RectifiedImageThumbnailHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/docscan/rectify/adapter/RectifiedImageThumbnailAdapter$RectifiedImageThumbnailHolder;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/docscan/rectify/adapter/RectifiedImageThumbnailAdapter;->decorate(Lcom/samsung/android/support/senl/docscan/rectify/adapter/RectifiedImageThumbnailAdapter$RectifiedImageThumbnailHolder;I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/adapter/RectifiedImageThumbnailAdapter;->mContract:Lcom/samsung/android/support/senl/docscan/rectify/adapter/AdapterContract$RecyclerView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/samsung/android/support/senl/docscan/rectify/adapter/AdapterContract$RecyclerView;->getCurrentPosition()I

    move-result v0

    if-ne v0, p2, :cond_1

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-direct {p0, p1, p2, v1}, Lcom/samsung/android/support/senl/docscan/rectify/adapter/RectifiedImageThumbnailAdapter;->decorateThumbnail(Lcom/samsung/android/support/senl/docscan/rectify/adapter/RectifiedImageThumbnailAdapter$RectifiedImageThumbnailHolder;IZ)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/docscan/rectify/adapter/RectifiedImageThumbnailAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/support/senl/docscan/rectify/adapter/RectifiedImageThumbnailAdapter$RectifiedImageThumbnailHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/support/senl/docscan/rectify/adapter/RectifiedImageThumbnailAdapter$RectifiedImageThumbnailHolder;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance p2, Lcom/samsung/android/support/senl/docscan/rectify/adapter/RectifiedImageThumbnailAdapter$RectifiedImageThumbnailHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/docscan/R$layout;->rectified_image_thumbnail_holder:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/samsung/android/support/senl/docscan/rectify/adapter/RectifiedImageThumbnailAdapter$RectifiedImageThumbnailHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
