.class final Lio/grpc/internal/GrpcUtil$AcceptEncodingMarshaller;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/InternalMetadata$TrustedAsciiMarshaller;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/GrpcUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AcceptEncodingMarshaller"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/grpc/InternalMetadata$TrustedAsciiMarshaller<",
        "[B>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lio/grpc/internal/GrpcUtil$1;)V
    .locals 0

    invoke-direct {p0}, Lio/grpc/internal/GrpcUtil$AcceptEncodingMarshaller;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic parseAsciiString([B)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/internal/GrpcUtil$AcceptEncodingMarshaller;->parseAsciiString([B)[B

    move-result-object p1

    return-object p1
.end method

.method public parseAsciiString([B)[B
    .locals 0

    return-object p1
.end method

.method public bridge synthetic toAsciiString(Ljava/lang/Object;)[B
    .locals 0

    check-cast p1, [B

    invoke-virtual {p0, p1}, Lio/grpc/internal/GrpcUtil$AcceptEncodingMarshaller;->toAsciiString([B)[B

    move-result-object p1

    return-object p1
.end method

.method public toAsciiString([B)[B
    .locals 0

    return-object p1
.end method
