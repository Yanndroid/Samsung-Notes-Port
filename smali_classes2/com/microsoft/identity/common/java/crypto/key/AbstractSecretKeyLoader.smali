.class public abstract Lcom/microsoft/identity/common/java/crypto/key/AbstractSecretKeyLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "AbstractSecretKeyLoader"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeSecretKey(Ljava/lang/String;)Ljavax/crypto/SecretKey;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param

    const-string v0, "serializedKey is marked non-null but is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/extras/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/microsoft/identity/common/java/crypto/key/AbstractSecretKeyLoader;->generateKeyFromRawBytes([B)Ljavax/crypto/SecretKey;

    move-result-object p1

    return-object p1
.end method

.method public generateKeyFromRawBytes([B)Ljavax/crypto/SecretKey;
    .locals 2
    .param p1    # [B
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
    .annotation build Llombok/NonNull;
    .end annotation

    const-string v0, "rawBytes is marked non-null but is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/crypto/key/AbstractSecretKeyLoader;->getKeySpecAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method public generateRandomKey()Ljavax/crypto/SecretKey;
    .locals 4
    .annotation build Llombok/NonNull;
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/crypto/key/AbstractSecretKeyLoader;->getKeySpecAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/crypto/key/AbstractSecretKeyLoader;->getKeySize()I

    move-result v1

    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V

    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/microsoft/identity/common/java/exception/ClientException;

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "no_such_algorithm"

    invoke-direct {v1, v3, v2, v0}, Lcom/microsoft/identity/common/java/exception/ClientException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/microsoft/identity/common/java/crypto/key/AbstractSecretKeyLoader;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":generateRandomKey"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/microsoft/identity/common/java/exception/BaseException;->getErrorCode()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public abstract getAlias()Ljava/lang/String;
    .annotation build Llombok/NonNull;
    .end annotation
.end method

.method public abstract getCipherAlgorithm()Ljava/lang/String;
    .annotation build Llombok/NonNull;
    .end annotation
.end method

.method public abstract getKey()Ljavax/crypto/SecretKey;
    .annotation build Llombok/NonNull;
    .end annotation
.end method

.method public abstract getKeySize()I
.end method

.method public abstract getKeySpecAlgorithm()Ljava/lang/String;
    .annotation build Llombok/NonNull;
    .end annotation
.end method

.method public abstract getKeyTypeIdentifier()Ljava/lang/String;
    .annotation build Llombok/NonNull;
    .end annotation
.end method

.method public serializeSecretKey(Ljavax/crypto/SecretKey;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljavax/crypto/SecretKey;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param

    const-string v0, "key is marked non-null but is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/extras/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
