.class interface abstract Lio/grpc/internal/DnsNameResolver$ResourceResolverFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/DnsNameResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ResourceResolverFactory"
.end annotation


# virtual methods
.method public abstract newResourceResolver()Lio/grpc/internal/DnsNameResolver$ResourceResolver;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public abstract unavailabilityCause()Ljava/lang/Throwable;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method
