.class public Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/adapter/SeekBarAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/presenter/ThumbnailHelper$Contract;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/adapter/SeekBarAdapter$SeekBarItemHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/adapter/SeekBarAdapter$SeekBarItemHolder;",
        ">;",
        "Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/presenter/ThumbnailHelper$Contract;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mPreviews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final mThumbnailHelper:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/presenter/ThumbnailHelper;

.field private final mUIHandler:Landroid/os/Handler;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "SeekBarAdapter"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/common/VideoLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/adapter/SeekBarAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/presenter/ThumbnailHelper;)V
    .locals 2

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/adapter/SeekBarAdapter;->mUIHandler:Landroid/os/Handler;

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/adapter/SeekBarAdapter;->TAG:Ljava/lang/String;

    const-string v1, "Construct# "

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/adapter/SeekBarAdapter;->mThumbnailHelper:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/presenter/ThumbnailHelper;

    invoke-virtual {p1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/presenter/ThumbnailHelper;->setContract(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/presenter/ThumbnailHelper$Contract;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/adapter/SeekBarAdapter;->mPreviews:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getItemId(I)J
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/adapter/SeekBarAdapter;->mPreviews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt p1, v0, :cond_0

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/adapter/SeekBarAdapter;->mPreviews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public loadPreviews(Landroid/content/Context;J)V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/adapter/SeekBarAdapter;->TAG:Ljava/lang/String;

    const-string v1, "loadPreviews# "

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/adapter/SeekBarAdapter;->mThumbnailHelper:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/presenter/ThumbnailHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/presenter/ThumbnailHelper;->loadPreviews(Landroid/content/Context;J)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/adapter/SeekBarAdapter$SeekBarItemHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/adapter/SeekBarAdapter;->onBindViewHolder(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/adapter/SeekBarAdapter$SeekBarItemHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/adapter/SeekBarAdapter$SeekBarItemHolder;I)V
    .locals 3
    .param p1    # Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/adapter/SeekBarAdapter$SeekBarItemHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/adapter/SeekBarAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBindViewHolder# position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/adapter/SeekBarAdapter;->mPreviews:Ljava/util/List;

    if-nez v1, :cond_0

    const-string p1, "onBindViewHolder# Previews are empty"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$id;->seek_bar_thumbnail:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/adapter/SeekBarAdapter;->mPreviews:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/adapter/SeekBarAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/adapter/SeekBarAdapter$SeekBarItemHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/adapter/SeekBarAdapter$SeekBarItemHolder;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/adapter/SeekBarAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreateViewHolder# type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/adapter/SeekBarAdapter$SeekBarItemHolder;

    invoke-direct {p2, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/adapter/SeekBarAdapter$SeekBarItemHolder;-><init>(Landroid/view/ViewGroup;)V

    return-object p2
.end method

.method public onPreviewLoaded(ILandroid/graphics/Bitmap;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/adapter/SeekBarAdapter;->mPreviews:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/adapter/SeekBarAdapter;->mPreviews:Ljava/util/List;

    :cond_0
    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/adapter/SeekBarAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreviewLoaded# idx: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/adapter/SeekBarAdapter;->mPreviews:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/adapter/SeekBarAdapter;->mUIHandler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/adapter/SeekBarAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/adapter/SeekBarAdapter$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/adapter/SeekBarAdapter;I)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onPreviewsLoaded(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/adapter/SeekBarAdapter;->TAG:Ljava/lang/String;

    const-string v1, "onPreviewsLoaded# "

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/adapter/SeekBarAdapter;->mPreviews:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/adapter/SeekBarAdapter;->mPreviews:Ljava/util/List;

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/adapter/SeekBarAdapter;->mPreviews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/adapter/SeekBarAdapter;->mPreviews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/adapter/SeekBarAdapter;->mUIHandler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/adapter/SeekBarAdapter$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/adapter/SeekBarAdapter$2;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/adapter/SeekBarAdapter;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
