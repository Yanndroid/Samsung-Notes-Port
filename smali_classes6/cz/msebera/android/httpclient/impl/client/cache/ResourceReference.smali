.class Lcz/msebera/android/httpclient/impl/client/cache/ResourceReference;
.super Ljava/lang/ref/PhantomReference;
.source "SourceFile"


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/Contract;
    threading = .enum Lcz/msebera/android/httpclient/annotation/ThreadingBehavior;->IMMUTABLE:Lcz/msebera/android/httpclient/annotation/ThreadingBehavior;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/PhantomReference<",
        "Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;",
        ">;"
    }
.end annotation


# instance fields
.field private final resource:Lcz/msebera/android/httpclient/client/cache/Resource;


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Ljava/lang/ref/ReferenceQueue;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;",
            "Ljava/lang/ref/ReferenceQueue<",
            "Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/ref/PhantomReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    invoke-virtual {p1}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->getResource()Lcz/msebera/android/httpclient/client/cache/Resource;

    move-result-object p2

    const-string v0, "Resource"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->getResource()Lcz/msebera/android/httpclient/client/cache/Resource;

    move-result-object p1

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/cache/ResourceReference;->resource:Lcz/msebera/android/httpclient/client/cache/Resource;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/ResourceReference;->resource:Lcz/msebera/android/httpclient/client/cache/Resource;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getResource()Lcz/msebera/android/httpclient/client/cache/Resource;
    .locals 1

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/ResourceReference;->resource:Lcz/msebera/android/httpclient/client/cache/Resource;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/ResourceReference;->resource:Lcz/msebera/android/httpclient/client/cache/Resource;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
