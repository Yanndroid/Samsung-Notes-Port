.class final Lio/netty/handler/codec/http/DefaultLastHttpContent$TrailingHttpHeaders;
.super Lio/netty/handler/codec/http/DefaultHttpHeaders;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/http/DefaultLastHttpContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TrailingHttpHeaders"
.end annotation


# static fields
.field private static final TrailerNameValidator:Lio/netty/handler/codec/DefaultHeaders$NameValidator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/handler/codec/DefaultHeaders$NameValidator<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/netty/handler/codec/http/DefaultLastHttpContent$TrailingHttpHeaders$1;

    invoke-direct {v0}, Lio/netty/handler/codec/http/DefaultLastHttpContent$TrailingHttpHeaders$1;-><init>()V

    sput-object v0, Lio/netty/handler/codec/http/DefaultLastHttpContent$TrailingHttpHeaders;->TrailerNameValidator:Lio/netty/handler/codec/DefaultHeaders$NameValidator;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Lio/netty/handler/codec/http/DefaultLastHttpContent$TrailingHttpHeaders;->TrailerNameValidator:Lio/netty/handler/codec/DefaultHeaders$NameValidator;

    goto :goto_0

    :cond_0
    sget-object v0, Lio/netty/handler/codec/DefaultHeaders$NameValidator;->NOT_NULL:Lio/netty/handler/codec/DefaultHeaders$NameValidator;

    :goto_0
    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/http/DefaultHttpHeaders;-><init>(ZLio/netty/handler/codec/DefaultHeaders$NameValidator;)V

    return-void
.end method
