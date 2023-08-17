.class public abstract Lio/netty/buffer/search/AbstractSearchProcessorFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/buffer/search/SearchProcessorFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newBitapSearchProcessorFactory([B)Lio/netty/buffer/search/BitapSearchProcessorFactory;
    .locals 1

    new-instance v0, Lio/netty/buffer/search/BitapSearchProcessorFactory;

    invoke-direct {v0, p0}, Lio/netty/buffer/search/BitapSearchProcessorFactory;-><init>([B)V

    return-object v0
.end method

.method public static newKmpSearchProcessorFactory([B)Lio/netty/buffer/search/KmpSearchProcessorFactory;
    .locals 1

    new-instance v0, Lio/netty/buffer/search/KmpSearchProcessorFactory;

    invoke-direct {v0, p0}, Lio/netty/buffer/search/KmpSearchProcessorFactory;-><init>([B)V

    return-object v0
.end method
