.class public final Lcom/bumptech/glide/load/resource/bitmap/BitmapTransitionOptions;
.super Lcom/bumptech/glide/TransitionOptions;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/TransitionOptions<",
        "Lcom/bumptech/glide/load/resource/bitmap/BitmapTransitionOptions;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/bumptech/glide/TransitionOptions;-><init>()V

    return-void
.end method

.method public static with(Lcom/bumptech/glide/request/transition/TransitionFactory;)Lcom/bumptech/glide/load/resource/bitmap/BitmapTransitionOptions;
    .locals 1
    .param p0    # Lcom/bumptech/glide/request/transition/TransitionFactory;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/transition/TransitionFactory<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/bumptech/glide/load/resource/bitmap/BitmapTransitionOptions;"
        }
    .end annotation

    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/BitmapTransitionOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/bitmap/BitmapTransitionOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/TransitionOptions;->transition(Lcom/bumptech/glide/request/transition/TransitionFactory;)Lcom/bumptech/glide/TransitionOptions;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/load/resource/bitmap/BitmapTransitionOptions;

    return-object p0
.end method

.method public static withCrossFade()Lcom/bumptech/glide/load/resource/bitmap/BitmapTransitionOptions;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/BitmapTransitionOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/bitmap/BitmapTransitionOptions;-><init>()V

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/bitmap/BitmapTransitionOptions;->crossFade()Lcom/bumptech/glide/load/resource/bitmap/BitmapTransitionOptions;

    move-result-object v0

    return-object v0
.end method

.method public static withCrossFade(I)Lcom/bumptech/glide/load/resource/bitmap/BitmapTransitionOptions;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/BitmapTransitionOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/bitmap/BitmapTransitionOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/load/resource/bitmap/BitmapTransitionOptions;->crossFade(I)Lcom/bumptech/glide/load/resource/bitmap/BitmapTransitionOptions;

    move-result-object p0

    return-object p0
.end method

.method public static withCrossFade(Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory$Builder;)Lcom/bumptech/glide/load/resource/bitmap/BitmapTransitionOptions;
    .locals 1
    .param p0    # Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory$Builder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/BitmapTransitionOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/bitmap/BitmapTransitionOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/load/resource/bitmap/BitmapTransitionOptions;->crossFade(Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory$Builder;)Lcom/bumptech/glide/load/resource/bitmap/BitmapTransitionOptions;

    move-result-object p0

    return-object p0
.end method

.method public static withCrossFade(Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory;)Lcom/bumptech/glide/load/resource/bitmap/BitmapTransitionOptions;
    .locals 1
    .param p0    # Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/BitmapTransitionOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/bitmap/BitmapTransitionOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/load/resource/bitmap/BitmapTransitionOptions;->crossFade(Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory;)Lcom/bumptech/glide/load/resource/bitmap/BitmapTransitionOptions;

    move-result-object p0

    return-object p0
.end method

.method public static withWrapped(Lcom/bumptech/glide/request/transition/TransitionFactory;)Lcom/bumptech/glide/load/resource/bitmap/BitmapTransitionOptions;
    .locals 1
    .param p0    # Lcom/bumptech/glide/request/transition/TransitionFactory;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/transition/TransitionFactory<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)",
            "Lcom/bumptech/glide/load/resource/bitmap/BitmapTransitionOptions;"
        }
    .end annotation

    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/BitmapTransitionOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/bitmap/BitmapTransitionOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/load/resource/bitmap/BitmapTransitionOptions;->transitionUsing(Lcom/bumptech/glide/request/transition/TransitionFactory;)Lcom/bumptech/glide/load/resource/bitmap/BitmapTransitionOptions;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public crossFade()Lcom/bumptech/glide/load/resource/bitmap/BitmapTransitionOptions;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory$Builder;

    invoke-direct {v0}, Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory$Builder;-><init>()V

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/load/resource/bitmap/BitmapTransitionOptions;->crossFade(Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory$Builder;)Lcom/bumptech/glide/load/resource/bitmap/BitmapTransitionOptions;

    move-result-object v0

    return-object v0
.end method

.method public crossFade(I)Lcom/bumptech/glide/load/resource/bitmap/BitmapTransitionOptions;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory$Builder;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory$Builder;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/load/resource/bitmap/BitmapTransitionOptions;->crossFade(Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory$Builder;)Lcom/bumptech/glide/load/resource/bitmap/BitmapTransitionOptions;

    move-result-object p1

    return-object p1
.end method

.method public crossFade(Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory$Builder;)Lcom/bumptech/glide/load/resource/bitmap/BitmapTransitionOptions;
    .locals 0
    .param p1    # Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory$Builder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p1}, Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory$Builder;->build()Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/load/resource/bitmap/BitmapTransitionOptions;->transitionUsing(Lcom/bumptech/glide/request/transition/TransitionFactory;)Lcom/bumptech/glide/load/resource/bitmap/BitmapTransitionOptions;

    move-result-object p1

    return-object p1
.end method

.method public crossFade(Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory;)Lcom/bumptech/glide/load/resource/bitmap/BitmapTransitionOptions;
    .locals 0
    .param p1    # Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/load/resource/bitmap/BitmapTransitionOptions;->transitionUsing(Lcom/bumptech/glide/request/transition/TransitionFactory;)Lcom/bumptech/glide/load/resource/bitmap/BitmapTransitionOptions;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/bumptech/glide/load/resource/bitmap/BitmapTransitionOptions;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/bumptech/glide/TransitionOptions;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 1

    invoke-super {p0}, Lcom/bumptech/glide/TransitionOptions;->hashCode()I

    move-result v0

    return v0
.end method

.method public transitionUsing(Lcom/bumptech/glide/request/transition/TransitionFactory;)Lcom/bumptech/glide/load/resource/bitmap/BitmapTransitionOptions;
    .locals 1
    .param p1    # Lcom/bumptech/glide/request/transition/TransitionFactory;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/transition/TransitionFactory<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)",
            "Lcom/bumptech/glide/load/resource/bitmap/BitmapTransitionOptions;"
        }
    .end annotation

    new-instance v0, Lcom/bumptech/glide/request/transition/BitmapTransitionFactory;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/request/transition/BitmapTransitionFactory;-><init>(Lcom/bumptech/glide/request/transition/TransitionFactory;)V

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/TransitionOptions;->transition(Lcom/bumptech/glide/request/transition/TransitionFactory;)Lcom/bumptech/glide/TransitionOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/load/resource/bitmap/BitmapTransitionOptions;

    return-object p1
.end method
