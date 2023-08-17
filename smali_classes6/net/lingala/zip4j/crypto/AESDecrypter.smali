.class public Lnet/lingala/zip4j/crypto/AESDecrypter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/lingala/zip4j/crypto/IDecrypter;


# instance fields
.field private KEY_LENGTH:I

.field private MAC_LENGTH:I

.field private final PASSWORD_VERIFIER_LENGTH:I

.field private SALT_LENGTH:I

.field private aesEngine:Lnet/lingala/zip4j/crypto/engine/AESEngine;

.field private aesKey:[B

.field private counterBlock:[B

.field private derivedPasswordVerifier:[B

.field private iv:[B

.field private localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

.field private loopCount:I

.field private mac:Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;

.field private macKey:[B

.field private nonce:I

.field private storedMac:[B


# direct methods
.method public constructor <init>(Lnet/lingala/zip4j/model/LocalFileHeader;[B[B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lnet/lingala/zip4j/crypto/AESDecrypter;->PASSWORD_VERIFIER_LENGTH:I

    const/4 v0, 0x1

    iput v0, p0, Lnet/lingala/zip4j/crypto/AESDecrypter;->nonce:I

    const/4 v0, 0x0

    iput v0, p0, Lnet/lingala/zip4j/crypto/AESDecrypter;->loopCount:I

    if-eqz p1, :cond_0

    iput-object p1, p0, Lnet/lingala/zip4j/crypto/AESDecrypter;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    const/4 p1, 0x0

    iput-object p1, p0, Lnet/lingala/zip4j/crypto/AESDecrypter;->storedMac:[B

    const/16 p1, 0x10

    new-array v0, p1, [B

    iput-object v0, p0, Lnet/lingala/zip4j/crypto/AESDecrypter;->iv:[B

    new-array p1, p1, [B

    iput-object p1, p0, Lnet/lingala/zip4j/crypto/AESDecrypter;->counterBlock:[B

    invoke-direct {p0, p2, p3}, Lnet/lingala/zip4j/crypto/AESDecrypter;->init([B[B)V

    return-void

    :cond_0
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "one of the input parameters is null in AESDecryptor Constructor"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private deriveKey([B[C)[B
    .locals 4

    :try_start_0
    new-instance v0, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;

    const-string v1, "HmacSHA1"

    const-string v2, "ISO-8859-1"

    const/16 v3, 0x3e8

    invoke-direct {v0, v1, v2, p1, v3}, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;-><init>(Ljava/lang/String;Ljava/lang/String;[BI)V

    new-instance p1, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Engine;

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Engine;-><init>(Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;)V

    iget v0, p0, Lnet/lingala/zip4j/crypto/AESDecrypter;->KEY_LENGTH:I

    iget v1, p0, Lnet/lingala/zip4j/crypto/AESDecrypter;->MAC_LENGTH:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p1, p2, v0}, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Engine;->deriveKey([CI)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {p2, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method private init([B[B)V
    .locals 5

    iget-object v0, p0, Lnet/lingala/zip4j/crypto/AESDecrypter;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/LocalFileHeader;->getAesExtraDataRecord()Lnet/lingala/zip4j/model/AESExtraDataRecord;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->getAesStrength()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x10

    const/4 v3, 0x2

    if-eq v0, v1, :cond_2

    if-eq v0, v3, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/16 v0, 0x20

    iput v0, p0, Lnet/lingala/zip4j/crypto/AESDecrypter;->KEY_LENGTH:I

    iput v0, p0, Lnet/lingala/zip4j/crypto/AESDecrypter;->MAC_LENGTH:I

    iput v2, p0, Lnet/lingala/zip4j/crypto/AESDecrypter;->SALT_LENGTH:I

    goto :goto_1

    :cond_0
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    new-instance p2, Ljava/lang/StringBuffer;

    const-string v0, "invalid aes key strength for file: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lnet/lingala/zip4j/crypto/AESDecrypter;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/LocalFileHeader;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/16 v0, 0x18

    iput v0, p0, Lnet/lingala/zip4j/crypto/AESDecrypter;->KEY_LENGTH:I

    iput v0, p0, Lnet/lingala/zip4j/crypto/AESDecrypter;->MAC_LENGTH:I

    const/16 v0, 0xc

    goto :goto_0

    :cond_2
    iput v2, p0, Lnet/lingala/zip4j/crypto/AESDecrypter;->KEY_LENGTH:I

    iput v2, p0, Lnet/lingala/zip4j/crypto/AESDecrypter;->MAC_LENGTH:I

    const/16 v0, 0x8

    :goto_0
    iput v0, p0, Lnet/lingala/zip4j/crypto/AESDecrypter;->SALT_LENGTH:I

    :goto_1
    iget-object v0, p0, Lnet/lingala/zip4j/crypto/AESDecrypter;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/LocalFileHeader;->getPassword()[C

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lnet/lingala/zip4j/crypto/AESDecrypter;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/LocalFileHeader;->getPassword()[C

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_6

    iget-object v0, p0, Lnet/lingala/zip4j/crypto/AESDecrypter;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/LocalFileHeader;->getPassword()[C

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lnet/lingala/zip4j/crypto/AESDecrypter;->deriveKey([B[C)[B

    move-result-object p1

    if-eqz p1, :cond_5

    array-length v0, p1

    iget v1, p0, Lnet/lingala/zip4j/crypto/AESDecrypter;->KEY_LENGTH:I

    iget v2, p0, Lnet/lingala/zip4j/crypto/AESDecrypter;->MAC_LENGTH:I

    add-int v4, v1, v2

    add-int/2addr v4, v3

    if-ne v0, v4, :cond_5

    new-array v0, v1, [B

    iput-object v0, p0, Lnet/lingala/zip4j/crypto/AESDecrypter;->aesKey:[B

    new-array v2, v2, [B

    iput-object v2, p0, Lnet/lingala/zip4j/crypto/AESDecrypter;->macKey:[B

    new-array v2, v3, [B

    iput-object v2, p0, Lnet/lingala/zip4j/crypto/AESDecrypter;->derivedPasswordVerifier:[B

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lnet/lingala/zip4j/crypto/AESDecrypter;->KEY_LENGTH:I

    iget-object v1, p0, Lnet/lingala/zip4j/crypto/AESDecrypter;->macKey:[B

    iget v4, p0, Lnet/lingala/zip4j/crypto/AESDecrypter;->MAC_LENGTH:I

    invoke-static {p1, v0, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lnet/lingala/zip4j/crypto/AESDecrypter;->KEY_LENGTH:I

    iget v1, p0, Lnet/lingala/zip4j/crypto/AESDecrypter;->MAC_LENGTH:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lnet/lingala/zip4j/crypto/AESDecrypter;->derivedPasswordVerifier:[B

    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lnet/lingala/zip4j/crypto/AESDecrypter;->derivedPasswordVerifier:[B

    if-eqz p1, :cond_4

    invoke-static {p2, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, Lnet/lingala/zip4j/crypto/engine/AESEngine;

    iget-object p2, p0, Lnet/lingala/zip4j/crypto/AESDecrypter;->aesKey:[B

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/crypto/engine/AESEngine;-><init>([B)V

    iput-object p1, p0, Lnet/lingala/zip4j/crypto/AESDecrypter;->aesEngine:Lnet/lingala/zip4j/crypto/engine/AESEngine;

    new-instance p1, Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;

    const-string p2, "HmacSHA1"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lnet/lingala/zip4j/crypto/AESDecrypter;->mac:Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;

    iget-object p2, p0, Lnet/lingala/zip4j/crypto/AESDecrypter;->macKey:[B

    invoke-virtual {p1, p2}, Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;->init([B)V

    return-void

    :cond_3
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    new-instance p2, Ljava/lang/StringBuffer;

    const-string v0, "Wrong Password for file: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lnet/lingala/zip4j/crypto/AESDecrypter;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/LocalFileHeader;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x5

    invoke-direct {p1, p2, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;I)V

    throw p1

    :cond_4
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "invalid derived password verifier for AES"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "invalid derived key"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "empty or null password provided for AES Decryptor"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "invalid aes extra data record - in init method of AESDecryptor"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "invalid file header in init method of AESDecryptor"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public decryptData([B)I
    .locals 2

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lnet/lingala/zip4j/crypto/AESDecrypter;->decryptData([BII)I

    move-result p1

    return p1
.end method

.method public decryptData([BII)I
    .locals 6

    iget-object v0, p0, Lnet/lingala/zip4j/crypto/AESDecrypter;->aesEngine:Lnet/lingala/zip4j/crypto/engine/AESEngine;

    if-eqz v0, :cond_3

    move v0, p2

    :goto_0
    add-int v1, p2, p3

    if-lt v0, v1, :cond_0

    return p3

    :cond_0
    add-int/lit8 v2, v0, 0x10

    const/16 v3, 0x10

    if-gt v2, v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    sub-int/2addr v1, v0

    :goto_1
    :try_start_0
    iput v1, p0, Lnet/lingala/zip4j/crypto/AESDecrypter;->loopCount:I

    iget-object v4, p0, Lnet/lingala/zip4j/crypto/AESDecrypter;->mac:Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;

    invoke-virtual {v4, p1, v0, v1}, Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;->update([BII)V

    iget-object v1, p0, Lnet/lingala/zip4j/crypto/AESDecrypter;->iv:[B

    iget v4, p0, Lnet/lingala/zip4j/crypto/AESDecrypter;->nonce:I

    invoke-static {v1, v4, v3}, Lnet/lingala/zip4j/util/Raw;->prepareBuffAESIVBytes([BII)V

    iget-object v1, p0, Lnet/lingala/zip4j/crypto/AESDecrypter;->aesEngine:Lnet/lingala/zip4j/crypto/engine/AESEngine;

    iget-object v3, p0, Lnet/lingala/zip4j/crypto/AESDecrypter;->iv:[B

    iget-object v4, p0, Lnet/lingala/zip4j/crypto/AESDecrypter;->counterBlock:[B

    invoke-virtual {v1, v3, v4}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->processBlock([B[B)I

    const/4 v1, 0x0

    :goto_2
    iget v3, p0, Lnet/lingala/zip4j/crypto/AESDecrypter;->loopCount:I

    if-lt v1, v3, :cond_2

    iget v0, p0, Lnet/lingala/zip4j/crypto/AESDecrypter;->nonce:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/lingala/zip4j/crypto/AESDecrypter;->nonce:I

    move v0, v2

    goto :goto_0

    :cond_2
    add-int v3, v0, v1

    aget-byte v4, p1, v3

    iget-object v5, p0, Lnet/lingala/zip4j/crypto/AESDecrypter;->counterBlock:[B

    aget-byte v5, v5, v1

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, p1, v3
    :try_end_0
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :catch_0
    move-exception p1

    new-instance p2, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {p2, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    throw p1

    :cond_3
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "AES not initialized properly"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getCalculatedAuthenticationBytes()[B
    .locals 1

    iget-object v0, p0, Lnet/lingala/zip4j/crypto/AESDecrypter;->mac:Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;

    invoke-virtual {v0}, Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;->doFinal()[B

    move-result-object v0

    return-object v0
.end method

.method public getPasswordVerifierLength()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getSaltLength()I
    .locals 1

    iget v0, p0, Lnet/lingala/zip4j/crypto/AESDecrypter;->SALT_LENGTH:I

    return v0
.end method

.method public getStoredMac()[B
    .locals 1

    iget-object v0, p0, Lnet/lingala/zip4j/crypto/AESDecrypter;->storedMac:[B

    return-object v0
.end method

.method public setStoredMac([B)V
    .locals 0

    iput-object p1, p0, Lnet/lingala/zip4j/crypto/AESDecrypter;->storedMac:[B

    return-void
.end method
