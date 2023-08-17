.class public Lcom/samsung/android/support/senl/document/SDocCipherInputStream;
.super Lcom/samsung/android/support/senl/document/SDocCipher;
.source "SourceFile"


# instance fields
.field private mBis:Lcom/samsung/android/support/senl/document/SDocCipherBlockInputStream;

.field private mCis:Ljavax/crypto/CipherInputStream;

.field private mFis:Ljava/io/FileInputStream;

.field private mOriginalSize:I

.field private mTotalReadSize:I


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/document/SDocCipher;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/SDocCipherInputStream;->mFis:Ljava/io/FileInputStream;

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/SDocCipherInputStream;->mBis:Lcom/samsung/android/support/senl/document/SDocCipherBlockInputStream;

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/SDocCipherInputStream;->mCis:Ljavax/crypto/CipherInputStream;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/senl/document/SDocCipherInputStream;->mTotalReadSize:I

    iput v0, p0, Lcom/samsung/android/support/senl/document/SDocCipherInputStream;->mOriginalSize:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/document/SDocCipher;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/support/senl/document/SDocCipherInputStream;->mFis:Ljava/io/FileInputStream;

    iput-object p1, p0, Lcom/samsung/android/support/senl/document/SDocCipherInputStream;->mBis:Lcom/samsung/android/support/senl/document/SDocCipherBlockInputStream;

    iput-object p1, p0, Lcom/samsung/android/support/senl/document/SDocCipherInputStream;->mCis:Ljavax/crypto/CipherInputStream;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/senl/document/SDocCipherInputStream;->mTotalReadSize:I

    iput v0, p0, Lcom/samsung/android/support/senl/document/SDocCipherInputStream;->mOriginalSize:I

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/samsung/android/support/senl/document/component/SDocEndTag;

    invoke-direct {v0, p1}, Lcom/samsung/android/support/senl/document/component/SDocEndTag;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-virtual {v0, p2, p1}, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->parse(Ljava/lang/String;Z)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->isEncrypted()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->getEncryptionSalt()[B

    move-result-object p1

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->getEncryptionIv()[B

    move-result-object v1

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->getEncryptionKey()[B

    move-result-object v2

    new-instance v3, Ljavax/crypto/spec/PBEKeySpec;

    iget-object v4, p0, Lcom/samsung/android/support/senl/document/SDocCipher;->mPassword:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    const/16 v5, 0xfa0

    const/16 v6, 0x100

    invoke-direct {v3, v4, p1, v5, v6}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    :try_start_0
    const-string p1, "PBKDF2WithHmacSHA1"

    invoke-static {p1}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object p1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_a

    :try_start_1
    invoke-virtual {p1, v3}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object p1
    :try_end_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_1 .. :try_end_1} :catch_9

    :try_start_2
    const-string v3, "AES/CBC/PKCS7Padding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_2 .. :try_end_2} :catch_7

    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v4, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 v1, 0x4

    :try_start_3
    invoke-virtual {v3, v1, p1, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_3
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/security/InvalidKeyException; {:try_start_3 .. :try_end_3} :catch_5

    :try_start_4
    const-string p1, "AES"

    const/4 v1, 0x3

    invoke-virtual {v3, v2, p1, v1}, Ljavax/crypto/Cipher;->unwrap([BLjava/lang/String;I)Ljava/security/Key;

    move-result-object p1
    :try_end_4
    .catch Ljava/security/InvalidKeyException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_3

    const/4 v1, 0x2

    :try_start_5
    invoke-virtual {v3, v1, p1, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_5
    .catch Ljava/security/InvalidKeyException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_5 .. :try_end_5} :catch_1

    :try_start_6
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, p2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/document/SDocCipherInputStream;->mFis:Ljava/io/FileInputStream;
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->getEncryptionSize()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/support/senl/document/SDocCipherInputStream;->mOriginalSize:I

    new-instance p1, Lcom/samsung/android/support/senl/document/SDocCipherBlockInputStream;

    iget-object p2, p0, Lcom/samsung/android/support/senl/document/SDocCipherInputStream;->mFis:Ljava/io/FileInputStream;

    iget v0, p0, Lcom/samsung/android/support/senl/document/SDocCipherInputStream;->mOriginalSize:I

    invoke-direct {p1, p2, v0}, Lcom/samsung/android/support/senl/document/SDocCipherBlockInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/document/SDocCipherInputStream;->mBis:Lcom/samsung/android/support/senl/document/SDocCipherBlockInputStream;

    new-instance p1, Ljavax/crypto/CipherInputStream;

    iget-object p2, p0, Lcom/samsung/android/support/senl/document/SDocCipherInputStream;->mBis:Lcom/samsung/android/support/senl/document/SDocCipherBlockInputStream;

    invoke-direct {p1, p2, v3}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/document/SDocCipherInputStream;->mCis:Ljavax/crypto/CipherInputStream;

    return-void

    :catch_0
    new-instance p1, Lcom/samsung/android/support/senl/document/exception/InvalidPasswordException;

    const-string p2, "decrypt() - fail12"

    invoke-direct {p1, p2}, Lcom/samsung/android/support/senl/document/exception/InvalidPasswordException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_1
    new-instance p1, Lcom/samsung/android/support/senl/document/exception/InvalidPasswordException;

    const-string p2, "decrypt() - fail11"

    invoke-direct {p1, p2}, Lcom/samsung/android/support/senl/document/exception/InvalidPasswordException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_2
    new-instance p1, Lcom/samsung/android/support/senl/document/exception/InvalidPasswordException;

    const-string p2, "decrypt() - fail10"

    invoke-direct {p1, p2}, Lcom/samsung/android/support/senl/document/exception/InvalidPasswordException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_3
    new-instance p1, Lcom/samsung/android/support/senl/document/exception/InvalidPasswordException;

    const-string p2, "decrypt() - fail9"

    invoke-direct {p1, p2}, Lcom/samsung/android/support/senl/document/exception/InvalidPasswordException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_4
    new-instance p1, Lcom/samsung/android/support/senl/document/exception/InvalidPasswordException;

    const-string p2, "decrypt() - fail8"

    invoke-direct {p1, p2}, Lcom/samsung/android/support/senl/document/exception/InvalidPasswordException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_5
    new-instance p1, Lcom/samsung/android/support/senl/document/exception/InvalidPasswordException;

    const-string p2, "decrypt() - fail7"

    invoke-direct {p1, p2}, Lcom/samsung/android/support/senl/document/exception/InvalidPasswordException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_6
    new-instance p1, Lcom/samsung/android/support/senl/document/exception/InvalidPasswordException;

    const-string p2, "decrypt() - fail6"

    invoke-direct {p1, p2}, Lcom/samsung/android/support/senl/document/exception/InvalidPasswordException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_7
    new-instance p1, Lcom/samsung/android/support/senl/document/exception/InvalidPasswordException;

    const-string p2, "decrypt() - fail5"

    invoke-direct {p1, p2}, Lcom/samsung/android/support/senl/document/exception/InvalidPasswordException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_8
    new-instance p1, Lcom/samsung/android/support/senl/document/exception/InvalidPasswordException;

    const-string p2, "decrypt() - fail4"

    invoke-direct {p1, p2}, Lcom/samsung/android/support/senl/document/exception/InvalidPasswordException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_9
    new-instance p1, Lcom/samsung/android/support/senl/document/exception/InvalidPasswordException;

    const-string p2, "decrypt() - fail2"

    invoke-direct {p1, p2}, Lcom/samsung/android/support/senl/document/exception/InvalidPasswordException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_a
    new-instance p1, Lcom/samsung/android/support/senl/document/exception/InvalidPasswordException;

    const-string p2, "decrypt() - fail1"

    invoke-direct {p1, p2}, Lcom/samsung/android/support/senl/document/exception/InvalidPasswordException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "SDocCipherInputStream() - this file is not locked"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "SDocCipherInputStream() - the file isn\'t exist"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/SDocCipherInputStream;->mCis:Ljavax/crypto/CipherInputStream;

    invoke-virtual {v0}, Ljavax/crypto/CipherInputStream;->close()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/SDocCipherInputStream;->mBis:Lcom/samsung/android/support/senl/document/SDocCipherBlockInputStream;

    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/SDocCipherInputStream;->mFis:Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    return-void
.end method

.method public getReservedSize()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/document/SDocCipherInputStream;->mOriginalSize:I

    return v0
.end method

.method public read([BI)I
    .locals 3

    iget v0, p0, Lcom/samsung/android/support/senl/document/SDocCipherInputStream;->mTotalReadSize:I

    iget v1, p0, Lcom/samsung/android/support/senl/document/SDocCipherInputStream;->mOriginalSize:I

    const/4 v2, -0x1

    if-lt v0, v1, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/document/SDocCipherInputStream;->mCis:Ljavax/crypto/CipherInputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Ljavax/crypto/CipherInputStream;->read([BII)I

    move-result p1

    if-eq p1, v2, :cond_1

    iget p2, p0, Lcom/samsung/android/support/senl/document/SDocCipherInputStream;->mTotalReadSize:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/samsung/android/support/senl/document/SDocCipherInputStream;->mTotalReadSize:I

    iget v0, p0, Lcom/samsung/android/support/senl/document/SDocCipherInputStream;->mOriginalSize:I

    if-le p2, v0, :cond_1

    sub-int/2addr p2, p1

    sub-int p1, v0, p2

    :cond_1
    return p1
.end method
