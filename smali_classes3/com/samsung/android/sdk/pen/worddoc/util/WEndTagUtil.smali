.class public final Lcom/samsung/android/sdk/pen/worddoc/util/WEndTagUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mNativeHandle:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdk/pen/worddoc/util/WEndTagUtil;->mNativeHandle:J

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/worddoc/util/WEndTagUtil;->WEndTagUtil_init(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdk/pen/worddoc/util/WEndTagUtil;->mNativeHandle:J

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(I)V

    goto :goto_0

    :pswitch_0
    new-instance p1, Lcom/samsung/android/sdk/pen/document/SpenUnsupportedTypeException;

    const-string v0, "E_UNSUPPORTED_TYPE : It does not correspond to the WNote file format"

    invoke-direct {p1, v0}, Lcom/samsung/android/sdk/pen/document/SpenUnsupportedTypeException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_1
    new-instance p1, Lcom/samsung/android/sdk/pen/document/SpenUnsupportedVersionException;

    const-string v0, "E_UNSUPPORTED_VERSION : Unsupported version of WNote file format"

    invoke-direct {p1, v0}, Lcom/samsung/android/sdk/pen/document/SpenUnsupportedVersionException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_2
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1

    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private native WEndTagUtil_append(JLjava/lang/String;)Z
.end method

.method private native WEndTagUtil_finalize(J)V
.end method

.method private native WEndTagUtil_getDocumentType(J)I
.end method

.method private native WEndTagUtil_getEncryptionIv(J)[B
.end method

.method private native WEndTagUtil_getEncryptionKey(J)[B
.end method

.method private native WEndTagUtil_getEncryptionSalt(J)[B
.end method

.method private native WEndTagUtil_getEncryptionSize(J)I
.end method

.method private native WEndTagUtil_init(Ljava/lang/String;)J
.end method

.method private native WEndTagUtil_isEncrypted(J)Z
.end method

.method private native WEndTagUtil_removeEncryptionInfo(J)Z
.end method

.method private native WEndTagUtil_replace(JLjava/lang/String;)Z
.end method

.method private native WEndTagUtil_setDocumentType(JI)Z
.end method

.method private native WEndTagUtil_setEncryptionInfo(JI[B[B[B)Z
.end method


# virtual methods
.method public append(Ljava/lang/String;)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/worddoc/util/WEndTagUtil;->mNativeHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/sdk/pen/worddoc/util/WEndTagUtil;->WEndTagUtil_append(JLjava/lang/String;)Z

    return-void
.end method

.method public finalize()V
    .locals 2

    :try_start_0
    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/worddoc/util/WEndTagUtil;->mNativeHandle:J

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/pen/worddoc/util/WEndTagUtil;->WEndTagUtil_finalize(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdk/pen/worddoc/util/WEndTagUtil;->mNativeHandle:J

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getDocumentType()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$DocumentType;
    .locals 3

    invoke-static {}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$DocumentType;->values()[Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$DocumentType;

    move-result-object v0

    iget-wide v1, p0, Lcom/samsung/android/sdk/pen/worddoc/util/WEndTagUtil;->mNativeHandle:J

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/sdk/pen/worddoc/util/WEndTagUtil;->WEndTagUtil_getDocumentType(J)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getEncryptionIv()[B
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/worddoc/util/WEndTagUtil;->mNativeHandle:J

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/pen/worddoc/util/WEndTagUtil;->WEndTagUtil_getEncryptionIv(J)[B

    move-result-object v0

    return-object v0
.end method

.method public getEncryptionKey()[B
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/worddoc/util/WEndTagUtil;->mNativeHandle:J

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/pen/worddoc/util/WEndTagUtil;->WEndTagUtil_getEncryptionKey(J)[B

    move-result-object v0

    return-object v0
.end method

.method public getEncryptionSalt()[B
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/worddoc/util/WEndTagUtil;->mNativeHandle:J

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/pen/worddoc/util/WEndTagUtil;->WEndTagUtil_getEncryptionSalt(J)[B

    move-result-object v0

    return-object v0
.end method

.method public getEncryptionSize()I
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/worddoc/util/WEndTagUtil;->mNativeHandle:J

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/pen/worddoc/util/WEndTagUtil;->WEndTagUtil_getEncryptionSize(J)I

    move-result v0

    return v0
.end method

.method public isEncrypted()Z
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/worddoc/util/WEndTagUtil;->mNativeHandle:J

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/pen/worddoc/util/WEndTagUtil;->WEndTagUtil_isEncrypted(J)Z

    move-result v0

    return v0
.end method

.method public removeEncryptionInfo()V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/worddoc/util/WEndTagUtil;->mNativeHandle:J

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/pen/worddoc/util/WEndTagUtil;->WEndTagUtil_removeEncryptionInfo(J)Z

    return-void
.end method

.method public replace(Ljava/lang/String;)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/worddoc/util/WEndTagUtil;->mNativeHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/sdk/pen/worddoc/util/WEndTagUtil;->WEndTagUtil_replace(JLjava/lang/String;)Z

    return-void
.end method

.method public setDocumentType(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$DocumentType;)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/worddoc/util/WEndTagUtil;->mNativeHandle:J

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/sdk/pen/worddoc/util/WEndTagUtil;->WEndTagUtil_setDocumentType(JI)Z

    return-void
.end method

.method public setEncryptionInfo(I[B[B[B)V
    .locals 7

    iget-wide v1, p0, Lcom/samsung/android/sdk/pen/worddoc/util/WEndTagUtil;->mNativeHandle:J

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/sdk/pen/worddoc/util/WEndTagUtil;->WEndTagUtil_setEncryptionInfo(JI[B[B[B)Z

    return-void
.end method
