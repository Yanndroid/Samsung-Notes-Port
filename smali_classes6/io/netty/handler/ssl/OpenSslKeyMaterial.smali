.class interface abstract Lio/netty/handler/ssl/OpenSslKeyMaterial;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/util/ReferenceCounted;


# virtual methods
.method public abstract certificateChain()[Ljava/security/cert/X509Certificate;
.end method

.method public abstract certificateChainAddress()J
.end method

.method public abstract privateKeyAddress()J
.end method

.method public abstract release()Z
.end method

.method public abstract release(I)Z
.end method

.method public abstract retain()Lio/netty/handler/ssl/OpenSslKeyMaterial;
.end method

.method public abstract retain(I)Lio/netty/handler/ssl/OpenSslKeyMaterial;
.end method

.method public abstract touch()Lio/netty/handler/ssl/OpenSslKeyMaterial;
.end method

.method public abstract touch(Ljava/lang/Object;)Lio/netty/handler/ssl/OpenSslKeyMaterial;
.end method
