.class public interface abstract Lcom/airbnb/lottie/network/LottieFetchResult;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# virtual methods
.method public abstract bodyByteStream()Ljava/io/InputStream;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract contentType()Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract error()Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract isSuccessful()Z
.end method
