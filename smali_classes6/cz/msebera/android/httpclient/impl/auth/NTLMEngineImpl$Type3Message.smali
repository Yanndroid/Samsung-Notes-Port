.class Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;
.super Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$NTLMMessage;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Type3Message"
.end annotation


# instance fields
.field public final computeMic:Z

.field public final domainBytes:[B

.field public final exportedSessionKey:[B

.field public final hostBytes:[B

.field public lmResp:[B

.field public ntResp:[B

.field public final sessionKey:[B

.field public final type1Message:[B

.field public final type2Flags:I

.field public final type2Message:[B

.field public final userBytes:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BILjava/lang/String;[B)V
    .locals 12

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v11}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BILjava/lang/String;[BLjava/security/cert/Certificate;[B[B)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BILjava/lang/String;[BLjava/security/cert/Certificate;[B[B)V
    .locals 15

    invoke-static {}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->access$000()Ljava/security/SecureRandom;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object v0, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    invoke-direct/range {v0 .. v14}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;-><init>(Ljava/util/Random;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BILjava/lang/String;[BLjava/security/cert/Certificate;[B[B)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Random;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BILjava/lang/String;[B)V
    .locals 15

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    invoke-direct/range {v0 .. v14}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;-><init>(Ljava/util/Random;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BILjava/lang/String;[BLjava/security/cert/Certificate;[B[B)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Random;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BILjava/lang/String;[BLjava/security/cert/Certificate;[B[B)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p9

    move-object/from16 v2, p11

    move-object/from16 v3, p12

    invoke-direct/range {p0 .. p0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$NTLMMessage;-><init>()V

    if-eqz p1, :cond_c

    iput v1, v0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->type2Flags:I

    move-object/from16 v4, p13

    iput-object v4, v0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->type1Message:[B

    move-object/from16 v4, p14

    iput-object v4, v0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->type2Message:[B

    invoke-static/range {p5 .. p5}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->access$2200(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static/range {p4 .. p4}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->access$2300(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    if-eqz v3, :cond_0

    invoke-direct {v0, v2, v3}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->addGssMicAvsToTargetInfo([BLjava/security/cert/Certificate;)[B

    move-result-object v3

    const/4 v4, 0x1

    iput-boolean v4, v0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->computeMic:Z

    move-object v12, v3

    goto :goto_0

    :cond_0
    iput-boolean v15, v0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->computeMic:Z

    move-object v12, v2

    :goto_0
    new-instance v16, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;

    move-object/from16 v3, v16

    move-object/from16 v4, p1

    move-wide/from16 v5, p2

    move-object v7, v14

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p10

    invoke-direct/range {v3 .. v12}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;-><init>(Ljava/util/Random;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;[B)V

    const/high16 v3, 0x800000

    and-int/2addr v3, v1

    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    if-eqz p10, :cond_2

    :try_start_0
    invoke-virtual/range {v16 .. v16}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->getNTLMv2Response()[B

    move-result-object v2

    iput-object v2, v0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->ntResp:[B

    invoke-virtual/range {v16 .. v16}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->getLMv2Response()[B

    move-result-object v2

    iput-object v2, v0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->lmResp:[B

    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_1

    :goto_1
    invoke-virtual/range {v16 .. v16}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->getLanManagerSessionKey()[B

    move-result-object v2

    goto :goto_2

    :cond_1
    invoke-virtual/range {v16 .. v16}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->getNTLMv2UserSessionKey()[B

    move-result-object v2

    goto :goto_2

    :cond_2
    const/high16 v2, 0x80000

    and-int/2addr v2, v1

    if-eqz v2, :cond_4

    invoke-virtual/range {v16 .. v16}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->getNTLM2SessionResponse()[B

    move-result-object v2

    iput-object v2, v0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->ntResp:[B

    invoke-virtual/range {v16 .. v16}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->getLM2SessionResponse()[B

    move-result-object v2

    iput-object v2, v0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->lmResp:[B

    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual/range {v16 .. v16}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->getNTLM2SessionResponseUserSessionKey()[B

    move-result-object v2

    goto :goto_2

    :cond_4
    invoke-virtual/range {v16 .. v16}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->getNTLMResponse()[B

    move-result-object v2

    iput-object v2, v0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->ntResp:[B

    invoke-virtual/range {v16 .. v16}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->getLMResponse()[B

    move-result-object v2

    iput-object v2, v0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->lmResp:[B

    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual/range {v16 .. v16}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->getNTLMUserSessionKey()[B

    move-result-object v2
    :try_end_0
    .catch Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    new-array v2, v15, [B

    iput-object v2, v0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->ntResp:[B

    invoke-virtual/range {v16 .. v16}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->getLMResponse()[B

    move-result-object v2

    iput-object v2, v0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->lmResp:[B

    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_6

    invoke-virtual/range {v16 .. v16}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->getLanManagerSessionKey()[B

    move-result-object v2

    goto :goto_2

    :cond_6
    invoke-virtual/range {v16 .. v16}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->getLMUserSessionKey()[B

    move-result-object v2

    :goto_2
    and-int/lit8 v3, v1, 0x10

    const/4 v4, 0x0

    if-eqz v3, :cond_8

    const/high16 v3, 0x40000000    # 2.0f

    and-int/2addr v3, v1

    if-eqz v3, :cond_7

    invoke-virtual/range {v16 .. v16}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->getSecondaryKey()[B

    move-result-object v3

    iput-object v3, v0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->exportedSessionKey:[B

    invoke-static {v3, v2}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->RC4([B[B)[B

    move-result-object v2

    iput-object v2, v0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->sessionKey:[B

    goto :goto_3

    :cond_7
    iput-object v2, v0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->sessionKey:[B

    iput-object v2, v0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->exportedSessionKey:[B

    goto :goto_3

    :cond_8
    iget-boolean v2, v0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->computeMic:Z

    if-nez v2, :cond_b

    iput-object v4, v0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->sessionKey:[B

    iput-object v4, v0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->exportedSessionKey:[B

    :goto_3
    invoke-static/range {p9 .. p9}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->access$2500(I)Ljava/nio/charset/Charset;

    move-result-object v1

    if-eqz v13, :cond_9

    invoke-virtual {v13, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    goto :goto_4

    :cond_9
    move-object v2, v4

    :goto_4
    iput-object v2, v0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->hostBytes:[B

    if-eqz v14, :cond_a

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v14, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    :cond_a
    iput-object v4, v0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->domainBytes:[B

    move-object/from16 v2, p6

    invoke-virtual {v2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    iput-object v1, v0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->userBytes:[B

    return-void

    :cond_b
    new-instance v1, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;

    const-string v2, "Cannot sign/seal: no exported session key"

    invoke-direct {v1, v2}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_c
    new-instance v1, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;

    const-string v2, "Random generator not available"

    invoke-direct {v1, v2}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private addGssMicAvsToTargetInfo([BLjava/security/cert/Certificate;)[B
    .locals 7

    array-length v0, p1

    add-int/lit8 v0, v0, 0x8

    const/16 v1, 0x14

    add-int/2addr v0, v1

    new-array v0, v0, [B

    array-length v2, p1

    const/4 v3, 0x4

    sub-int/2addr v2, v3

    const/4 v4, 0x0

    invoke-static {p1, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 p1, 0x6

    invoke-static {v0, p1, v2}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->writeUShort([BII)V

    add-int/lit8 p1, v2, 0x2

    invoke-static {v0, v3, p1}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->writeUShort([BII)V

    add-int/lit8 p1, v2, 0x4

    const/4 v3, 0x2

    invoke-static {v0, v3, p1}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->writeULong([BII)V

    add-int/lit8 p1, v2, 0x8

    const/16 v3, 0xa

    invoke-static {v0, v3, p1}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->writeUShort([BII)V

    add-int/lit8 p1, v2, 0xa

    const/16 v3, 0x10

    invoke-static {v0, v3, p1}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->writeUShort([BII)V

    :try_start_0
    invoke-virtual {p2}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object p1

    const-string p2, "SHA-256"

    invoke-static {p2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    invoke-static {}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->access$2600()[B

    move-result-object p2

    array-length p2, p2

    add-int/2addr p2, v1

    array-length v5, p1

    add-int/2addr p2, v5

    new-array p2, p2, [B

    const/16 v5, 0x35

    invoke-static {p2, v5, v3}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->writeULong([BII)V

    invoke-static {}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->access$2600()[B

    move-result-object v5

    invoke-static {}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->access$2600()[B

    move-result-object v6

    array-length v6, v6

    invoke-static {v5, v4, p2, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->access$2600()[B

    move-result-object v5

    array-length v5, v5

    add-int/2addr v5, v1

    array-length v1, p1

    invoke-static {p1, v4, p2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->getMD5()Ljava/security/MessageDigest;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0xc

    invoke-static {p1, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    :catch_0
    move-exception p1

    new-instance p2, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;

    invoke-virtual {p1}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    new-instance p2, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;

    invoke-virtual {p1}, Ljava/security/cert/CertificateEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method public buildMessage()V
    .locals 15

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->ntResp:[B

    array-length v0, v0

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->lmResp:[B

    array-length v1, v1

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->domainBytes:[B

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    array-length v2, v2

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->hostBytes:[B

    if-eqz v4, :cond_1

    array-length v4, v4

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    iget-object v5, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->userBytes:[B

    array-length v5, v5

    iget-object v6, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->sessionKey:[B

    if-eqz v6, :cond_2

    array-length v6, v6

    goto :goto_2

    :cond_2
    move v6, v3

    :goto_2
    iget-boolean v7, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->computeMic:Z

    if-eqz v7, :cond_3

    const/16 v7, 0x10

    goto :goto_3

    :cond_3
    move v7, v3

    :goto_3
    add-int/lit8 v7, v7, 0x48

    add-int v8, v7, v1

    add-int v9, v8, v0

    add-int v10, v9, v2

    add-int v11, v10, v5

    add-int v12, v11, v4

    add-int v13, v12, v6

    const/4 v14, 0x3

    invoke-virtual {p0, v13, v14}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$NTLMMessage;->prepareResponse(II)V

    invoke-virtual {p0, v1}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$NTLMMessage;->addUShort(I)V

    invoke-virtual {p0, v1}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$NTLMMessage;->addUShort(I)V

    invoke-virtual {p0, v7}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$NTLMMessage;->addULong(I)V

    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$NTLMMessage;->addUShort(I)V

    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$NTLMMessage;->addUShort(I)V

    invoke-virtual {p0, v8}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$NTLMMessage;->addULong(I)V

    invoke-virtual {p0, v2}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$NTLMMessage;->addUShort(I)V

    invoke-virtual {p0, v2}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$NTLMMessage;->addUShort(I)V

    invoke-virtual {p0, v9}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$NTLMMessage;->addULong(I)V

    invoke-virtual {p0, v5}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$NTLMMessage;->addUShort(I)V

    invoke-virtual {p0, v5}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$NTLMMessage;->addUShort(I)V

    invoke-virtual {p0, v10}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$NTLMMessage;->addULong(I)V

    invoke-virtual {p0, v4}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$NTLMMessage;->addUShort(I)V

    invoke-virtual {p0, v4}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$NTLMMessage;->addUShort(I)V

    invoke-virtual {p0, v11}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$NTLMMessage;->addULong(I)V

    invoke-virtual {p0, v6}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$NTLMMessage;->addUShort(I)V

    invoke-virtual {p0, v6}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$NTLMMessage;->addUShort(I)V

    invoke-virtual {p0, v12}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$NTLMMessage;->addULong(I)V

    iget v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->type2Flags:I

    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$NTLMMessage;->addULong(I)V

    const/16 v0, 0x105

    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$NTLMMessage;->addUShort(I)V

    const/16 v0, 0xa28

    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$NTLMMessage;->addULong(I)V

    const/16 v0, 0xf00

    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$NTLMMessage;->addUShort(I)V

    const/4 v0, -0x1

    iget-boolean v1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->computeMic:Z

    if-eqz v1, :cond_4

    iget v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$NTLMMessage;->currentOutputPosition:I

    add-int/lit8 v1, v0, 0x10

    iput v1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$NTLMMessage;->currentOutputPosition:I

    :cond_4
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->lmResp:[B

    invoke-virtual {p0, v1}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$NTLMMessage;->addBytes([B)V

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->ntResp:[B

    invoke-virtual {p0, v1}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$NTLMMessage;->addBytes([B)V

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->domainBytes:[B

    invoke-virtual {p0, v1}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$NTLMMessage;->addBytes([B)V

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->userBytes:[B

    invoke-virtual {p0, v1}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$NTLMMessage;->addBytes([B)V

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->hostBytes:[B

    invoke-virtual {p0, v1}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$NTLMMessage;->addBytes([B)V

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->sessionKey:[B

    if-eqz v1, :cond_5

    invoke-virtual {p0, v1}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$NTLMMessage;->addBytes([B)V

    :cond_5
    iget-boolean v1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->computeMic:Z

    if-eqz v1, :cond_6

    new-instance v1, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$HMACMD5;

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->exportedSessionKey:[B

    invoke-direct {v1, v2}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$HMACMD5;-><init>([B)V

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->type1Message:[B

    invoke-virtual {v1, v2}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$HMACMD5;->update([B)V

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->type2Message:[B

    invoke-virtual {v1, v2}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$HMACMD5;->update([B)V

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$NTLMMessage;->messageContents:[B

    invoke-virtual {v1, v2}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$HMACMD5;->update([B)V

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$HMACMD5;->getOutput()[B

    move-result-object v1

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$NTLMMessage;->messageContents:[B

    array-length v4, v1

    invoke-static {v1, v3, v2, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_6
    return-void
.end method

.method public getEncryptedRandomSessionKey()[B
    .locals 1

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->sessionKey:[B

    return-object v0
.end method

.method public getExportedSessionKey()[B
    .locals 1

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type3Message;->exportedSessionKey:[B

    return-object v0
.end method
