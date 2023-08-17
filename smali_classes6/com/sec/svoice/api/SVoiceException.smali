.class public Lcom/sec/svoice/api/SVoiceException;
.super Ljava/lang/Exception;
.source "SourceFile"


# static fields
.field private static errMessages:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 31

    const-string v0, ""

    const-string v1, "uncategorized error"

    const-string v2, "connection is not established"

    const-string v3, "Return Value is empty"

    const-string v4, "session already exist"

    const-string v5, "session creation failed"

    const-string v6, "illegal operation for the state"

    const-string v7, "SID is missing"

    const-string v8, "given SID may be expired"

    const-string v9, "ASR preparation failed"

    const-string v10, "NLU preparation failed"

    const-string v11, "PDSS preparation failed"

    const-string v12, "PDSS IncorrectClientParamsError"

    const-string v13, "PDSS DB Network Error"

    const-string v14, "PDSS No Posted data"

    const-string v15, "PDSS Internal Error"

    const-string v16, "Invalid Params"

    const-string v17, "PDSS DB NOT EXIST"

    const-string v18, "Need Upgrade"

    const-string v19, "Unable to establish network connection"

    const-string v20, "DNS lookup of network address failed"

    const-string v21, "Remote call timeout exceeded"

    const-string v22, "Backend server is not available"

    const-string v23, "Force Sync Limit exceeded"

    const-string v24, "Sync server is not available"

    const-string v25, "Compress/Decompress of Params failed"

    const-string v26, "Authentication Failed"

    const-string v27, "ASR timeout Error"

    const-string v28, "ASR Recording Timeout Error"

    const-string v29, "NLU Timeout Error"

    const-string v30, ""

    filled-new-array/range {v0 .. v30}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/svoice/api/SVoiceException;->errMessages:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static create(Ljava/lang/String;I)V
    .locals 3

    if-nez p1, :cond_0

    new-instance p1, Lcom/sec/svoice/api/SVoiceException;

    invoke-direct {p1, p0}, Lcom/sec/svoice/api/SVoiceException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    new-instance v0, Lcom/sec/svoice/api/SVoiceException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    invoke-static {p1}, Lcom/sec/svoice/api/SVoiceException;->strerror(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, p0

    const-string p0, "%s: %s"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/sec/svoice/api/SVoiceException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static strerror(I)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    if-ltz p0, :cond_1

    sget-object v1, Lcom/sec/svoice/api/SVoiceException;->errMessages:[Ljava/lang/String;

    array-length v2, v1

    sub-int/2addr v2, v0

    if-lt p0, v2, :cond_0

    goto :goto_0

    :cond_0
    aget-object p0, v1, p0

    return-object p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/sec/svoice/api/SVoiceException;->errMessages:[Ljava/lang/String;

    aget-object p0, p0, v0

    return-object p0
.end method
