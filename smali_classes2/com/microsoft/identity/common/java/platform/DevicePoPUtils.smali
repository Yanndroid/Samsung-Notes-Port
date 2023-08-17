.class public Lcom/microsoft/identity/common/java/platform/DevicePoPUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized generateSignedHttpRequest(Lcom/microsoft/identity/common/java/interfaces/IPlatformComponents;Lcom/microsoft/identity/common/java/authscheme/IPoPAuthenticationSchemeParams;)Lcom/microsoft/identity/common/java/result/GenerateShrResult;
    .locals 10
    .param p0    # Lcom/microsoft/identity/common/java/interfaces/IPlatformComponents;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/microsoft/identity/common/java/authscheme/IPoPAuthenticationSchemeParams;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param

    const-class v0, Lcom/microsoft/identity/common/java/platform/DevicePoPUtils;

    monitor-enter v0

    if-eqz p0, :cond_2

    if-eqz p1, :cond_1

    :try_start_0
    invoke-interface {p0}, Lcom/microsoft/identity/common/java/interfaces/IPlatformComponents;->getClockSkewManager()Lcom/microsoft/identity/common/java/util/IClockSkewManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/microsoft/identity/common/java/util/IClockSkewManager;->getAdjustedReferenceTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-interface {p1}, Lcom/microsoft/identity/common/java/authscheme/IPoPAuthenticationSchemeParams;->getHttpMethod()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1}, Lcom/microsoft/identity/common/java/authscheme/IPoPAuthenticationSchemeParams;->getUrl()Ljava/net/URL;

    move-result-object v7

    invoke-interface {p1}, Lcom/microsoft/identity/common/java/authscheme/INonced;->getNonce()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1}, Lcom/microsoft/identity/common/java/authscheme/IPoPAuthenticationSchemeParams;->getClientClaims()Ljava/lang/String;

    move-result-object v9

    invoke-interface {p0}, Lcom/microsoft/identity/common/java/interfaces/IPlatformComponents;->getDefaultDevicePopManager()Lcom/microsoft/identity/common/java/crypto/IDevicePopManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/microsoft/identity/common/java/crypto/IDevicePopManager;->asymmetricKeyExists()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-interface {v3}, Lcom/microsoft/identity/common/java/crypto/IDevicePopManager;->generateAsymmetricKey()Ljava/lang/String;

    :cond_0
    const-wide/16 p0, 0x3e8

    div-long v5, v1, p0

    invoke-interface/range {v3 .. v9}, Lcom/microsoft/identity/common/java/crypto/IDevicePopManager;->mintSignedHttpRequest(Ljava/lang/String;JLjava/net/URL;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lcom/microsoft/identity/common/java/result/GenerateShrResult;

    invoke-direct {p1}, Lcom/microsoft/identity/common/java/result/GenerateShrResult;-><init>()V

    invoke-virtual {p1, p0}, Lcom/microsoft/identity/common/java/result/GenerateShrResult;->setShr(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p1

    :cond_1
    :try_start_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "popSchemeParams is marked non-null but is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "platformComponents is marked non-null but is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
