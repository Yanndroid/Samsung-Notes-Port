.class public Lcom/microsoft/identity/common/java/telemetry/CliTelemInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final HEADER_FORMAT_REGULAR_EXPRESSION:Ljava/util/regex/Pattern;

.field private static final TAG:Ljava/lang/String;

.field private static final serialVersionUID:J = -0x63edb12793a72ba2L


# instance fields
.field private mRefreshTokenAge:Ljava/lang/String;

.field private mServerErrorCode:Ljava/lang/String;

.field private mServerSubErrorCode:Ljava/lang/String;

.field private mSpeRing:Ljava/lang/String;

.field private mVersion:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/microsoft/identity/common/java/telemetry/CliTelemInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/microsoft/identity/common/java/telemetry/CliTelemInfo;->TAG:Ljava/lang/String;

    const-string v0, "^[1-9]+\\.?[0-9|\\.]*,[0-9|\\.]*,[0-9|\\.]*,[^,]*[0-9\\.]*,[^,]*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/microsoft/identity/common/java/telemetry/CliTelemInfo;->HEADER_FORMAT_REGULAR_EXPRESSION:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/identity/common/java/telemetry/CliTelemInfo;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/microsoft/identity/common/java/telemetry/CliTelemInfo;->mVersion:Ljava/lang/String;

    iput-object v0, p0, Lcom/microsoft/identity/common/java/telemetry/CliTelemInfo;->mVersion:Ljava/lang/String;

    iget-object v0, p1, Lcom/microsoft/identity/common/java/telemetry/CliTelemInfo;->mServerErrorCode:Ljava/lang/String;

    iput-object v0, p0, Lcom/microsoft/identity/common/java/telemetry/CliTelemInfo;->mServerErrorCode:Ljava/lang/String;

    iget-object v0, p1, Lcom/microsoft/identity/common/java/telemetry/CliTelemInfo;->mServerSubErrorCode:Ljava/lang/String;

    iput-object v0, p0, Lcom/microsoft/identity/common/java/telemetry/CliTelemInfo;->mServerSubErrorCode:Ljava/lang/String;

    iget-object v0, p1, Lcom/microsoft/identity/common/java/telemetry/CliTelemInfo;->mRefreshTokenAge:Ljava/lang/String;

    iput-object v0, p0, Lcom/microsoft/identity/common/java/telemetry/CliTelemInfo;->mRefreshTokenAge:Ljava/lang/String;

    iget-object p1, p1, Lcom/microsoft/identity/common/java/telemetry/CliTelemInfo;->mSpeRing:Ljava/lang/String;

    iput-object p1, p0, Lcom/microsoft/identity/common/java/telemetry/CliTelemInfo;->mSpeRing:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static fromXMsCliTelemHeader(Ljava/lang/String;)Lcom/microsoft/identity/common/java/telemetry/CliTelemInfo;
    .locals 5
    .annotation build Ledu/umd/cs/findbugs/annotations/Nullable;
    .end annotation

    invoke-static {p0}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    if-nez v3, :cond_1

    sget-object p0, Lcom/microsoft/identity/common/java/telemetry/CliTelemInfo;->TAG:Ljava/lang/String;

    const-string v0, "SPE Ring header missing version field."

    :goto_0
    invoke-static {p0, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_1
    const/4 v3, 0x0

    aget-object v2, v2, v3

    new-instance v3, Lcom/microsoft/identity/common/java/telemetry/CliTelemInfo;

    invoke-direct {v3}, Lcom/microsoft/identity/common/java/telemetry/CliTelemInfo;-><init>()V

    invoke-virtual {v3, v2}, Lcom/microsoft/identity/common/java/telemetry/CliTelemInfo;->setVersion(Ljava/lang/String;)V

    const-string v4, "1"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/microsoft/identity/common/java/telemetry/CliTelemInfo;->HEADER_FORMAT_REGULAR_EXPRESSION:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_2

    sget-object p0, Lcom/microsoft/identity/common/java/telemetry/CliTelemInfo;->TAG:Ljava/lang/String;

    const-string v0, "Malformed x-ms-clitelem header"

    goto :goto_0

    :cond_2
    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    aget-object v0, p0, v0

    invoke-virtual {v3, v0}, Lcom/microsoft/identity/common/java/telemetry/CliTelemInfo;->setServerErrorCode(Ljava/lang/String;)V

    const/4 v0, 0x2

    aget-object v0, p0, v0

    invoke-virtual {v3, v0}, Lcom/microsoft/identity/common/java/telemetry/CliTelemInfo;->setServerSubErrorCode(Ljava/lang/String;)V

    const/4 v0, 0x3

    aget-object v0, p0, v0

    invoke-virtual {v3, v0}, Lcom/microsoft/identity/common/java/telemetry/CliTelemInfo;->setRefreshTokenAge(Ljava/lang/String;)V

    const/4 v0, 0x4

    aget-object p0, p0, v0

    invoke-virtual {v3, p0}, Lcom/microsoft/identity/common/java/telemetry/CliTelemInfo;->setSpeRing(Ljava/lang/String;)V

    return-object v3

    :cond_3
    sget-object p0, Lcom/microsoft/identity/common/java/telemetry/CliTelemInfo;->TAG:Ljava/lang/String;

    const-string v0, "Unrecognized x-ms-clitelem header version"

    goto :goto_0
.end method


# virtual methods
.method public getRefreshTokenAge()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/telemetry/CliTelemInfo;->mRefreshTokenAge:Ljava/lang/String;

    return-object v0
.end method

.method public getServerErrorCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/telemetry/CliTelemInfo;->mServerErrorCode:Ljava/lang/String;

    return-object v0
.end method

.method public getServerSubErrorCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/telemetry/CliTelemInfo;->mServerSubErrorCode:Ljava/lang/String;

    return-object v0
.end method

.method public getSpeRing()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/telemetry/CliTelemInfo;->mSpeRing:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/telemetry/CliTelemInfo;->mVersion:Ljava/lang/String;

    return-object v0
.end method

.method public setRefreshTokenAge(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/common/java/telemetry/CliTelemInfo;->mRefreshTokenAge:Ljava/lang/String;

    return-void
.end method

.method public setServerErrorCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/common/java/telemetry/CliTelemInfo;->mServerErrorCode:Ljava/lang/String;

    return-void
.end method

.method public setServerSubErrorCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/common/java/telemetry/CliTelemInfo;->mServerSubErrorCode:Ljava/lang/String;

    return-void
.end method

.method public setSpeRing(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/common/java/telemetry/CliTelemInfo;->mSpeRing:Ljava/lang/String;

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/common/java/telemetry/CliTelemInfo;->mVersion:Ljava/lang/String;

    return-void
.end method
