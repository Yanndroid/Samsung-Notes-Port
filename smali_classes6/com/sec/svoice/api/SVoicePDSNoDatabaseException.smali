.class public Lcom/sec/svoice/api/SVoicePDSNoDatabaseException;
.super Lcom/sec/svoice/api/SVoicePDSException;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/svoice/api/SVoicePDSException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static create(Ljava/lang/String;I)V
    .locals 3

    if-nez p1, :cond_0

    new-instance p1, Lcom/sec/svoice/api/SVoicePDSNoDatabaseException;

    invoke-direct {p1, p0}, Lcom/sec/svoice/api/SVoicePDSNoDatabaseException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    new-instance v0, Lcom/sec/svoice/api/SVoicePDSNoDatabaseException;

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

    invoke-direct {v0, p0}, Lcom/sec/svoice/api/SVoicePDSNoDatabaseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
