.class public interface abstract Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract clearMemory()V
.end method

.method public abstract get(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract getDirty(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract getMaxSize()J
.end method

.method public abstract put(Landroid/graphics/Bitmap;)V
.end method

.method public abstract setSizeMultiplier(F)V
.end method

.method public abstract trimMemory(I)V
.end method
