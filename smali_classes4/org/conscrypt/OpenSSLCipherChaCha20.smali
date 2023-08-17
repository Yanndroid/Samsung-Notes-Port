.class public Lorg/conscrypt/OpenSSLCipherChaCha20;
.super Lorg/conscrypt/OpenSSLCipher;
.source "SourceFile"


# static fields
.field public static final synthetic $assertionsDisabled:Z = false

.field private static final BLOCK_SIZE_BYTES:I = 0x40

.field private static final NONCE_SIZE_BYTES:I = 0xc


# instance fields
.field private blockCounter:I

.field private currentBlockConsumedBytes:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/conscrypt/OpenSSLCipherChaCha20;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/conscrypt/OpenSSLCipher;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/conscrypt/OpenSSLCipherChaCha20;->currentBlockConsumedBytes:I

    iput v0, p0, Lorg/conscrypt/OpenSSLCipherChaCha20;->blockCounter:I

    return-void
.end method

.method private reset()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/conscrypt/OpenSSLCipherChaCha20;->blockCounter:I

    iput v0, p0, Lorg/conscrypt/OpenSSLCipherChaCha20;->currentBlockConsumedBytes:I

    return-void
.end method


# virtual methods
.method public checkSupportedKeySize(I)V
    .locals 3

    const/16 v0, 0x20

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported key size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " bytes (must be 32)"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public checkSupportedMode(Lorg/conscrypt/OpenSSLCipher$Mode;)V
    .locals 1

    sget-object v0, Lorg/conscrypt/OpenSSLCipher$Mode;->NONE:Lorg/conscrypt/OpenSSLCipher$Mode;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/security/NoSuchAlgorithmException;

    const-string v0, "Mode must be NONE"

    invoke-direct {p1, v0}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public checkSupportedPadding(Lorg/conscrypt/OpenSSLCipher$Padding;)V
    .locals 1

    sget-object v0, Lorg/conscrypt/OpenSSLCipher$Padding;->NOPADDING:Lorg/conscrypt/OpenSSLCipher$Padding;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljavax/crypto/NoSuchPaddingException;

    const-string v0, "Must be NoPadding"

    invoke-direct {p1, v0}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public doFinalInternal([BII)I
    .locals 0

    invoke-direct {p0}, Lorg/conscrypt/OpenSSLCipherChaCha20;->reset()V

    const/4 p1, 0x0

    return p1
.end method

.method public engineInitInternal([BLjava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 1

    instance-of p1, p2, Ljavax/crypto/spec/IvParameterSpec;

    const/16 v0, 0xc

    if-eqz p1, :cond_1

    check-cast p2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {p2}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object p1

    array-length p1, p1

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object p1

    iput-object p1, p0, Lorg/conscrypt/OpenSSLCipher;->iv:[B

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string p2, "IV must be 12 bytes long"

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-virtual {p0}, Lorg/conscrypt/OpenSSLCipher;->isEncrypting()Z

    move-result p1

    if-eqz p1, :cond_3

    new-array p1, v0, [B

    iput-object p1, p0, Lorg/conscrypt/OpenSSLCipher;->iv:[B

    if-eqz p3, :cond_2

    invoke-virtual {p3, p1}, Ljava/security/SecureRandom;->nextBytes([B)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lorg/conscrypt/NativeCrypto;->RAND_bytes([B)V

    :goto_0
    return-void

    :cond_3
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string p2, "IV must be specified when decrypting"

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getBaseCipherName()Ljava/lang/String;
    .locals 1

    const-string v0, "ChaCha20"

    return-object v0
.end method

.method public getCipherBlockSize()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getOutputSizeForFinal(I)I
    .locals 0

    return p1
.end method

.method public getOutputSizeForUpdate(I)I
    .locals 0

    return p1
.end method

.method public updateInternal([BII[BII)I
    .locals 21

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v5, p4

    move/from16 v3, p5

    array-length v4, v5

    sub-int/2addr v4, v3

    if-gt v2, v4, :cond_2

    iget v4, v0, Lorg/conscrypt/OpenSSLCipherChaCha20;->currentBlockConsumedBytes:I

    const/16 v11, 0x40

    if-lez v4, :cond_1

    rsub-int/lit8 v4, v4, 0x40

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    new-array v12, v11, [B

    new-array v6, v11, [B

    iget v7, v0, Lorg/conscrypt/OpenSSLCipherChaCha20;->currentBlockConsumedBytes:I

    move-object/from16 v8, p1

    invoke-static {v8, v1, v12, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x40

    iget-object v7, v0, Lorg/conscrypt/OpenSSLCipher;->encodedKey:[B

    iget-object v9, v0, Lorg/conscrypt/OpenSSLCipher;->iv:[B

    iget v10, v0, Lorg/conscrypt/OpenSSLCipherChaCha20;->blockCounter:I

    move-object v14, v6

    move-object/from16 v17, v7

    move-object/from16 v18, v9

    move/from16 v19, v10

    invoke-static/range {v12 .. v19}, Lorg/conscrypt/NativeCrypto;->chacha20_encrypt_decrypt([BI[BII[B[BI)V

    iget v7, v0, Lorg/conscrypt/OpenSSLCipherChaCha20;->currentBlockConsumedBytes:I

    invoke-static {v6, v7, v5, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v6, v0, Lorg/conscrypt/OpenSSLCipherChaCha20;->currentBlockConsumedBytes:I

    add-int/2addr v6, v4

    iput v6, v0, Lorg/conscrypt/OpenSSLCipherChaCha20;->currentBlockConsumedBytes:I

    if-ge v6, v11, :cond_0

    return v4

    :cond_0
    const/4 v6, 0x0

    iput v6, v0, Lorg/conscrypt/OpenSSLCipherChaCha20;->currentBlockConsumedBytes:I

    add-int/2addr v1, v4

    add-int/2addr v3, v4

    sub-int v4, v2, v4

    iget v6, v0, Lorg/conscrypt/OpenSSLCipherChaCha20;->blockCounter:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v0, Lorg/conscrypt/OpenSSLCipherChaCha20;->blockCounter:I

    move v6, v3

    move/from16 v20, v4

    move v4, v1

    move/from16 v1, v20

    goto :goto_0

    :cond_1
    move-object/from16 v8, p1

    move v4, v1

    move v1, v2

    move v6, v3

    :goto_0
    iget-object v9, v0, Lorg/conscrypt/OpenSSLCipher;->encodedKey:[B

    iget-object v10, v0, Lorg/conscrypt/OpenSSLCipher;->iv:[B

    iget v12, v0, Lorg/conscrypt/OpenSSLCipherChaCha20;->blockCounter:I

    move-object/from16 v3, p1

    move-object/from16 v5, p4

    move v7, v1

    move-object v8, v9

    move-object v9, v10

    move v10, v12

    invoke-static/range {v3 .. v10}, Lorg/conscrypt/NativeCrypto;->chacha20_encrypt_decrypt([BI[BII[B[BI)V

    rem-int/lit8 v3, v1, 0x40

    iput v3, v0, Lorg/conscrypt/OpenSSLCipherChaCha20;->currentBlockConsumedBytes:I

    iget v3, v0, Lorg/conscrypt/OpenSSLCipherChaCha20;->blockCounter:I

    div-int/2addr v1, v11

    add-int/2addr v3, v1

    iput v3, v0, Lorg/conscrypt/OpenSSLCipherChaCha20;->blockCounter:I

    return v2

    :cond_2
    new-instance v1, Lorg/conscrypt/ShortBufferWithoutStackTraceException;

    const-string v2, "Insufficient output space"

    invoke-direct {v1, v2}, Lorg/conscrypt/ShortBufferWithoutStackTraceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
