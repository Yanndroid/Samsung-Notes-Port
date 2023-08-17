.class public final Lio/grpc/okhttp/internal/framed/Settings;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CLIENT_CERTIFICATE_VECTOR_SIZE:I = 0x8

.field public static final COUNT:I = 0xa

.field public static final CURRENT_CWND:I = 0x5

.field public static final DEFAULT_INITIAL_WINDOW_SIZE:I = 0x10000

.field public static final DOWNLOAD_BANDWIDTH:I = 0x2

.field public static final DOWNLOAD_RETRANS_RATE:I = 0x6

.field public static final ENABLE_PUSH:I = 0x2

.field public static final FLAG_CLEAR_PREVIOUSLY_PERSISTED_SETTINGS:I = 0x1

.field public static final FLOW_CONTROL_OPTIONS:I = 0xa

.field public static final FLOW_CONTROL_OPTIONS_DISABLED:I = 0x1

.field public static final HEADER_TABLE_SIZE:I = 0x1

.field public static final INITIAL_WINDOW_SIZE:I = 0x7

.field public static final MAX_CONCURRENT_STREAMS:I = 0x4

.field public static final MAX_FRAME_SIZE:I = 0x5

.field public static final MAX_HEADER_LIST_SIZE:I = 0x6

.field public static final PERSISTED:I = 0x2

.field public static final PERSIST_VALUE:I = 0x1

.field public static final ROUND_TRIP_TIME:I = 0x3

.field public static final UPLOAD_BANDWIDTH:I = 0x1


# instance fields
.field private persistValue:I

.field private persisted:I

.field private set:I

