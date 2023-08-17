.class public Lcom/sec/svoice/api/SVoice;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CALLTYPE_ONEWAY:I = 0x0

.field public static final CALLTYPE_TWOWAY:I = 0x1

.field public static final SP_ASR:I = 0x1

.field public static final SP_NLU:I = 0x2

.field public static final SP_TTS:I = 0x8

.field public static final seed:[I


# instance fields
.field private deviceId:Ljava/lang/String;

.field private host:Ljava/lang/String;

.field private interface_handle:J

.field private port:I

.field private sentinel:Lcom/sec/svoice/api/SVoiceSentinel;

.field private sentinel_handle:J


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "svoiceapi_jar"

    const-string v1, "RELEASE_DATE 2018 Dec 18"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "RELEASE_VER 1.24_OpenSSLUpdate_1.0.2q"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string v1, "Loading svoice dll"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "svoicedll"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v1, "Loading success"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    :goto_0
    const/16 v0, 0x14

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sec/svoice/api/SVoice;->seed:[I

    return-void

    :array_0
    .array-data 4
        0xd3
        0x5a
        0xef
        0x10
        0xb5
        0xc5
        0xb7
        0xc
        0xf8
        0xc2
        0x31
        0xa
        0xb7
        0xee
        0x58
        0x28
        0x45
        0x99
        0xd6
        0x60
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/sec/svoice/api/SVoiceSentinel;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sec/svoice/api/SVoice;->interface_handle:J

    iput-wide v0, p0, Lcom/sec/svoice/api/SVoice;->sentinel_handle:J

    iput-object p1, p0, Lcom/sec/svoice/api/SVoice;->host:Ljava/lang/String;

    iput p2, p0, Lcom/sec/svoice/api/SVoice;->port:I

    const-string p1, "t"

    invoke-virtual {p3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "-"

    invoke-virtual {p3, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    const-string p3, ""

    :goto_0
    array-length v0, p1

    if-lt p2, v0, :cond_0

    iput-object p3, p0, Lcom/sec/svoice/api/SVoice;->deviceId:Ljava/lang/String;

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object p3, p1, p2

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    invoke-static {p3}, Lcom/sec/svoice/api/SVoice;->genDUID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/svoice/api/SVoice;->deviceId:Ljava/lang/String;

    :goto_1
    iput-object p4, p0, Lcom/sec/svoice/api/SVoice;->sentinel:Lcom/sec/svoice/api/SVoiceSentinel;

    iget-object v1, p0, Lcom/sec/svoice/api/SVoice;->host:Ljava/lang/String;

    iget v2, p0, Lcom/sec/svoice/api/SVoice;->port:I

    const/4 v3, 0x0

    const/4 v5, 0x0

    const-string v4, ""

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/svoice/api/SVoice;->createhandle(Ljava/lang/String;IZLjava/lang/String;Z)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/sec/svoice/api/SVoice;->interface_handle:J

    invoke-direct {p0, p1, p2, p4}, Lcom/sec/svoice/api/SVoice;->registersentinel(JLcom/sec/svoice/api/SVoiceSentinel;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/sec/svoice/api/SVoice;->sentinel_handle:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/sec/svoice/api/SVoiceSentinel;ZLjava/lang/String;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sec/svoice/api/SVoice;->interface_handle:J

    iput-wide v0, p0, Lcom/sec/svoice/api/SVoice;->sentinel_handle:J

    iput-object p1, p0, Lcom/sec/svoice/api/SVoice;->host:Ljava/lang/String;

    iput p2, p0, Lcom/sec/svoice/api/SVoice;->port:I

    const-string p1, "t"

    invoke-virtual {p3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "-"

    invoke-virtual {p3, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    const-string p3, ""

    :goto_0
    array-length v0, p1

    if-lt p2, v0, :cond_0

    iput-object p3, p0, Lcom/sec/svoice/api/SVoice;->deviceId:Ljava/lang/String;

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object p3, p1, p2

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    invoke-static {p3}, Lcom/sec/svoice/api/SVoice;->genDUID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/svoice/api/SVoice;->deviceId:Ljava/lang/String;

    :goto_1
    iput-object p4, p0, Lcom/sec/svoice/api/SVoice;->sentinel:Lcom/sec/svoice/api/SVoiceSentinel;

    iget-object v1, p0, Lcom/sec/svoice/api/SVoice;->host:Ljava/lang/String;

    iget v2, p0, Lcom/sec/svoice/api/SVoice;->port:I

    const/4 v5, 0x1

    move-object v0, p0

    move v3, p5

    move-object v4, p6

    invoke-direct/range {v0 .. v5}, Lcom/sec/svoice/api/SVoice;->createhandle(Ljava/lang/String;IZLjava/lang/String;Z)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/sec/svoice/api/SVoice;->interface_handle:J

    invoke-direct {p0, p1, p2, p4}, Lcom/sec/svoice/api/SVoice;->registersentinel(JLcom/sec/svoice/api/SVoiceSentinel;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/sec/svoice/api/SVoice;->sentinel_handle:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/sec/svoice/api/SVoiceSentinel;ZLjava/lang/String;Z)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sec/svoice/api/SVoice;->interface_handle:J

    iput-wide v0, p0, Lcom/sec/svoice/api/SVoice;->sentinel_handle:J

    iput-object p1, p0, Lcom/sec/svoice/api/SVoice;->host:Ljava/lang/String;

    iput p2, p0, Lcom/sec/svoice/api/SVoice;->port:I

    const-string p1, "t"

    invoke-virtual {p3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "-"

    invoke-virtual {p3, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    const-string p3, ""

    :goto_0
    array-length v0, p1

    if-lt p2, v0, :cond_0

    iput-object p3, p0, Lcom/sec/svoice/api/SVoice;->deviceId:Ljava/lang/String;

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object p3, p1, p2

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    invoke-static {p3}, Lcom/sec/svoice/api/SVoice;->genDUID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/svoice/api/SVoice;->deviceId:Ljava/lang/String;

    :goto_1
    iput-object p4, p0, Lcom/sec/svoice/api/SVoice;->sentinel:Lcom/sec/svoice/api/SVoiceSentinel;

    iget-object v1, p0, Lcom/sec/svoice/api/SVoice;->host:Ljava/lang/String;

    iget v2, p0, Lcom/sec/svoice/api/SVoice;->port:I

    move-object v0, p0

    move v3, p5

    move-object v4, p6

    move v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/sec/svoice/api/SVoice;->createhandle(Ljava/lang/String;IZLjava/lang/String;Z)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/sec/svoice/api/SVoice;->interface_handle:J

    invoke-direct {p0, p1, p2, p4}, Lcom/sec/svoice/api/SVoice;->registersentinel(JLcom/sec/svoice/api/SVoiceSentinel;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/sec/svoice/api/SVoice;->sentinel_handle:J

    return-void
.end method

.method private static SHA256(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    const-string v1, "iso-8859-1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Ljava/security/MessageDigest;->update([BII)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    invoke-static {p0}, Lcom/sec/svoice/api/SVoice;->convertToHex([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static convertToHex([B)Ljava/lang/String;
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-lt v3, v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    aget-byte v4, p0, v3

    ushr-int/lit8 v5, v4, 0x4

    and-int/lit8 v5, v5, 0xf

    move v6, v2

    :goto_1
    if-ltz v5, :cond_1

    const/16 v7, 0x9

    if-gt v5, v7, :cond_1

    add-int/lit8 v5, v5, 0x30

    goto :goto_2

    :cond_1
    add-int/lit8 v5, v5, -0xa

    add-int/lit8 v5, v5, 0x61

    :goto_2
    int-to-char v5, v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v5, v4, 0xf

    add-int/lit8 v7, v6, 0x1

    const/4 v8, 0x1

    if-lt v6, v8, :cond_2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    move v6, v7

    goto :goto_1
.end method

.method private native createhandle(Ljava/lang/String;IZLjava/lang/String;Z)J
.end method

.method private native deletehandle(J)Z
.end method

.method private static genDUID(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, ""

    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lcom/sec/svoice/api/SVoice;->seed:[I

    array-length v3, v2

    if-lt v1, v3, :cond_0

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/svoice/api/SVoice;->SHA256(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    :goto_1
    return-object v1

    :cond_0
    aget v2, v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "0"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private native registersentinel(JLcom/sec/svoice/api/SVoiceSentinel;)J
.end method


# virtual methods
.method public GetDeviceID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/svoice/api/SVoice;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public native PrintTickCountDebug(Ljava/lang/String;)V
.end method

.method public native cancel()V
.end method

.method public native close()V
.end method

.method public native connect()V
.end method

.method public destroy()Z
    .locals 2

    iget-wide v0, p0, Lcom/sec/svoice/api/SVoice;->interface_handle:J

    invoke-direct {p0, v0, v1}, Lcom/sec/svoice/api/SVoice;->deletehandle(J)Z

    move-result v0

    return v0
.end method

.method public native enable_log(I)V
.end method

.method public native getTtsCapacity(Ljava/lang/String;)Ljava/util/Properties;
.end method

.method public native get_firstport()I
.end method

.method public native get_secondport()I
.end method

.method public native isConnected()Z
.end method

.method public native keepalive()V
.end method

.method public nlgRequest(Ljava/util/Properties;)V
    .locals 2

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/svoice/api/SVoice;->nlgRequest(Ljava/util/Properties;Ljava/util/Properties;I)V

    return-void
.end method

.method public nlgRequest(Ljava/util/Properties;Ljava/util/Properties;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/svoice/api/SVoice;->nlgRequest(Ljava/util/Properties;Ljava/util/Properties;I)V

    return-void
.end method

.method public native nlgRequest(Ljava/util/Properties;Ljava/util/Properties;I)V
.end method

.method public native nluPrepare(Ljava/util/Properties;)V
.end method

.method public open(Ljava/util/Properties;)Ljava/util/Properties;
    .locals 2

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    const-string v0, "none"

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/svoice/api/SVoice;->open(Ljava/util/Properties;Ljava/lang/String;I)Ljava/util/Properties;

    move-result-object p1

    return-object p1
.end method

.method public open(Ljava/util/Properties;Ljava/lang/String;)Ljava/util/Properties;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/svoice/api/SVoice;->open(Ljava/util/Properties;Ljava/lang/String;I)Ljava/util/Properties;

    move-result-object p1

    return-object p1
.end method

.method public native open(Ljava/util/Properties;Ljava/lang/String;I)Ljava/util/Properties;
.end method

.method public native openParam(Ljava/util/Properties;)Ljava/util/Properties;
.end method

.method public native pds_close(Ljava/lang/String;Ljava/util/Properties;)Ljava/util/Properties;
.end method

.method public native pds_createpam(Ljava/lang/String;Ljava/util/Properties;)Ljava/util/Properties;
.end method

.method public native pds_open(Ljava/lang/String;Ljava/util/Properties;Z)Ljava/util/Properties;
.end method

.method public native pds_wipe(Ljava/lang/String;Ljava/util/Properties;)Ljava/util/Properties;
.end method

.method public native preProcess(Ljava/util/Properties;)V
.end method

.method public prepare(ILjava/util/Properties;Ljava/util/Properties;)V
    .locals 6

    new-instance v4, Ljava/util/Properties;

    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/sec/svoice/api/SVoice;->prepare(ILjava/util/Properties;Ljava/util/Properties;Ljava/util/Properties;I)V

    return-void
.end method

.method public prepare(ILjava/util/Properties;Ljava/util/Properties;Ljava/util/Properties;)V
    .locals 6

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sec/svoice/api/SVoice;->prepare(ILjava/util/Properties;Ljava/util/Properties;Ljava/util/Properties;I)V

    return-void
.end method

.method public native prepare(ILjava/util/Properties;Ljava/util/Properties;Ljava/util/Properties;I)V
.end method

.method public prepare2(ILjava/util/Properties;Ljava/util/Properties;)V
    .locals 6

    new-instance v4, Ljava/util/Properties;

    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    const-string v0, "svoiceapi_jar"

    const-string v1, "Version 1.24_OpenSSLUpdate_1.0.2q"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/sec/svoice/api/SVoice;->prepare2(ILjava/util/Properties;Ljava/util/Properties;Ljava/util/Properties;I)V

    return-void
.end method

.method public prepare2(ILjava/util/Properties;Ljava/util/Properties;Ljava/util/Properties;)V
    .locals 8

    const-string v0, "svoiceapi_jar"

    const-string v1, "Version 1.24_OpenSSLUpdate_1.0.2q"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v2 .. v7}, Lcom/sec/svoice/api/SVoice;->prepare2(ILjava/util/Properties;Ljava/util/Properties;Ljava/util/Properties;I)V

    return-void
.end method

.method public native prepare2(ILjava/util/Properties;Ljava/util/Properties;Ljava/util/Properties;I)V
.end method

.method public native process(Ljava/util/Properties;)V
.end method

.method public native rewind()V
.end method

.method public native send([B)V
.end method

.method public native smg_register(Ljava/util/Properties;)Ljava/util/Properties;
.end method

.method public native time_out(I)V
.end method
