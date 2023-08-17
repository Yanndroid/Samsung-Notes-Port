.class final Lio/grpc/Status$StatusCodeMarshaller;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/Metadata$TrustedAsciiMarshaller;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/Status;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StatusCodeMarshaller"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/grpc/Metadata$TrustedAsciiMarshaller<",
        "Lio/grpc/Status;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lio/grpc/Status$1;)V
    .locals 0

    invoke-direct {p0}, Lio/grpc/Status$StatusCodeMarshaller;-><init>()V

    return-void
.end method


# virtual methods
.method public parseAsciiString([B)Lio/grpc/Status;
    .locals 0

    invoke-static {p1}, Lio/grpc/Status;->access$400([B)Lio/grpc/Status;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parseAsciiString([B)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/Status$StatusCodeMarshaller;->parseAsciiString([B)Lio/grpc/Status;

    move-result-object p1

    return-object p1
.end method

.method public toAsciiString(Lio/grpc/Status;)[B
    .locals 0

    invoke-virtual {p1}, Lio/grpc/Status;->getCode()Lio/grpc/Status$Code;

    move-result-object p1

    invoke-static {p1}, Lio/grpc/Status$Code;->access$300(Lio/grpc/Status$Code;)[B

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toAsciiString(Ljava/lang/Object;)[B
    .locals 0

    check-cast p1, Lio/grpc/Status;

    invoke-virtual {p0, p1}, Lio/grpc/Status$StatusCodeMarshaller;->toAsciiString(Lio/grpc/Status;)[B

    move-result-object p1

    return-object p1
.end method
