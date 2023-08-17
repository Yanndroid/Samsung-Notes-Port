.class public interface abstract Lio/netty/handler/codec/http/cookie/Cookie;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lio/netty/handler/codec/http/cookie/Cookie;",
        ">;"
    }
.end annotation


# static fields
.field public static final UNDEFINED_MAX_AGE:J = -0x8000000000000000L


# virtual methods
.method public abstract domain()Ljava/lang/String;
.end method

.method public abstract isHttpOnly()Z
.end method

.method public abstract isSecure()Z
.end method

.method public abstract maxAge()J
.end method

.method public abstract name()Ljava/lang/String;
.end method

.method public abstract path()Ljava/lang/String;
.end method

.method public abstract setDomain(Ljava/lang/String;)V
.end method

.method public abstract setHttpOnly(Z)V
.end method

.method public abstract setMaxAge(J)V
.end method

.method public abstract setPath(Ljava/lang/String;)V
.end method

.method public abstract setSecure(Z)V
.end method

.method public abstract setValue(Ljava/lang/String;)V
.end method

.method public abstract setWrap(Z)V
.end method

.method public abstract value()Ljava/lang/String;
.end method

.method public abstract wrap()Z
.end method
