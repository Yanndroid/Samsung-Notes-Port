.class public final Lio/grpc/InternalDecompressorRegistry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lio/grpc/Internal;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRawAdvertisedMessageEncodings(Lio/grpc/DecompressorRegistry;)[B
    .locals 0
    .annotation build Lio/grpc/Internal;
    .end annotation

    invoke-virtual {p0}, Lio/grpc/DecompressorRegistry;->getRawAdvertisedMessageEncodings()[B

    move-result-object p0

    return-object p0
.end method
