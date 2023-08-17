.class public final enum Lcom/microsoft/identity/common/adal/internal/AuthenticationSettings;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/identity/common/adal/internal/AuthenticationSettings;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/identity/common/adal/internal/AuthenticationSettings;

.field private static final DEFAULT_EXPIRATION_BUFFER:I = 0x12c

.field private static final DEFAULT_READ_CONNECT_TIMEOUT:I = 0x7530

.field public static final enum INSTANCE:Lcom/microsoft/identity/common/adal/internal/AuthenticationSettings;

.field private static final SECRET_RAW_KEY_LENGTH:I = 0x20

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActivityPackageName:Ljava/lang/String;

.field private mBrokerPackageName:Ljava/lang/String;

.field private final mBrokerSecretKeys:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field private mBrokerSignature:Ljava/lang/String;

.field private mConnectTimeOut:I

.field private mEnableHardwareAcceleration:Z

.field private mExpirationBuffer:I

.field private mIgnoreKeyLoaderNotFoundError:Z

.field private mReadTimeOut:I

.field private mSecretKeyData:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[B>;"
        }
    .end annotation
.end field

.field private mSharedPrefPackageName:Ljava/lang/String;

.field private mUseBroker:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/microsoft/identity/common/adal/internal/AuthenticationSettings;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/microsoft/identity/common/adal/internal/AuthenticationSettings;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/identity/common/adal/internal/AuthenticationSettings;->INSTANCE:Lcom/microsoft/identity/common/adal/internal/AuthenticationSettings;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/microsoft/identity/common/adal/internal/AuthenticationSettings;

    aput-object v0, v1, v2

    sput-object v1, Lcom/microsoft/identity/common/adal/internal/AuthenticationSettings;->$VALUES:[Lcom/microsoft/identity/common/adal/internal/AuthenticationSettings;

    const-class v0, Lcom/microsoft/identity/common/adal/internal/AuthenticationSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/microsoft/identity/common/adal/internal/AuthenticationSettings;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance p1, Ljava/util/HashMap;

    const/4 p2, 0x2

    invoke-direct {p1, p2}, Ljava/util/HashMap;-><init>(I)V

    iput-object p1, p0, Lcom/microsoft/identity/common/adal/internal/AuthenticationSettings;->mBrokerSecretKeys:Ljava/util/Map;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lcom/microsoft/identity/common/adal/internal/AuthenticationSettings;->mSecretKeyData:Ljava/util/concurrent/atomic/AtomicReference;

    const-string p1, "com.microsoft.windowsintune.companyportal"

    iput-object p1, p0, Lcom/microsoft/identity/common/adal/internal/AuthenticationSettings;->mBrokerPackageName:Ljava/lang/String;

    const-string p1, "1L4Z9FJCgn5c0VLhyAxC5O9LdlE="

    iput-object p1, p0, Lcom/microsoft/identity/common/adal/internal/AuthenticationSettings;->mBrokerSignature:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/microsoft/identity/common/adal/internal/AuthenticationSettings;->mEnableHardwareAcceleration:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/microsoft/identity/common/adal/internal/AuthenticationSettings;->mUseBroker:Z

    const/16 p2, 0x12c

    iput p2, p0, Lcom/microsoft/identity/common/adal/internal/AuthenticationSettings;->mExpirationBuffer:I

    const/16 p2, 0x7530

    iput p2, p0, Lcom/microsoft/identity/common/adal/internal/AuthenticationSettings;->mConnectTimeOut:I

    iput p2, p0, Lcom/microsoft/identity/common/adal/internal/AuthenticationSettings;->mReadTimeOut:I

    iput-boolean p1, p0, Lcom/microsoft/identity/common/adal/internal/AuthenticationSettings;->mIgnoreKeyLoaderNotFoundError:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/identity/common/adal/internal/AuthenticationSettings;
    .locals 1

    const-class v0, Lcom/microsoft/identity/common/adal/internal/AuthenticationSettings;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/identity/common/adal/internal/AuthenticationSettings;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/identity/common/adal/internal/AuthenticationSettings;
    .locals 1

    sget-object v0, Lcom/microsoft/identity/common/adal/internal/AuthenticationSettings;->$VALUES:[Lcom/microsoft/identity/common/adal/internal/AuthenticationSettings;

    invoke-virtual {v0}, [Lcom/microsoft/identity/common/adal/internal/AuthenticationSettings;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/identity/common/adal/internal/AuthenticationSettings;

    return-object v0
.end method


# virtual methods
.method public clearBrokerSecretKeys()V
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/adal/internal/AuthenticationSettings;->mBrokerSecretKeys:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public clearLegacySecretKeyConfiguration()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/microsoft/identity/common/adal/internal/AuthenticationSettings;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":clearLegacySecretKeyConfiguration"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Clearing legacy secret key configuration."

    invoke-static {v0, v1}, Lcom/microsoft/identity/common/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/microsoft/identity/common/adal/internal/AuthenticationSettings;->mBrokerSecretKeys:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/microsoft/identity/common/adal/internal/AuthenticationSettings;->mSecretKeyData:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public clearSecretKeysForTestCases()V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
        otherwise = 0x5
    .end annotation

    invoke-virtual {p0}, Lcom/microsoft/identity/common/adal/internal/AuthenticationSettings;->clearLegacySecretKeyConfiguration()V

    return-void
.end method

.method public getActivityPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/adal/internal/AuthenticationSettings;->mActivityPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getBrokerPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/adal/internal/AuthenticationSettings;->mBrokerPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getBrokerSecretKeys()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/microsoft/identity/common/adal/internal/AuthenticationSettings;->mBrokerSecretKeys:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getBrokerSignature()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/adal/internal/AuthenticationSettings;->mBrokerSignature:Ljava/lang/String;

    return-object v0
.end method

.method public getConnectTimeOut()I
    .locals 1

    iget v0, p0, Lcom/microsoft/identity/common/adal/internal/AuthenticationSettings;->mConnectTimeOut:I

    return v0
.end method

.method public getDisableWebViewHardwareAcceleration()Z
    .locals 1

    iget-boolean v0, p0, Lcom/microsoft/identity/common/adal/internal/AuthenticationSettings;->mEnableHardwareAcceleration:Z

    return v0
.end method

.method public getExpirationBuffer()I
    .locals 1

    iget v0, p0, Lcom/microsoft/identity/common/adal/internal/AuthenticationSettings;->mExpirationBuffer:I

    return v0
.end method

.method public getReadTimeOut()I
    .locals 1

    iget v0, p0, Lcom/microsoft/identity/common/adal/internal/AuthenticationSettings;->mReadTimeOut:I

    return v0
.end method

.method public getSecretKeyData()[B
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/adal/internal/AuthenticationSettings;->mSecretKeyData:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getSharedPrefPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/adal/internal/AuthenticationSettings;->mSharedPrefPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getSkipBroker()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Lcom/microsoft/identity/common/adal/internal/AuthenticationSettings;->mUseBroker:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getUseBroker()Z
    .locals 1

    iget-boolean v0, p0, Lcom/microsoft/identity/common/adal/internal/AuthenticationSettings;->mUseBroker:Z

    return v0
.end method

.method public setActivityPackageName(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lcom/microsoft/identity/common/adal/internal/util/StringExtensions;->isNullOrBlank(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/microsoft/identity/common/adal/internal/AuthenticationSettings;->mActivityPackageName:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "activityPackageName cannot be empty or null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setBrokerPackageName(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lcom/microsoft/identity/common/adal/internal/util/StringExtensions;->isNullOrBlank(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/microsoft/identity/common/adal/internal/AuthenticationSettings;->mBrokerPackageName:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "packageName cannot be empty or null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setBrokerSecretKeys(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;)V"
        }
    .end annotation

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    array-length v1, v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/microsoft/identity/common/adal/internal/AuthenticationSettings;->mBrokerSecretKeys:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Passed in raw key is null or length is not as expected. "

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Expect two keys are passed in."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The passed in secret key map is null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setBrokerSignature(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lcom/microsoft/identity/common/adal/internal/util/StringExtensions;->isNullOrBlank(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/microsoft/identity/common/adal/internal/AuthenticationSettings;->mBrokerSignature:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "brokerSignature cannot be empty or null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setConnectTimeOut(I)V
    .locals 1

    if-ltz p1, :cond_0

    iput p1, p0, Lcom/microsoft/identity/common/adal/internal/AuthenticationSettings;->mConnectTimeOut:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid timeOutMillis"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDisableWebViewHardwareAcceleration(Z)V
    .locals 0
    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
        value = {
            "ME_ENUM_FIELD_SETTER"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/microsoft/identity/common/adal/internal/AuthenticationSettings;->mEnableHardwareAcceleration:Z

    return-void
.end method

.method public setExpirationBuffer(I)V
    .locals 0
    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
        value = {
            "ME_ENUM_FIELD_SETTER"
        }
    .end annotation

    iput p1, p0, Lcom/microsoft/identity/common/adal/internal/AuthenticationSettings;->mExpirationBuffer:I

    return-void
.end method

.method public setIgnoreKeyLoaderNotFoundError(Z)V
    .locals 0
    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
        value = {
            "ME_ENUM_FIELD_SETTER"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/microsoft/identity/common/adal/internal/AuthenticationSettings;->mIgnoreKeyLoaderNotFoundError:Z

    return-void
.end method

.method public setReadTimeOut(I)V
    .locals 1

    if-ltz p1, :cond_0

    iput p1, p0, Lcom/microsoft/identity/common/adal/internal/AuthenticationSettings;->mReadTimeOut:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid timeOutMillis"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setSecretKey([B)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/microsoft/identity/common/adal/internal/AuthenticationSettings;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":setSecretKey"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_0

    array-length v1, p1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_0

    const-string v1, "You\'re using setSecretKey in a version of android that supports keyStore functionality.  Consider not doing this, as it only exists for devices with an SDK lower than 18"

    invoke-static {v0, v1}, Lcom/microsoft/identity/common/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/microsoft/identity/common/adal/internal/AuthenticationSettings;->mSecretKeyData:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "rawKey"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setSharedPrefPackageName(Ljava/lang/String;)V
    .locals 0
    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
        value = {
            "ME_ENUM_FIELD_SETTER"
        }
    .end annotation

    iput-object p1, p0, Lcom/microsoft/identity/common/adal/internal/AuthenticationSettings;->mSharedPrefPackageName:Ljava/lang/String;

    return-void
.end method

.method public setSkipBroker(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/microsoft/identity/common/adal/internal/AuthenticationSettings;->mUseBroker:Z

    return-void
.end method

.method public setUseBroker(Z)V
    .locals 0
    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
        value = {
            "ME_ENUM_FIELD_SETTER"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/microsoft/identity/common/adal/internal/AuthenticationSettings;->mUseBroker:Z

    return-void
.end method

.method public shouldIgnoreKeyLoaderNotFoundError()Z
    .locals 1

    iget-boolean v0, p0, Lcom/microsoft/identity/common/adal/internal/AuthenticationSettings;->mIgnoreKeyLoaderNotFoundError:Z

    return v0
.end method
