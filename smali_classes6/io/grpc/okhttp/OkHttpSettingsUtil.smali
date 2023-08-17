.class Lio/grpc/okhttp/OkHttpSettingsUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ENABLE_PUSH:I = 0x2

.field public static final INITIAL_WINDOW_SIZE:I = 0x7

.field public static final MAX_CONCURRENT_STREAMS:I = 0x4

.field public static final MAX_HEADER_LIST_SIZE:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Lio/grpc/okhttp/internal/framed/Settings;I)I
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/okhttp/internal/framed/Settings;->get(I)I

    move-result p0

    return p0
.end method

.method public static isSet(Lio/grpc/okhttp/internal/framed/Settings;I)Z
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/okhttp/internal/framed/Settings;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public static set(Lio/grpc/okhttp/internal/framed/Settings;II)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lio/grpc/okhttp/internal/framed/Settings;->set(III)Lio/grpc/okhttp/internal/framed/Settings;

    return-void
.end method
