.class Lcom/samsung/android/support/senl/nt/app/common/listener/ThumbnailHoverListener$HoverAsyncTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/common/listener/ThumbnailHoverListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HoverAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ThumbnailHoverListener$HoverAsyncTask"


# instance fields
.field private mListenerReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/samsung/android/support/senl/nt/app/common/listener/ThumbnailHoverListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/common/listener/ThumbnailHoverListener;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/common/listener/ThumbnailHoverListener$HoverAsyncTask;->mListenerReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/common/listener/ThumbnailHoverListener$HoverAsyncTask;->mListenerReference:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/app/common/listener/ThumbnailHoverListener;

    if-nez p1, :cond_1

    return-object v0

    :cond_1
    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/app/common/listener/ThumbnailHoverListener;->mHolderListener:Lcom/samsung/android/support/senl/nt/app/common/listener/ThumbnailHoverListener$HoverRecyclerViewHolderListener;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/common/listener/ThumbnailHoverListener$HoverRecyclerViewHolderListener;->getImageDrawableImpl()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/common/listener/ThumbnailHoverListener$HoverAsyncTask;->doInBackground([Ljava/lang/Void;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public onCancelled(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onCancelled(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/common/listener/ThumbnailHoverListener$HoverAsyncTask;->onCancelled(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onPostExecute(Landroid/graphics/drawable/Drawable;)V
    .locals 11

    const-string v0, "ThumbnailHoverListener$HoverAsyncTask"

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/common/listener/ThumbnailHoverListener$HoverAsyncTask;->mListenerReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/app/common/listener/ThumbnailHoverListener;

    if-nez v1, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_c

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, v1, Lcom/samsung/android/support/senl/nt/app/common/listener/ThumbnailHoverListener;->mHolderListener:Lcom/samsung/android/support/senl/nt/app/common/listener/ThumbnailHoverListener$HoverRecyclerViewHolderListener;

    invoke-interface {v2}, Lcom/samsung/android/support/senl/nt/app/common/listener/ThumbnailHoverListener$HoverRecyclerViewHolderListener;->getItemView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_7

    :cond_1
    :try_start_0
    move-object v2, p1

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPostExecute# ClassCastException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/util/ImageUtils;->convertDrawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v2

    :goto_0
    if-nez v2, :cond_2

    const-string p1, "onPostExecute# drawableBitmap is null"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v3}, Lcom/samsung/android/support/senl/nt/base/common/util/ImageUtils;->resizeBitmapImage(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    iget-object v2, v1, Lcom/samsung/android/support/senl/nt/app/common/listener/ThumbnailHoverListener;->mHoverView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/samsung/android/support/senl/nt/app/R$layout;->noteslist_hover_popup:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    sget v3, Lcom/samsung/android/support/senl/nt/app/R$id;->noteslist_hover_image:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/common/listener/ThumbnailHoverListener;->a(Lcom/samsung/android/support/senl/nt/app/common/listener/ThumbnailHoverListener;)I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onPostExecute# viewMode : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x3

    if-ne v5, v0, :cond_3

    iget-object p1, v1, Lcom/samsung/android/support/senl/nt/app/common/listener/ThumbnailHoverListener;->mHoverView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v5, Lcom/samsung/android/support/senl/nt/app/R$dimen;->noteslist_hover_simple_image_thumbnail_max:I

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    float-to-int p1, p1

    iput p1, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iput p1, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1

    :cond_3
    iget-object v5, v1, Lcom/samsung/android/support/senl/nt/app/common/listener/ThumbnailHoverListener;->mHoverView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/samsung/android/support/senl/nt/app/R$dimen;->noteslist_hover_image_thumbnail_max:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result p1

    int-to-float p1, p1

    cmpl-float v7, v6, p1

    if-lez v7, :cond_4

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    float-to-int v8, v5

    iput v8, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    mul-float/2addr v5, p1

    div-float/2addr v5, v6

    float-to-int p1, v5

    iput p1, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1

    :cond_4
    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    mul-float/2addr v6, v5

    div-float/2addr v6, p1

    float-to-int p1, v6

    iput p1, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    float-to-int v5, v5

    iput v5, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_1
    iget-object p1, v1, Lcom/samsung/android/support/senl/nt/app/common/listener/ThumbnailHoverListener;->mHolderListener:Lcom/samsung/android/support/senl/nt/app/common/listener/ThumbnailHoverListener$HoverRecyclerViewHolderListener;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/common/listener/ThumbnailHoverListener$HoverRecyclerViewHolderListener;->backgroundColor()I

    move-result p1

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/support/senl/nt/base/common/util/ContextUtils;->isNightMode(Landroid/content/Context;)Z

    move-result v5

    iget-object v6, v1, Lcom/samsung/android/support/senl/nt/app/common/listener/ThumbnailHoverListener;->mHolderListener:Lcom/samsung/android/support/senl/nt/app/common/listener/ThumbnailHoverListener$HoverRecyclerViewHolderListener;

    invoke-interface {v6}, Lcom/samsung/android/support/senl/nt/app/common/listener/ThumbnailHoverListener$HoverRecyclerViewHolderListener;->isSdoc()Z

    move-result v6

    invoke-static {p1, v6}, Lcom/samsung/android/support/senl/nt/app/common/listener/ThumbnailHoverListener;->b(IZ)Z

    move-result v7

    iget-object v8, v1, Lcom/samsung/android/support/senl/nt/app/common/listener/ThumbnailHoverListener;->mHolderListener:Lcom/samsung/android/support/senl/nt/app/common/listener/ThumbnailHoverListener$HoverRecyclerViewHolderListener;

    invoke-interface {v8}, Lcom/samsung/android/support/senl/nt/app/common/listener/ThumbnailHoverListener$HoverRecyclerViewHolderListener;->isSupportInvertedBGColor()Z

    move-result v8

    if-nez v8, :cond_8

    if-eqz v6, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/samsung/android/support/senl/nt/app/R$color;->composer_main_background_dark:I

    invoke-virtual {v9, v10, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v9

    if-ne p1, v9, :cond_6

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v9, Lcom/samsung/android/support/senl/nt/app/R$color;->noteslist_card_view_bg_color_black:I

    goto :goto_3

    :cond_6
    if-nez v7, :cond_7

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v9, Lcom/samsung/android/support/senl/nt/app/R$color;->background_color_white:I

    goto :goto_4

    :cond_7
    move v7, p1

    goto :goto_5

    :cond_8
    :goto_2
    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v9, Lcom/samsung/android/support/senl/nt/app/R$color;->basic_list_item_bg_color:I

    :goto_3
    invoke-static {v9}, Lcom/samsung/android/support/senl/nt/app/common/util/NotesUtils;->getAntiGreenisFilteredColor(I)I

    move-result v9

    :goto_4
    invoke-virtual {v7, v9, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v7

    :goto_5
    sget v9, Lcom/samsung/android/support/senl/nt/app/R$id;->noteslist_hover_container:I

    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    if-eqz v6, :cond_9

    iget-object v6, v1, Lcom/samsung/android/support/senl/nt/app/common/listener/ThumbnailHoverListener;->mHolderListener:Lcom/samsung/android/support/senl/nt/app/common/listener/ThumbnailHoverListener$HoverRecyclerViewHolderListener;

    invoke-interface {v6}, Lcom/samsung/android/support/senl/nt/app/common/listener/ThumbnailHoverListener$HoverRecyclerViewHolderListener;->hasOnlyHandwritingSdoc()Z

    move-result v6

    if-eqz v6, :cond_b

    if-nez p1, :cond_b

    if-eqz v5, :cond_b

    const/4 p1, -0x1

    goto :goto_6

    :cond_9
    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/samsung/android/support/senl/nt/app/R$color;->composer_main_background_dark:I

    invoke-virtual {v6, v7, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v6

    if-eq p1, v6, :cond_a

    if-eqz v8, :cond_b

    if-eqz v5, :cond_b

    :cond_a
    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v5, Lcom/samsung/android/support/senl/nt/app/R$color;->noteslist_thumbnail_opacity:I

    invoke-static {v5}, Lcom/samsung/android/support/senl/nt/app/common/util/NotesUtils;->getAntiGreenisFilteredColor(I)I

    move-result v5

    invoke-virtual {p1, v5, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    :goto_6
    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_b
    invoke-virtual {v3}, Landroid/widget/ImageView;->requestLayout()V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/HoverCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/HoverCompat;

    move-result-object p1

    iget-object v3, v1, Lcom/samsung/android/support/senl/nt/app/common/listener/ThumbnailHoverListener;->mHoverView:Landroid/view/View;

    invoke-virtual {p1, v3, v2}, Lcom/samsung/android/support/senl/cm/base/framework/view/HoverCompat;->setThumb(Landroid/view/View;Landroid/view/View;)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/HoverCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/HoverCompat;

    move-result-object p1

    iget-object v1, v1, Lcom/samsung/android/support/senl/nt/app/common/listener/ThumbnailHoverListener;->mHoverView:Landroid/view/View;

    invoke-virtual {p1, v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/view/HoverCompat;->show(Landroid/view/View;I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/common/listener/ThumbnailHoverListener$HoverAsyncTask;->mListenerReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->clear()V

    iput-object v4, p0, Lcom/samsung/android/support/senl/nt/app/common/listener/ThumbnailHoverListener$HoverAsyncTask;->mListenerReference:Ljava/lang/ref/WeakReference;

    return-void

    :cond_c
    :goto_7
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/HoverCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/HoverCompat;

    move-result-object p1

    iget-object v0, v1, Lcom/samsung/android/support/senl/nt/app/common/listener/ThumbnailHoverListener;->mHoverView:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/view/HoverCompat;->dismiss(Landroid/view/View;)V

    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/common/listener/ThumbnailHoverListener$HoverAsyncTask;->onPostExecute(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
