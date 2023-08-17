.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageThumbnailHoverListener$HoverAsyncTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageThumbnailHoverListener;
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
.field private static final TAG:Ljava/lang/String; = "PageThumbnailHoverListener$HoverAsyncTask"


# instance fields
.field private mListenerReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageThumbnailHoverListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageThumbnailHoverListener;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageThumbnailHoverListener$HoverAsyncTask;->mListenerReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private getAntiGreenisFilteredColor(I)I
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature;->getFeature()Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$Feature;->needAntiGreenish()Z

    move-result v0

    if-nez v0, :cond_0

    return p1

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/util/ContextUtils;->isNightMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    return p1

    :cond_1
    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$color;->drawer_list_bg_color:I

    if-eq p1, v0, :cond_5

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$color;->settings_list_background_color:I

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_2
    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$color;->noteslist_card_view_bg_color_black:I

    if-ne p1, v0, :cond_3

    sget p1, Lcom/samsung/android/support/senl/nt/composer/R$color;->notes_anti_greenish_color:I

    return p1

    :cond_3
    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$color;->noteslist_thumbnail_opacity:I

    if-ne p1, v0, :cond_4

    sget p1, Lcom/samsung/android/support/senl/nt/composer/R$color;->notes_anti_greenish_thumbnail_opacity:I

    :cond_4
    return p1

    :cond_5
    :goto_0
    sget p1, Lcom/samsung/android/support/senl/nt/composer/R$color;->notes_anti_greenish_color:I

    return p1
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageThumbnailHoverListener$HoverAsyncTask;->mListenerReference:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageThumbnailHoverListener;

    if-nez p1, :cond_1

    return-object v0

    :cond_1
    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageThumbnailHoverListener;->mHolderListener:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageThumbnailHoverListener$HoverRecyclerViewHolderListener;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageThumbnailHoverListener$HoverRecyclerViewHolderListener;->getImageDrawableImpl()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageThumbnailHoverListener$HoverAsyncTask;->doInBackground([Ljava/lang/Void;)Landroid/graphics/drawable/Drawable;

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

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageThumbnailHoverListener$HoverAsyncTask;->onCancelled(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onPostExecute(Landroid/graphics/drawable/Drawable;)V
    .locals 8

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageThumbnailHoverListener$HoverAsyncTask;->mListenerReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageThumbnailHoverListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageThumbnailHoverListener;->mHolderListener:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageThumbnailHoverListener$HoverRecyclerViewHolderListener;

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageThumbnailHoverListener$HoverRecyclerViewHolderListener;->getItemView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_4

    :cond_1
    :try_start_0
    move-object v1, p1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/util/ImageUtils;->convertDrawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_2

    return-void

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/util/ImageUtils;->resizeBitmapImage(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    iget-object v1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageThumbnailHoverListener;->mHoverView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/nt/composer/R$layout;->noteslist_hover_popup:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/nt/composer/R$id;->noteslist_hover_image:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v4, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageThumbnailHoverListener;->mHoverView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/samsung/android/support/senl/nt/composer/R$dimen;->page_hover_image_thumbnail_max:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result p1

    int-to-float p1, p1

    cmpl-float v6, v5, p1

    if-lez v6, :cond_3

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    float-to-int v7, v4

    iput v7, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    mul-float/2addr v4, p1

    div-float/2addr v4, v5

    float-to-int p1, v4

    iput p1, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    mul-float/2addr v5, v4

    div-float/2addr v5, p1

    float-to-int p1, v5

    iput p1, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    float-to-int v4, v4

    iput v4, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_1
    iget-object p1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageThumbnailHoverListener;->mHolderListener:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageThumbnailHoverListener$HoverRecyclerViewHolderListener;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageThumbnailHoverListener$HoverRecyclerViewHolderListener;->backgroundColor()I

    move-result p1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/support/senl/nt/base/common/util/ContextUtils;->isNightMode(Landroid/content/Context;)Z

    move-result v4

    const/4 v5, 0x0

    invoke-static {p1, v5}, Lcom/samsung/android/support/senl/nt/base/common/displaydata/ContentUtils;->hasBackgroundColorNotes(IZ)Z

    move-result v5

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/samsung/android/support/senl/nt/composer/R$color;->composer_main_background_dark:I

    invoke-virtual {v6, v7, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v6

    if-ne p1, v6, :cond_4

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/samsung/android/support/senl/nt/composer/R$color;->noteslist_card_view_bg_color_black:I

    invoke-direct {p0, v6}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageThumbnailHoverListener$HoverAsyncTask;->getAntiGreenisFilteredColor(I)I

    move-result v6

    :goto_2
    invoke-virtual {v5, v6, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v5

    goto :goto_3

    :cond_4
    if-nez v5, :cond_5

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/samsung/android/support/senl/nt/composer/R$color;->background_color_white:I

    goto :goto_2

    :cond_5
    move v5, p1

    :goto_3
    sget v6, Lcom/samsung/android/support/senl/nt/composer/R$id;->noteslist_hover_container:I

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v7, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v5

    if-ne p1, v5, :cond_6

    if-eqz v4, :cond_6

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v4, Lcom/samsung/android/support/senl/nt/composer/R$color;->noteslist_thumbnail_opacity:I

    invoke-direct {p0, v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageThumbnailHoverListener$HoverAsyncTask;->getAntiGreenisFilteredColor(I)I

    move-result v4

    invoke-virtual {p1, v4, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_6
    invoke-virtual {v2}, Landroid/widget/ImageView;->requestLayout()V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/HoverCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/HoverCompat;

    move-result-object p1

    iget-object v2, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageThumbnailHoverListener;->mHoverView:Landroid/view/View;

    invoke-virtual {p1, v2, v1}, Lcom/samsung/android/support/senl/cm/base/framework/view/HoverCompat;->setThumb(Landroid/view/View;Landroid/view/View;)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/HoverCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/HoverCompat;

    move-result-object p1

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageThumbnailHoverListener;->mHoverView:Landroid/view/View;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/view/HoverCompat;->show(Landroid/view/View;I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageThumbnailHoverListener$HoverAsyncTask;->mListenerReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->clear()V

    iput-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageThumbnailHoverListener$HoverAsyncTask;->mListenerReference:Ljava/lang/ref/WeakReference;

    return-void

    :cond_7
    :goto_4
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/HoverCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/HoverCompat;

    move-result-object p1

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageThumbnailHoverListener;->mHoverView:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/view/HoverCompat;->dismiss(Landroid/view/View;)V

    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageThumbnailHoverListener$HoverAsyncTask;->onPostExecute(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
