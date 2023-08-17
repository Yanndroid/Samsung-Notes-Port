.class public Lorg/apache/http/impl/cookie/BasicCommentHandlerHC4;
.super Lorg/apache/http/impl/cookie/AbstractCookieAttributeHandlerHC4;
.source "SourceFile"


# annotations
.annotation build Lorg/apache/http/annotation/Immutable;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/http/impl/cookie/AbstractCookieAttributeHandlerHC4;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Lorg/apache/http/cookie/SetCookie;Ljava/lang/String;)V
    .locals 1

    const-string v0, "Cookie"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {p1, p2}, Lorg/apache/http/cookie/SetCookie;->setComment(Ljava/lang/String;)V

    return-void
.end method
