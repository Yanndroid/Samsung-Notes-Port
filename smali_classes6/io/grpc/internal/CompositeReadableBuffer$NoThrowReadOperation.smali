.class interface abstract Lio/grpc/internal/CompositeReadableBuffer$NoThrowReadOperation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/internal/CompositeReadableBuffer$ReadOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/CompositeReadableBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NoThrowReadOperation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/grpc/internal/CompositeReadableBuffer$ReadOperation<",
        "TT;>;"
    }
.end annotation


# virtual methods
.method public abstract read(Lio/grpc/internal/ReadableBuffer;ILjava/lang/Object;I)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/internal/ReadableBuffer;",
            "ITT;I)I"
        }
    .end annotation
.end method
