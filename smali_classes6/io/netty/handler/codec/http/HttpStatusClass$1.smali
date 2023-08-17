.class final enum Lio/netty/handler/codec/http/HttpStatusClass$1;
.super Lio/netty/handler/codec/http/HttpStatusClass;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/http/HttpStatusClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;IIILjava/lang/String;)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lio/netty/handler/codec/http/HttpStatusClass;-><init>(Ljava/lang/String;IIILjava/lang/String;Lio/netty/handler/codec/http/HttpStatusClass$1;)V

    return-void
.end method


# virtual methods
.method public contains(I)Z
    .locals 1

    const/16 v0, 0x64

    if-lt p1, v0, :cond_1

    const/16 v0, 0x258

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
