.class public Lcom/samsung/android/support/senl/document/SDocCipherOutputStream;
.super Lcom/samsung/android/support/senl/document/SDocCipher;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "SDocCipherOutputStream"


# instance fields
.field private mBuf:[[B

.field private mCipher:Ljavax/crypto/Cipher;

.field private mCos:Ljavax/crypto/CipherOutputStream;

.field private mCurWriteSize:I

.field private mFEK:Ljavax/crypto/SecretKey;

.field private mFilePath:Ljava/lang/String;

.field private mFos:Ljava/io/FileOutputStream;

.field private mIV:[B

.field private mIvParams:Ljavax/crypto/spec/IvParameterSpec;

.field private mTotalSize:I

.field private mWriteCount:I


# direct methods
.method private constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/document/SDocCipher;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/SDocCipherOutputStream;->mFilePath:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/SDocCipherOutputStream;->mFos:Ljava/io/FileOutputStream;

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/SDocCipherOutputStream;->mCos:Ljavax/crypto/CipherOutputStream;

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/SDocCipherOutputStream;->mCipher:Ljavax/crypto/Cipher;

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/support/senl/document/SDocCipherOutputStream;->mTotalSize:I

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/SDocCipherOutputStream;->mIV:[B

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/SDocCipherOutputStream;->mFEK:Ljavax/crypto/SecretKey;

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/SDocCipherOutputStream;->mBuf:[[B

    iput v1, p0, Lcom/samsung/android/support/senl/document/SDocCipherOutputStream;->mWriteCount:I

    iput v1, p0, Lcom/samsung/android/support/senl/document/SDocCipherOutputStream;->mCurWriteSize:I

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/SDocCipherOutputStream;->mIvParams:Ljavax/crypto/spec/IvParameterSpec;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/document/SDocCipher;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/support/senl/document/SDocCipherOutputStream;->mFilePath:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/support/senl/document/SDocCipherOutputStream;->mFos:Ljava/io/FileOutputStream;

    iput-object p1, p0, Lcom/samsung/android/support/senl/document/SDocCipherOutputStream;->mCos:Ljavax/crypto/CipherOutputStream;

    iput-object p1, p0, Lcom/samsung/android/support/senl/document/SDocCipherOutputStream;->mCipher:Ljavax/crypto/Cipher;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/senl/document/SDocCipherOutputStream;->mTotalSize:I

    iput-object p1, p0, Lcom/samsung/android/support/senl/document/SDocCipherOutputStream;->mIV:[B

    iput-object p1, p0, Lcom/samsung/android/support/senl/document/SDocCipherOutputStream;->mFEK:Ljavax/crypto/SecretKey;

    iput-object p1, p0, Lcom/samsung/android/support/senl/document/SDocCipherOutputStream;->mBuf:[[B

    iput v0, p0, Lcom/samsung/android/support/senl/document/SDocCipherOutputStream;->mWriteCount:I

    iput v0, p0, Lcom/samsung/android/support/senl/document/SDocCipherOutputStream;->mCurWriteSize:I

    iput-object p1, p0, Lcom/samsung/android/support/senl/document/SDocCipherOutputStream;->mIvParams:Ljavax/crypto/spec/IvParameterSpec;

    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/document/SDocCipherOutputStream;->mFos:Ljava/io/FileOutputStream;

    :try_start_0
    const-string p1, "AES"

    invoke-static {p1}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object p1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_4

    const/16 v0, 0x100

    invoke-virtual {p1, v0}, Ljavax/crypto/KeyGenerator;->init(I)V

    invoke-virtual {p1}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/document/SDocCipherOutputStream;->mFEK:Ljavax/crypto/SecretKey;

    :try_start_1
    const-string p1, "AES/CBC/PKCS7Padding"

    invoke-static {p1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/document/SDocCipherOutputStream;->mCipher:Ljavax/crypto/Cipher;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_1 .. :try_end_1} :catch_2

    new-instance p1, Ljava/security/SecureRandom;

    invoke-direct {p1}, Ljava/security/SecureRandom;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/SDocCipherOutputStream;->mCipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/SDocCipherOutputStream;->mIV:[B

    invoke-virtual {p1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-instance p1, Ljavax/crypto/spec/IvParameterSpec;

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/SDocCipherOutputStream;->mIV:[B

    invoke-direct {p1, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/document/SDocCipherOutputStream;->mIvParams:Ljavax/crypto/spec/IvParameterSpec;

    :try_start_2
    iget-object v0, p0, Lcom/samsung/android/support/senl/document/SDocCipherOutputStream;->mCipher:Ljavax/crypto/Cipher;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/samsung/android/support/senl/document/SDocCipherOutputStream;->mFEK:Ljavax/crypto/SecretKey;

    invoke-virtual {v0, v1, v2, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_2
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_2 .. :try_end_2} :catch_0

    new-instance p1, Ljavax/crypto/CipherOutputStream;

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/SDocCipherOutputStream;->mFos:Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/samsung/android/support/senl/document/SDocCipherOutputStream;->mCipher:Ljavax/crypto/Cipher;

    invoke-direct {p1, v0, v1}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/document/SDocCipherOutputStream;->mCos:Ljavax/crypto/CipherOutputStream;

    iput-object p2, p0, Lcom/samsung/android/support/senl/document/SDocCipherOutputStream;->mFilePath:Ljava/lang/String;

    const/4 p1, 0x2

    new-array p1, p1, [I

    fill-array-data p1, :array_0

    const-class p2, B

    invoke-static {p2, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[B

    iput-object p1, p0, Lcom/samsung/android/support/senl/document/SDocCipherOutputStream;->mBuf:[[B

    return-void

    :catch_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "init() - invalid state 5"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "init() - invalid state 4"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "init() - invalid state 3"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "init() - invalid state 2"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "init() - invalid state 1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :array_0
    .array-data 4
        0x2
        0x1000
    .end array-data
.end method


# virtual methods
.method public close()V
    .locals 11

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/SDocCipherOutputStream;->mCos:Ljavax/crypto/CipherOutputStream;

    invoke-virtual {v0}, Ljavax/crypto/CipherOutputStream;->close()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/SDocCipherOutputStream;->mFos:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    const/16 v1, 0x20

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-instance v0, Ljavax/crypto/spec/PBEKeySpec;

    iget-object v2, p0, Lcom/samsung/android/support/senl/document/SDocCipher;->mPassword:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    const/16 v3, 0xfa0

    const/16 v4, 0x100

    invoke-direct {v0, v2, v1, v3, v4}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    :try_start_0
    const-string v2, "PBKDF2WithHmacSHA1"

    invoke-static {v2}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v2
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_8

    :try_start_1
    invoke-virtual {v2, v0}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v0
    :try_end_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_1 .. :try_end_1} :catch_7

    :try_start_2
    iget-object v2, p0, Lcom/samsung/android/support/senl/document/SDocCipherOutputStream;->mCipher:Ljavax/crypto/Cipher;

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/samsung/android/support/senl/document/SDocCipherOutputStream;->mIvParams:Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v2, v3, v0, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_2
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_2 .. :try_end_2} :catch_5

    :try_start_3
    iget-object v0, p0, Lcom/samsung/android/support/senl/document/SDocCipherOutputStream;->mCipher:Ljavax/crypto/Cipher;

    iget-object v2, p0, Lcom/samsung/android/support/senl/document/SDocCipherOutputStream;->mFEK:Ljavax/crypto/SecretKey;

    invoke-virtual {v0, v2}, Ljavax/crypto/Cipher;->wrap(Ljava/security/Key;)[B

    move-result-object v0
    :try_end_3
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/security/InvalidKeyException; {:try_start_3 .. :try_end_3} :catch_3

    iget v2, p0, Lcom/samsung/android/support/senl/document/SDocCipherOutputStream;->mWriteCount:I

    rem-int/lit8 v3, v2, 0x2

    const/4 v4, 0x1

    if-lez v2, :cond_1

    iget v2, p0, Lcom/samsung/android/support/senl/document/SDocCipherOutputStream;->mCurWriteSize:I

    const/16 v5, 0x1000

    if-ge v2, v5, :cond_1

    rsub-int v6, v2, 0x1000

    const/4 v7, 0x0

    if-nez v3, :cond_0

    move v8, v4

    goto :goto_0

    :cond_0
    move v8, v7

    :goto_0
    iget-object v9, p0, Lcom/samsung/android/support/senl/document/SDocCipherOutputStream;->mBuf:[[B

    aget-object v10, v9, v3

    aget-object v9, v9, v3

    invoke-static {v10, v7, v9, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/document/SDocCipherOutputStream;->mBuf:[[B

    aget-object v8, v2, v8

    rsub-int v9, v6, 0x1000

    aget-object v2, v2, v3

    invoke-static {v8, v9, v2, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v5, p0, Lcom/samsung/android/support/senl/document/SDocCipherOutputStream;->mCurWriteSize:I

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/samsung/android/support/senl/document/SDocCipherOutputStream;->mFilePath:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".tag"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :try_start_4
    iget-object v5, p0, Lcom/samsung/android/support/senl/document/SDocCipherOutputStream;->mBuf:[[B

    aget-object v3, v5, v3

    iget v5, p0, Lcom/samsung/android/support/senl/document/SDocCipherOutputStream;->mCurWriteSize:I

    invoke-static {v3, v5, v2}, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->makeFile([BILjava/lang/String;)V
    :try_end_4
    .catch Lcom/samsung/android/support/senl/document/exception/UnsupportedFileException; {:try_start_4 .. :try_end_4} :catch_2

    new-instance v3, Lcom/samsung/android/support/senl/document/component/SDocEndTag;

    const/4 v5, 0x0

    invoke-direct {v3, v5}, Lcom/samsung/android/support/senl/document/component/SDocEndTag;-><init>(Ljava/lang/String;)V

    :try_start_5
    invoke-virtual {v3, v2, v4}, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->parse(Ljava/lang/String;Z)V
    :try_end_5
    .catch Lcom/samsung/android/support/senl/document/exception/UnsupportedFileException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lcom/samsung/android/support/senl/document/exception/UnsupportedVersionException; {:try_start_5 .. :try_end_5} :catch_0

    iget v5, p0, Lcom/samsung/android/support/senl/document/SDocCipherOutputStream;->mTotalSize:I

    iget-object v6, p0, Lcom/samsung/android/support/senl/document/SDocCipherOutputStream;->mIV:[B

    invoke-virtual {v3, v5, v1, v6, v0}, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->setEncryptionInfo(I[B[B[B)V

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->getCreatedTime()J

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->setCreatedTime(J)V

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->getModifiedTime()J

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->setModifiedTime(J)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/SDocCipherOutputStream;->mFilePath:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->writeBytes(Ljava/lang/String;Z)V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-ne v1, v4, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "encrypt() - fail to delete temporary tag file. ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/samsung/android/support/senl/document/util/SDocUtil;->logPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SDocCipherOutputStream"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void

    :catch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "encrypt() - invalid state 15"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "encrypt() - invalid state 14"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "encrypt() - invalid state 13"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "encrypt() - invalid state 12"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "encrypt() - invalid state 11"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "encrypt() - invalid state 10"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "encrypt() - invalid state 9"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "encrypt() - invalid state 8"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "encrypt() - invalid state 7"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public write([BI)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/SDocCipherOutputStream;->mCos:Ljavax/crypto/CipherOutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Ljavax/crypto/CipherOutputStream;->write([BII)V

    iget v0, p0, Lcom/samsung/android/support/senl/document/SDocCipherOutputStream;->mTotalSize:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/samsung/android/support/senl/document/SDocCipherOutputStream;->mTotalSize:I

    move v0, v1

    :goto_0
    if-lez p2, :cond_1

    iget v2, p0, Lcom/samsung/android/support/senl/document/SDocCipherOutputStream;->mCurWriteSize:I

    rsub-int v3, v2, 0x1000

    if-gt v3, p2, :cond_0

    iget-object v4, p0, Lcom/samsung/android/support/senl/document/SDocCipherOutputStream;->mBuf:[[B

    iget v5, p0, Lcom/samsung/android/support/senl/document/SDocCipherOutputStream;->mWriteCount:I

    rem-int/lit8 v5, v5, 0x2

    aget-object v4, v4, v5

    invoke-static {p1, v0, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr p2, v3

    add-int/2addr v0, v3

    iget v2, p0, Lcom/samsung/android/support/senl/document/SDocCipherOutputStream;->mWriteCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/samsung/android/support/senl/document/SDocCipherOutputStream;->mWriteCount:I

    iput v1, p0, Lcom/samsung/android/support/senl/document/SDocCipherOutputStream;->mCurWriteSize:I

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/support/senl/document/SDocCipherOutputStream;->mBuf:[[B

    iget v4, p0, Lcom/samsung/android/support/senl/document/SDocCipherOutputStream;->mWriteCount:I

    rem-int/lit8 v4, v4, 0x2

    aget-object v3, v3, v4

    invoke-static {p1, v0, v3, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Lcom/samsung/android/support/senl/document/SDocCipherOutputStream;->mCurWriteSize:I

    add-int/2addr v2, p2

    iput v2, p0, Lcom/samsung/android/support/senl/document/SDocCipherOutputStream;->mCurWriteSize:I

    move p2, v1

    goto :goto_0

    :cond_1
    return-void
.end method