.field private final values:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    new-array v0, v0, [I

    iput-object v0, p0, Lio/grpc/okhttp/internal/framed/Settings;->values:[I

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lio/grpc/okhttp/internal/framed/Settings;->persisted:I

    iput v0, p0, Lio/grpc/okhttp/internal/framed/Settings;->persistValue:I

    iput v0, p0, Lio/grpc/okhttp/internal/framed/Settings;->set:I

    iget-object v1, p0, Lio/grpc/okhttp/internal/framed/Settings;->values:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([II)V

    return-void
.end method

.method public flags(I)I
    .locals 1

    invoke-virtual {p0, p1}, Lio/grpc/okhttp/internal/framed/Settings;->isPersisted(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lio/grpc/okhttp/internal/framed/Settings;->persistValue(I)Z

    move-result p1

    if-eqz p1, :cond_1

    or-int/lit8 v0, v0, 0x1

    :cond_1
    return v0
.end method

.method public get(I)I
    .locals 1

    iget-object v0, p0, Lio/grpc/okhttp/internal/framed/Settings;->values:[I

    aget p1, v0, p1

    return p1
.end method

.method public getClientCertificateVectorSize(I)I
    .locals 1

    iget v0, p0, Lio/grpc/okhttp/internal/framed/Settings;->set:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    iget-object p1, p0, Lio/grpc/okhttp/internal/framed/Settings;->values:[I

    const/16 v0, 0x8

    aget p1, p1, v0

    :cond_0
    return p1
.end method

.method public getCurrentCwnd(I)I
    .locals 1

    iget v0, p0, Lio/grpc/okhttp/internal/framed/Settings;->set:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    iget-object p1, p0, Lio/grpc/okhttp/internal/framed/Settings;->values:[I

    const/4 v0, 0x5

    aget p1, p1, v0

    :cond_0
    return p1
.end method

.method public getDownloadBandwidth(I)I
    .locals 1

    iget v0, p0, Lio/grpc/okhttp/internal/framed/Settings;->set:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    iget-object p1, p0, Lio/grpc/okhttp/internal/framed/Settings;->values:[I

    const/4 v0, 0x2

    aget p1, p1, v0

    :cond_0
    return p1
.end method

.method public getDownloadRetransRate(I)I
    .locals 1

    iget v0, p0, Lio/grpc/okhttp/internal/framed/Settings;->set:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    iget-object p1, p0, Lio/grpc/okhttp/internal/framed/Settings;->values:[I

    const/4 v0, 0x6

    aget p1, p1, v0

    :cond_0
    return p1
.end method

.method public getEnablePush(Z)Z
    .locals 3

    iget v0, p0, Lio/grpc/okhttp/internal/framed/Settings;->set:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object p1, p0, Lio/grpc/okhttp/internal/framed/Settings;->values:[I

    const/4 v0, 0x2

    aget p1, p1, v0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    move p1, v2

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_0
    if-ne p1, v2, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method public getHeaderTableSize()I
    .locals 2

    iget v0, p0, Lio/grpc/okhttp/internal/framed/Settings;->set:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/grpc/okhttp/internal/framed/Settings;->values:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getInitialWindowSize(I)I
    .locals 1

    iget v0, p0, Lio/grpc/okhttp/internal/framed/Settings;->set:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    iget-object p1, p0, Lio/grpc/okhttp/internal/framed/Settings;->values:[I

    const/4 v0, 0x7

    aget p1, p1, v0

    :cond_0
    return p1
.end method

.method public getMaxConcurrentStreams(I)I
    .locals 1

    iget v0, p0, Lio/grpc/okhttp/internal/framed/Settings;->set:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    iget-object p1, p0, Lio/grpc/okhttp/internal/framed/Settings;->values:[I

    const/4 v0, 0x4

    aget p1, p1, v0

    :cond_0
    return p1
.end method

.method public getMaxFrameSize(I)I
    .locals 1

    iget v0, p0, Lio/grpc/okhttp/internal/framed/Settings;->set:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    iget-object p1, p0, Lio/grpc/okhttp/internal/framed/Settings;->values:[I

    const/4 v0, 0x5

    aget p1, p1, v0

    :cond_0
    return p1
.end method

.method public getMaxHeaderListSize(I)I
    .locals 1

    iget v0, p0, Lio/grpc/okhttp/internal/framed/Settings;->set:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    iget-object p1, p0, Lio/grpc/okhttp/internal/framed/Settings;->values:[I

    const/4 v0, 0x6

    aget p1, p1, v0

    :cond_0
    return p1
.end method

.method public getRoundTripTime(I)I
    .locals 1

    iget v0, p0, Lio/grpc/okhttp/internal/framed/Settings;->set:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    iget-object p1, p0, Lio/grpc/okhttp/internal/framed/Settings;->values:[I

    const/4 v0, 0x3

    aget p1, p1, v0

    :cond_0
    return p1
.end method

.method public getUploadBandwidth(I)I
    .locals 1

    iget v0, p0, Lio/grpc/okhttp/internal/framed/Settings;->set:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    iget-object p1, p0, Lio/grpc/okhttp/internal/framed/Settings;->values:[I

    const/4 v0, 0x1

    aget p1, p1, v0

    :cond_0
    return p1
.end method

.method public isFlowControlDisabled()Z
    .locals 3

    iget v0, p0, Lio/grpc/okhttp/internal/framed/Settings;->set:I

    and-int/lit16 v0, v0, 0x400

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/grpc/okhttp/internal/framed/Settings;->values:[I

    const/16 v2, 0xa

    aget v0, v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/4 v2, 0x1

    and-int/2addr v0, v2

    if-eqz v0, :cond_1

    move v1, v2

    :cond_1
    return v1
.end method

.method public isPersisted(I)Z
    .locals 2

    const/4 v0, 0x1

    shl-int p1, v0, p1

    iget v1, p0, Lio/grpc/okhttp/internal/framed/Settings;->persisted:I

    and-int/2addr p1, v1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSet(I)Z
    .locals 2

    const/4 v0, 0x1

    shl-int p1, v0, p1

    iget v1, p0, Lio/grpc/okhttp/internal/framed/Settings;->set:I

    and-int/2addr p1, v1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public merge(Lio/grpc/okhttp/internal/framed/Settings;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    invoke-virtual {p1, v0}, Lio/grpc/okhttp/internal/framed/Settings;->isSet(I)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1, v0}, Lio/grpc/okhttp/internal/framed/Settings;->flags(I)I

    move-result v1

    invoke-virtual {p1, v0}, Lio/grpc/okhttp/internal/framed/Settings;->get(I)I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lio/grpc/okhttp/internal/framed/Settings;->set(III)Lio/grpc/okhttp/internal/framed/Settings;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public persistValue(I)Z
    .locals 2

    const/4 v0, 0x1

    shl-int p1, v0, p1

    iget v1, p0, Lio/grpc/okhttp/internal/framed/Settings;->persistValue:I

    and-int/2addr p1, v1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public set(III)Lio/grpc/okhttp/internal/framed/Settings;
    .locals 4

    iget-object v0, p0, Lio/grpc/okhttp/internal/framed/Settings;->values:[I

    array-length v1, v0

    if-lt p1, v1, :cond_0

    return-object p0

    :cond_0
    const/4 v1, 0x1

    shl-int/2addr v1, p1

    iget v2, p0, Lio/grpc/okhttp/internal/framed/Settings;->set:I

    or-int/2addr v2, v1

    iput v2, p0, Lio/grpc/okhttp/internal/framed/Settings;->set:I

    and-int/lit8 v2, p2, 0x1

    if-eqz v2, :cond_1

    iget v2, p0, Lio/grpc/okhttp/internal/framed/Settings;->persistValue:I

    or-int/2addr v2, v1

    goto :goto_0

    :cond_1
    iget v2, p0, Lio/grpc/okhttp/internal/framed/Settings;->persistValue:I

    not-int v3, v1

    and-int/2addr v2, v3

    :goto_0
    iput v2, p0, Lio/grpc/okhttp/internal/framed/Settings;->persistValue:I

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_2

    iget p2, p0, Lio/grpc/okhttp/internal/framed/Settings;->persisted:I

    or-int/2addr p2, v1

    goto :goto_1

    :cond_2
    iget p2, p0, Lio/grpc/okhttp/internal/framed/Settings;->persisted:I

    not-int v1, v1

    and-int/2addr p2, v1

    :goto_1
    iput p2, p0, Lio/grpc/okhttp/internal/framed/Settings;->persisted:I

    aput p3, v0, p1

    return-object p0
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lio/grpc/okhttp/internal/framed/Settings;->set:I

    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    return v0
.end method
