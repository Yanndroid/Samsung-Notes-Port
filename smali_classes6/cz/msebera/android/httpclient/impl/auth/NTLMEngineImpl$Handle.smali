.class Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Handle;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Handle"
.end annotation


# instance fields
.field private final exportedSessionKey:[B

.field private final isConnection:Z

.field public final mode:Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Mode;

.field private final rc4:Ljavax/crypto/Cipher;

.field private sealingKey:[B

.field public sequenceNumber:I

.field private signingKey:[B


# direct methods
.method public constructor <init>([BLcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Mode;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Handle;->sequenceNumber:I

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Handle;->exportedSessionKey:[B

    iput-boolean p3, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Handle;->isConnection:Z

    iput-object p2, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Handle;->mode:Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Mode;

    :try_start_0
    invoke-static {}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->getMD5()Ljava/security/MessageDigest;

    move-result-object p3

    invoke-static {}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->getMD5()Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {p3, p1}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    sget-object p1, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Mode;->CLIENT:Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Mode;

    if-ne p2, p1, :cond_0

    invoke-static {}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->access$1100()[B

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/security/MessageDigest;->update([B)V

    invoke-static {}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->access$1200()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->access$1300()[B

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/security/MessageDigest;->update([B)V

    invoke-static {}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->access$1400()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    :goto_0
    invoke-virtual {p3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Handle;->signingKey:[B

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Handle;->sealingKey:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Handle;->initCipher()Ljavax/crypto/Cipher;

    move-result-object p1

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Handle;->rc4:Ljavax/crypto/Cipher;

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private advanceMessageSequence()V
    .locals 4

    iget-boolean v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Handle;->isConnection:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->getMD5()Ljava/security/MessageDigest;

    move-result-object v0

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Handle;->sealingKey:[B

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    const/4 v1, 0x4

    new-array v1, v1, [B

    iget v2, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Handle;->sequenceNumber:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->writeULong([BII)V

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Handle;->sealingKey:[B

    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Handle;->initCipher()Ljavax/crypto/Cipher;

    :cond_0
    iget v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Handle;->sequenceNumber:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Handle;->sequenceNumber:I

    return-void
.end method

.method private computeSignature([B)[B
    .locals 4

    const/16 v0, 0x10

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-byte v2, v0, v1

    aput-byte v1, v0, v2

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    const/4 v2, 0x3

    aput-byte v1, v0, v2

    new-instance v2, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$HMACMD5;

    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Handle;->signingKey:[B

    invoke-direct {v2, v3}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$HMACMD5;-><init>([B)V

    iget v3, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Handle;->sequenceNumber:I

    invoke-static {v3}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->access$1500(I)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$HMACMD5;->update([B)V

    invoke-virtual {v2, p1}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$HMACMD5;->update([B)V

    invoke-virtual {v2}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$HMACMD5;->getOutput()[B

    move-result-object p1

    const/16 v2, 0x8

    new-array v3, v2, [B

    invoke-static {p1, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-direct {p0, v3}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Handle;->encrypt([B)[B

    move-result-object p1

    const/4 v3, 0x4

    invoke-static {p1, v1, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Handle;->sequenceNumber:I

    const/16 v1, 0xc

    invoke-static {v0, v1, p1}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->access$1600([BII)V

    return-object v0
.end method

.method private decrypt([B)[B
    .locals 1

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Handle;->rc4:Ljavax/crypto/Cipher;

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->update([B)[B

    move-result-object p1

    return-object p1
.end method

.method private encrypt([B)[B
    .locals 1

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Handle;->rc4:Ljavax/crypto/Cipher;

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->update([B)[B

    move-result-object p1

    return-object p1
.end method

.method private initCipher()Ljavax/crypto/Cipher;
    .locals 5

    const-string v0, "RC4"

    :try_start_0
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Handle;->mode:Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Mode;

    sget-object v3, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Mode;->CLIENT:Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Mode;

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Handle;->sealingKey:[B

    invoke-direct {v3, v4, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    :goto_0
    invoke-virtual {v1, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    goto :goto_1

    :cond_0
    const/4 v2, 0x2

    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Handle;->sealingKey:[B

    invoke-direct {v3, v4, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :goto_1
    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private validateSignature([B[B)Z
    .locals 0

    invoke-direct {p0, p2}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Handle;->computeSignature([B)[B

    move-result-object p2

    invoke-static {p1, p2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public decryptAndVerifySignedMessage([B)[B
    .locals 5

    const/16 v0, 0x10

    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v3, p1

    sub-int/2addr v3, v0

    new-array v4, v3, [B

    invoke-static {p1, v0, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-direct {p0, v4}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Handle;->decrypt([B)[B

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Handle;->validateSignature([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Handle;->advanceMessageSequence()V

    return-object p1

    :cond_0
    new-instance p1, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;

    const-string v0, "Wrong signature"

    invoke-direct {p1, v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getSealingKey()[B
    .locals 1

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Handle;->sealingKey:[B

    return-object v0
.end method

.method public getSigningKey()[B
    .locals 1

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Handle;->signingKey:[B

    return-object v0
.end method

.method public signAndEncryptMessage([B)[B
    .locals 4

    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Handle;->encrypt([B)[B

    move-result-object v0

    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Handle;->computeSignature([B)[B

    move-result-object p1

    array-length v1, p1

    array-length v2, v0

    add-int/2addr v1, v2

    new-array v1, v1, [B

    array-length v2, p1

    const/4 v3, 0x0

    invoke-static {p1, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p1, p1

    array-length v2, v0

    invoke-static {v0, v3, v1, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Handle;->advanceMessageSequence()V

    return-object v1
.end method
