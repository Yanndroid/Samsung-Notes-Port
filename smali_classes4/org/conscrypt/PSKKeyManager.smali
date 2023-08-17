.class public interface abstract Lorg/conscrypt/PSKKeyManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/net/ssl/KeyManager;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final MAX_IDENTITY_HINT_LENGTH_BYTES:I = 0x80

.field public static final MAX_IDENTITY_LENGTH_BYTES:I = 0x80

.field public static final MAX_KEY_LENGTH_BYTES:I = 0x100


# virtual methods
.method public abstract chooseClientKeyIdentity(Ljava/lang/String;Ljava/net/Socket;)Ljava/lang/String;
.end method

.method public abstract chooseClientKeyIdentity(Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;
.end method

.method public abstract chooseServerKeyIdentityHint(Ljava/net/Socket;)Ljava/lang/String;
.end method

.method public abstract chooseServerKeyIdentityHint(Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;
.end method

.method public abstract getKey(Ljava/lang/String;Ljava/lang/String;Ljava/net/Socket;)Ljavax/crypto/SecretKey;
.end method

.method public abstract getKey(Ljava/lang/String;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)Ljavax/crypto/SecretKey;
.end method
