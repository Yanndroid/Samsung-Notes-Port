.class public interface abstract Lcom/bumptech/glide/load/engine/cache/DiskCache;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/engine/cache/DiskCache$Writer;,
        Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;
    }
.end annotation


# virtual methods
.method public abstract clear()V
.end method

.method public abstract delete(Lcom/bumptech/glide/load/Key;)V
.end method

.method public abstract get(Lcom/bumptech/glide/load/Key;)Ljava/io/File;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract put(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/cache/DiskCache$Writer;)V
.end method
