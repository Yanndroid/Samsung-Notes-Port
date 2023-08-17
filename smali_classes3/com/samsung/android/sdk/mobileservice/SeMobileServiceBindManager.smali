.class Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/mobileservice/BindChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager$ServiceHandler;,
        Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager$RequesterServiceHandler;,
        Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager$BindState;
    }
.end annotation


# static fields
.field private static final BIND_CLASS_NAME_AUTH:Ljava/lang/String; = "com.osp.app.signin.service.SemsAidlService"

.field private static final BIND_CLASS_NAME_COMMON:Ljava/lang/String; = "com.samsung.android.mobileservice.commonservice.CommonService"

.field private static final BIND_CLASS_NAME_COMMON_FOR_SA:Ljava/lang/String; = "com.samsung.android.samsungaccount.mobileservice.commonservice.CommonService"

.field private static final BIND_CLASS_NAME_SOCIAL:Ljava/lang/String; = "com.samsung.android.mobileservice.social.MobileServiceSocialService"

.field private static final BIND_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.mobileservice"

.field private static final BIND_REQUEST_SERVICE_AUTH:Ljava/lang/String; = "com.samsung.android.mobileservice.auth.REQUEST_SERVICE"

.field private static final BIND_REQUEST_SERVICE_COMMON:Ljava/lang/String; = "com.samsung.android.mobileservice.common.REQUEST_SERVICE"

.field private static final BIND_REQUEST_SERVICE_PLACE:Ljava/lang/String; = "com.samsung.android.mobileservice.place.REQUEST_SERVICE"

.field private static final BIND_REQUEST_SERVICE_PROFILE:Ljava/lang/String; = "com.samsung.android.mobileservice.profile.REQUEST_SERVICE"

.field private static final EXTRA_APP_ID:Ljava/lang/String; = "app_id"

.field private static final MIN_AGENT_SUPPORT_VERSION:J = 0x0L

.field private static final TAG:Ljava/lang/String; = "SeMobileServiceBindManager"

.field private static sMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bindChangeListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/samsung/android/sdk/mobileservice/BindChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mAppId:Ljava/lang/String;

.field private mAuthServiceHandler:Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager$ServiceHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager$ServiceHandler<",
            "Lcom/samsung/android/sdk/mobileservice/auth/IMobileServiceAuth;",
            ">;"
        }
    .end annotation
.end field

.field private mCommonServiceHandler:Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager$ServiceHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager$ServiceHandler<",
            "Lcom/samsung/android/sdk/mobileservice/common/ICommonService;",
            ">;"
        }
    .end annotation
.end field

.field public final mEmptyVersionExchangeInfo:Lcom/samsung/android/sdk/mobileservice/VersionExchangeInfo;

.field private mIsMobileServiceAgentEnabled:Z

.field private mIsMobileServiceAgentInstalled:Z

.field private mIsStandAloneSA:Z

.field private mPlaceServiceHandler:Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager$ServiceHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager$ServiceHandler<",
            "Lcom/samsung/android/sdk/mobileservice/place/IMobileServicePlace;",
            ">;"
        }
    .end annotation
.end field

.field private mProfileServiceHandler:Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager$ServiceHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager$ServiceHandler<",
            "Lcom/samsung/android/sdk/mobileservice/profile/IMobileServiceProfile;",
            ">;"
        }
    .end annotation
.end field

.field private mSaCommonServiceHandler:Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager$ServiceHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager$ServiceHandler<",
            "Lcom/samsung/android/sdk/mobileservice/common/ICommonService;",
            ">;"
        }
    .end annotation
.end field

.field private mSocialServiceHandler:Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager$ServiceHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager$ServiceHandler<",
            "Lcom/samsung/android/sdk/mobileservice/social/IMobileServiceSocial;",
            ">;"
        }
    .end annotation
.end field

.field private mSupportedServices:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUnknownServiceHandler:Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager$ServiceHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager$ServiceHandler<",
            "Lcom/samsung/android/sdk/mobileservice/social/IMobileServiceSocial;",
            ">;"
        }
    .end annotation
.end field

.field private mVersionExchangeInfo:Lcom/samsung/android/sdk/mobileservice/VersionExchangeInfo;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager;->sMap:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ZZZ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager;->mVersionExchangeInfo:Lcom/samsung/android/sdk/mobileservice/VersionExchangeInfo;

    new-instance v1, Lcom/samsung/android/sdk/mobileservice/VersionExchangeInfo;

    invoke-direct {v1}, Lcom/samsung/android/sdk/mobileservice/VersionExchangeInfo;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager;->mEmptyVersionExchangeInfo:Lcom/samsung/android/sdk/mobileservice/VersionExchangeInfo;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager;->mSupportedServices:Ljava/util/HashSet;

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager;->mCommonServiceHandler:Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager$ServiceHandler;

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager;->mSaCommonServiceHandler:Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager$ServiceHandler;

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager;->mAuthServiceHandler:Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager$ServiceHandler;

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager;->mProfileServiceHandler:Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager$ServiceHandler;

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager;->mPlaceServiceHandler:Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager$ServiceHandler;

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager;->mSocialServiceHandler:Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager$ServiceHandler;

    new-instance v0, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager$1;-><init>(Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager;->mUnknownServiceHandler:Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager$ServiceHandler;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager;->bindChangeListeners:Ljava/util/Set;

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager;->mAppId:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager;->mIsStandAloneSA:Z

    iput-boolean p3, p0, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager;->mIsMobileServiceAgentInstalled:Z

    iput-boolean p4, p0, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager;->mIsMobileServiceAgentEnabled:Z

    return-void
.end method

.method private checkExchangeInfo(Ljava/lang/String;IJ)Lcom/samsung/android/sdk/mobileservice/SessionErrorCode;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " version:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SeMobileServiceBindManager"

    invoke-static {v1, v0}, Lcom/samsung/android/sdk/mobileservice/util/SdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    const-string p1, "Force update is needed for old agent"

    invoke-static {v1, p1}, Lcom/samsung/android/sdk/mobileservice/util/SdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/samsung/android/sdk/mobileservice/SessionErrorCode;->CAUSE_AGENT_FORCE_UPDATE_REQUIRED:Lcom/samsung/android/sdk/mobileservice/SessionErrorCode;

    return-object p1

    :cond_0
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "SDK version "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/sdk/mobileservice/SeMobileService;->getSdkVersionCode()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " is lower than min "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " required SDK version"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/sdk/mobileservice/util/SdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/samsung/android/sdk/mobileservice/SessionErrorCode;->CAUSE_SDK_OLD_VERSION:Lcom/samsung/android/sdk/mobileservice/SessionErrorCode;

    return-object p1

    :cond_1
    const-wide/16 v2, 0x0

    cmp-long v0, p3, v2

    if-gez v0, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " version "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " is lower than min required version "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/sdk/mobileservice/util/SdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/samsung/android/sdk/mobileservice/SessionErrorCode;->CAUSE_AGENT_OLD_VERSION:Lcom/samsung/android/sdk/mobileservice/SessionErrorCode;

    return-object p1

    :cond_2
    const/4 p1, 0x4

    if-ne p2, p1, :cond_3

    const-string p1, "Agent is not available"

    invoke-static {v1, p1}, Lcom/samsung/android/sdk/mobileservice/util/SdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/samsung/android/sdk/mobileservice/SessionErrorCode;->CAUSE_AGENT_NOT_AVAILABLE:Lcom/samsung/android/sdk/mobileservice/SessionErrorCode;

    return-object p1

    :cond_3
    if-eqz p2, :cond_4

    const/4 p1, 0x1

    if-eq p2, p1, :cond_4

    const-string p1, "Agent error status is not defined."

    invoke-static {v1, p1}, Lcom/samsung/android/sdk/mobileservice/util/SdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/samsung/android/sdk/mobileservice/SessionErrorCode;->CAUSE_UNDEFINED:Lcom/samsung/android/sdk/mobileservice/SessionErrorCode;

    return-object p1

    :cond_4
    sget-object p1, Lcom/samsung/android/sdk/mobileservice/SessionErrorCode;->NO_PROBLEM:Lcom/samsung/android/sdk/mobileservice/SessionErrorCode;

    return-object p1
.end method

.method private exchangeConfiguration()V
    .locals 10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "exchangeConfiguration - sesAgentInstalled:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager;->mIsMobileServiceAgentInstalled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", sesAgentEnabled:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager;->mIsMobileServiceAgentEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", saStandAlone:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager;->mIsStandAloneSA:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SeMobileServiceBindManager"

    invoke-static {v1, v0}, Lcom/samsung/android/sdk/mobileservice/util/SdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager;->needExchangeInfoInit()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "exchangeConfiguration : already set"

    invoke-static {v1, v0}, Lcom/samsung/android/sdk/mobileservice/util/SdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager;->mIsMobileServiceAgentInstalled:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager;->mIsMobileServiceAgentEnabled:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager;->getCommonServiceHandler()Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager$ServiceHandler;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager$ServiceHandler;->isBound(Lcom/samsung/android/sdk/mobileservice/SeMobileServiceSession;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager;->mIsStandAloneSA:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager;->getSaCommonServiceHandler()Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager$ServiceHandler;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager$ServiceHandler;->isBound(Lcom/samsung/android/sdk/mobileservice/SeMobileServiceSession;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const-string v0, "exchangeConfiguration : common service not ready"

    invoke-static {v1, v0}, Lcom/samsung/android/sdk/mobileservice/util/SdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    new-instance v0, Lcom/samsung/android/sdk/mobileservice/VersionExchangeInfo;

    invoke-direct {v0}, Lcom/samsung/android/sdk/mobileservice/VersionExchangeInfo;-><init>()V

    invoke-static {}, Lcom/samsung/android/sdk/mobileservice/SeMobileService;->getSdkVersionCode()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/samsung/android/sdk/mobileservice/VersionExchangeInfo;->setSdkVersion(I)V

    iget-object v3, p0, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager;->mAppId:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/samsung/android/sdk/mobileservice/VersionExchangeInfo;->setAppId(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager;->getAllServiceNames()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/samsung/android/sdk/mobileservice/VersionExchangeInfo;->addService([Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/mobileservice/VersionExchangeInfo;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    :try_start_0
    iget-boolean v4, p0, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager;->mIsMobileServiceAgentInstalled:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_4

    iget-boolean v4, p0, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager;->mIsMobileServiceAgentEnabled:Z

    if-eqz v4, :cond_4

    invoke-direct {p0}, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager;->getCommonServiceHandler()Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager$ServiceHandler;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager$ServiceHandler;->getService(Lcom/samsung/android/sdk/mobileservice/SeMobileServiceSession;)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/sdk/mobileservice/common/ICommonService;

    invoke-interface {v4, v3}, Lcom/samsung/android/sdk/mobileservice/common/ICommonService;->exchangeConfiguration(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    iget-boolean v6, p0, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager;->mIsStandAloneSA:Z

    new-array v7, v5, [Ljava/lang/String;

    invoke-virtual {v0, v4, v6, v7}, Lcom/samsung/android/sdk/mobileservice/VersionExchangeInfo;->put(Landroid/os/Bundle;Z[Ljava/lang/String;)V

    :cond_4
    iget-boolean v4, p0, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager;->mIsStandAloneSA:Z

    if-eqz v4, :cond_5

    invoke-direct {p0}, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager;->getSaCommonServiceHandler()Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager$ServiceHandler;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager$ServiceHandler;->getService(Lcom/samsung/android/sdk/mobileservice/SeMobileServiceSession;)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/mobileservice/common/ICommonService;

    invoke-interface {v2, v3}, Lcom/samsung/android/sdk/mobileservice/common/ICommonService;->exchangeConfiguration(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {p0}, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager;->getSocialServiceNames()[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v4, v3}, Lcom/samsung/android/sdk/mobileservice/VersionExchangeInfo;->put(Landroid/os/Bundle;Z[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    invoke-direct {p0}, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager;->getAllServiceNames()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    :goto_0
    if-ge v5, v3, :cond_7

    aget-object v4, v2, v5

    invoke-virtual {v0, v4}, Lcom/samsung/android/sdk/mobileservice/VersionExchangeInfo;->getServiceVersion(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v4}, Lcom/samsung/android/sdk/mobileservice/VersionExchangeInfo;->getServiceStatus(Ljava/lang/String;)I

    move-result v7

    if-eqz v6, :cond_6

    if-nez v7, :cond_6

    iget-object v6, p0, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager;->mSupportedServices:Ljava/util/HashSet;

    invoke-virtual {v6, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "requested service:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "["

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "], status: "

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/samsung/android/sdk/mobileservice/util/SdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_7
    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager;->mVersionExchangeInfo:Lcom/samsung/android/sdk/mobileservice/VersionExchangeInfo;

    return-void

    :catch_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager;->getVersionExchangeInfo()Lcom/samsung/android/sdk/mobileservice/VersionExchangeInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/mobileservice/VersionExchangeInfo;->clear()V

    const-string v0, "error during version exchange."

    invoke-static {v1, v0}, Lcom/samsung/android/sdk/mobileservice/util/SdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static declared-synchronized get(Ljava/lang/String;ZZZ)Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager;
    .locals 2

    const-class v0, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager;->sMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager;-><init>(Ljava/lang/String;ZZZ)V

    sget-object p1, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager;->sMap:Ljava/util/Map;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, ""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private getAllServiceNames()[Ljava/lang/String;
    .locals 4

    const-string v0, "AuthService"

    const-string v1, "ProfileService"

    const-string v2, "PlaceService"

    const-string v3, "SocialService"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized getCommonServiceHandler()Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager$ServiceHandler;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager$ServiceHandler<",
            "Lcom/samsung/android/sdk/mobileservice/common/ICommonService;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager;->mCommonServiceHandler:Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager$ServiceHandler;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager$2;

    iget-object v3, p0, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager;->mAppId:Ljava/lang/String;

    const-string v4, "Common"

    const-string v5, "com.samsung.android.mobileservice"

    const-string v6, "com.samsung.android.mobileservice.commonservice.CommonService"

    const-string v7, "com.samsung.android.mobileservice.common.REQUEST_SERVICE"

    move-object v1, v0

    move-object v2, p0

    move-object v8, p0

    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager$2;-><init>(Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/mobileservice/BindChangeListener;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager;->mCommonServiceHandler:Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager$ServiceHandler;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager;->mCommonServiceHandler:Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager$ServiceHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized getSaCommonServiceHandler()Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager$ServiceHandler;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager$ServiceHandler<",
            "Lcom/samsung/android/sdk/mobileservice/common/ICommonService;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager;->mSaCommonServiceHandler:Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager$ServiceHandler;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager$3;

    iget-object v3, p0, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager;->mAppId:Ljava/lang/String;

    const-string v4, "SaCommon"

    const-string v5, "com.osp.app.signin"

    const-string v6, "com.samsung.android.samsungaccount.mobileservice.commonservice.CommonService"

    const-string v7, "com.samsung.android.mobileservice.common.REQUEST_SERVICE"

    move-object v1, v0

    move-object v2, p0

    move-object v8, p0

    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager$3;-><init>(Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/mobileservice/BindChangeListener;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager;->mSaCommonServiceHandler:Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager$ServiceHandler;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager;->mSaCommonServiceHandler:Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager$ServiceHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getSaServiceNames()[Ljava/lang/String;
    .locals 3

    const-string v0, "AuthService"

    const-string v1, "ProfileService"

    const-string v2, "PlaceService"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSamsungAccountPackageName()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager;->mIsStandAloneSA:Z

    if-eqz v0, :cond_0

    const-string v0, "com.osp.app.signin"

    return-object v0

    :cond_0
    const-string v0, "com.samsung.android.mobileservice"

    return-object v0
.end method

.method private getSocialServiceNames()[Ljava/lang/String;
    .locals 1

    const-string v0, "SocialService"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private onCommonSvcBound(Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager$ServiceHandler;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager$ServiceHandler<",
            "+",
            "Lcom/samsung/android/sdk/mobileservice/common/ICommonService;",
            ">;)V"
        }
    .end annotation

    const-string v0, "SeMobileServiceBindManager"

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "do migration as first connection : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager$ServiceHandler;->getServiceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/mobileservice/util/SdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager$ServiceHandler;->getService(Lcom/samsung/android/sdk/mobileservice/SeMobileServiceSession;)Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/sdk/mobileservice/common/ICommonService;

    invoke-interface {p1}, Lcom/samsung/android/sdk/mobileservice/common/ICommonService;->doMigration()Z

    move-result p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "migration result : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/mobileservice/util/SdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager;->exchangeConfiguration()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/samsung/android/sdk/mobileservice/util/SdkLog;->s(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public declared-synchronized addBindChangeListener(Lcom/samsung/android/sdk/mobileservice/BindChangeListener;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager;->bindChangeListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public bindServices(Landroid/content/Context;Ljava/util/Collection;Lcom/samsung/android/sdk/mobileservice/SeMobileServiceSession;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/samsung/android/sdk/mobileservice/SeMobileServiceSession;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    if-nez p2, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager;->getServiceHandler(Ljava/lang/String;)Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager$ServiceHandler;

    move-result-object v2

    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unknown service name : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SeMobileServiceBindManager"

    invoke-static {v2, v1}, Lcom/samsung/android/sdk/mobileservice/util/SdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v2, p1, p3}, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager$ServiceHandler;->bindService(Landroid/content/Context;Lcom/samsung/android/sdk/mobileservice/SeMobileServiceSession;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public getAgentStatus()Lcom/samsung/android/sdk/mobileservice/SessionErrorCode;
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager;->mVersionExchangeInfo:Lcom/samsung/android/sdk/mobileservice/VersionExchangeInfo;

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager;->mIsMobileServiceAgentInstalled:Z

    if-nez v1, :cond_0

    iget-boolean v2, p0, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager;->mIsMobileServiceAgentEnabled:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager;->mIsStandAloneSA:Z

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager;->mIsMobileServiceAgentEnabled:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/sdk/mobileservice/VersionExchangeInfo;->getAgentStatus()I

    move-result v1

    invoke-virtual {v0}, Lcom/samsung/android/sdk/mobileservice/VersionExchangeInfo;->getSesVersion()I

    move-result v2

    int-to-long v2, v2

    const-string v4, "SES"

    invoke-direct {p0, v4, v1, v2, v3}, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager;->checkExchangeInfo(Ljava/lang/String;IJ)Lcom/samsung/android/sdk/mobileservice/SessionErrorCode;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sdk/mobileservice/SessionErrorCode;->NO_PROBLEM:Lcom/samsung/android/sdk/mobileservice/SessionErrorCode;

    if-eq v1, v2, :cond_1

    return-object v1

    :cond_1
    iget-boolean v1, p0, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager;->mIsStandAloneSA:Z

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/sdk/mobileservice/VersionExchangeInfo;->getSaAgentStatus()I

    move-result v1

    invoke-virtual {v0}, Lcom/samsung/android/sdk/mobileservice/VersionExchangeInfo;->getSaAgentVersion()I

    move-result v0

    int-to-long v2, v0

    const-string v0, "SA"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager;->checkExchangeInfo(Ljava/lang/String;IJ)Lcom/samsung/android/sdk/mobileservice/SessionErrorCode;

    move-result-object v0

    return-object v0

    :cond_2
    sget-object v0, Lcom/samsung/android/sdk/mobileservice/SessionErrorCode;->NO_PROBLEM:Lcom/samsung/android/sdk/mobileservice/SessionErrorCode;

    return-object v0

    :cond_3
    :goto_0
    sget-object v0, Lcom/samsung/android/sdk/mobileservice/SessionErrorCode;->CAUSE_AGENT_NOT_AVAILABLE:Lcom/samsung/android/sdk/mobileservice/SessionErrorCode;

    return-object v0
.end method

.method public declared-synchronized getAuthServiceHandler()Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager$ServiceHandler;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager$ServiceHandler<",
            "Lcom/samsung/android/sdk/mobileservice/auth/IMobileServiceAuth;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager;->mAuthServiceHandler:Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager$ServiceHandler;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager$4;

    iget-object v3, p0, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager;->mAppId:Ljava/lang/String;

    invoke-direct {p0}, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager;->getSamsungAccountPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v4, "AuthService"

    const-string v6, "com.osp.app.signin.service.SemsAidlService"

    const-string v7, "com.samsung.android.mobileservice.auth.REQUEST_SERVICE"

    move-object v1, v0

    move-object v2, p0

    move-object v8, p0

    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager$4;-><init>(Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/mobileservice/BindChangeListener;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager;->mAuthServiceHandler:Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager$ServiceHandler;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager;->mAuthServiceHandler:Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager$ServiceHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPlaceServiceHandler()Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager$ServiceHandler;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager$ServiceHandler<",
            "Lcom/samsung/android/sdk/mobileservice/place/IMobileServicePlace;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager;->mPlaceServiceHandler:Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager$ServiceHandler;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager$6;

    iget-object v3, p0, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager;->mAppId:Ljava/lang/String;

    invoke-direct {p0}, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager;->getSamsungAccountPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v4, "PlaceService"

    const-string v6, "com.osp.app.signin.service.SemsAidlService"

    const-string v7, "com.samsung.android.mobileservice.place.REQUEST_SERVICE"

    move-object v1, v0

    move-object v2, p0

    move-object v8, p0

    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager$6;-><init>(Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/mobileservice/BindChangeListener;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager;->mPlaceServiceHandler:Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager$ServiceHandler;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager;->mPlaceServiceHandler:Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager$ServiceHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getProfileServiceHandler()Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager$ServiceHandler;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager$ServiceHandler<",
            "Lcom/samsung/android/sdk/mobileservice/profile/IMobileServiceProfile;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager;->mProfileServiceHandler:Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager$ServiceHandler;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager$5;

    iget-object v3, p0, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager;->mAppId:Ljava/lang/String;

    invoke-direct {p0}, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager;->getSamsungAccountPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v4, "ProfileService"

    const-string v6, "com.osp.app.signin.service.SemsAidlService"

    const-string v7, "com.samsung.android.mobileservice.profile.REQUEST_SERVICE"

    move-object v1, v0

    move-object v2, p0

    move-object v8, p0

    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager$5;-><init>(Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/mobileservice/BindChangeListener;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager;->mProfileServiceHandler:Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager$ServiceHandler;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager;->mProfileServiceHandler:Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager$ServiceHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getServiceHandler(Ljava/lang/String;)Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager$ServiceHandler;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager$ServiceHandler<",
            "*>;"
        }
    .end annotation

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    const-string p1, ""

    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "Common"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v1, "SocialService"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move v0, v2

    goto :goto_0

    :sswitch_2
    const-string v1, "SaCommon"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move v0, v6

    goto :goto_0

    :sswitch_3
    const-string v1, "ProfileService"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move v0, v3

    goto :goto_0

    :sswitch_4
    const-string v1, "PlaceService"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move v0, v4

    goto :goto_0

    :sswitch_5
    const-string v1, "AuthService"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move v0, v5

    :cond_1
    :goto_0
    if-eqz v0, :cond_7

    if-eq v0, v6, :cond_6

    if-eq v0, v5, :cond_5

    if-eq v0, v4, :cond_4

    if-eq v0, v3, :cond_3

    if-eq v0, v2, :cond_2

    iget-object p1, p0, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager;->mUnknownServiceHandler:Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager$ServiceHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager;->getSocialServiceHandler()Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager$ServiceHandler;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_3
    :try_start_2
    invoke-virtual {p0}, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager;->getProfileServiceHandler()Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager$ServiceHandler;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_4
    :try_start_3
    invoke-virtual {p0}, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager;->getPlaceServiceHandler()Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager$ServiceHandler;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_5
    :try_start_4
    invoke-virtual {p0}, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager;->getAuthServiceHandler()Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager$ServiceHandler;

    move-result-object p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_6
    :try_start_5
    invoke-direct {p0}, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager;->getSaCommonServiceHandler()Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager$ServiceHandler;

    move-result-object p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_7
    :try_start_6
    invoke-direct {p0}, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager;->getCommonServiceHandler()Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager$ServiceHandler;

    move-result-object p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x50650433 -> :sswitch_5
        -0xc630c32 -> :sswitch_4
        0x91f20ec -> :sswitch_3
        0x31e215f9 -> :sswitch_2
        0x4b7bb268 -> :sswitch_1
        0x78a4160b -> :sswitch_0
    .end sparse-switch
.end method

.method public declared-synchronized getSocialServiceHandler()Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager$ServiceHandler;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager$ServiceHandler<",
            "Lcom/samsung/android/sdk/mobileservice/social/IMobileServiceSocial;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager;->mSocialServiceHandler:Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager$ServiceHandler;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager$7;

    iget-object v3, p0, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager;->mAppId:Ljava/lang/String;

    const-string v4, "SocialService"

    const-string v5, "com.samsung.android.mobileservice"

    const-string v6, "com.samsung.android.mobileservice.social.MobileServiceSocialService"

    const/4 v7, 0x0

    move-object v1, v0

    move-object v2, p0

    move-object v8, p0

    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager$7;-><init>(Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/mobileservice/BindChangeListener;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager;->mSocialServiceHandler:Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager$ServiceHandler;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager;->mSocialServiceHandler:Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager$ServiceHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getUnsupportedServices()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager;->mSupportedServices:Ljava/util/HashSet;

    return-object v0
.end method

.method public getVersionExchangeInfo()Lcom/samsung/android/sdk/mobileservice/VersionExchangeInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager;->mVersionExchangeInfo:Lcom/samsung/android/sdk/mobileservice/VersionExchangeInfo;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager;->mEmptyVersionExchangeInfo:Lcom/samsung/android/sdk/mobileservice/VersionExchangeInfo;

    :cond_0
    return-object v0
.end method

.method public isConnectedAll(Ljava/util/Collection;Lcom/samsung/android/sdk/mobileservice/SeMobileServiceSession;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/samsung/android/sdk/mobileservice/SeMobileServiceSession;",
            ")Z"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager;->needExchangeInfoInit()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "SeMobileServiceBindManager"

    if-eqz v0, :cond_0

    const-string p1, "isConnectedAll : needExchangeInfoInit"

    :goto_0
    invoke-static {v2, p1}, Lcom/samsung/android/sdk/mobileservice/util/SdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager;->mSupportedServices:Ljava/util/HashSet;

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager;->getServiceHandler(Ljava/lang/String;)Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager$ServiceHandler;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager$ServiceHandler;->isBound(Lcom/samsung/android/sdk/mobileservice/SeMobileServiceSession;)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "isConnectedAll : is not bound "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isConnectedAll : not support service : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/sdk/mobileservice/util/SdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const/4 p1, 0x1

    return p1
.end method

.method public needExchangeInfoInit()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager;->mVersionExchangeInfo:Lcom/samsung/android/sdk/mobileservice/VersionExchangeInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onBindChanged(Ljava/lang/String;Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager$BindState;Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager$BindState;)V
    .locals 2

    const-string v0, "Common"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SaCommon"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager$BindState;->BOUND:Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager$BindState;

    if-ne p3, v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager;->getServiceHandler(Ljava/lang/String;)Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager$ServiceHandler;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager;->onCommonSvcBound(Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager$ServiceHandler;)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager;->bindChangeListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/mobileservice/BindChangeListener;

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/sdk/mobileservice/BindChangeListener;->onBindChanged(Ljava/lang/String;Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager$BindState;Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager$BindState;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public register(Ljava/util/Collection;Lcom/samsung/android/sdk/mobileservice/SeMobileServiceSession;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/samsung/android/sdk/mobileservice/SeMobileServiceSession;",
            ")V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager;->getServiceHandler(Ljava/lang/String;)Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager$ServiceHandler;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager$ServiceHandler;->register(Lcom/samsung/android/sdk/mobileservice/SeMobileServiceSession;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public declared-synchronized removeBindChangeListener(Lcom/samsung/android/sdk/mobileservice/BindChangeListener;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager;->bindChangeListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public reset(ZZZ)V
    .locals 2

    const-string v0, "SeMobileServiceBindManager"

    const-string v1, "reset"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/mobileservice/util/SdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager;->mIsStandAloneSA:Z

    iput-boolean p2, p0, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager;->mIsMobileServiceAgentInstalled:Z

    iput-boolean p3, p0, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager;->mIsMobileServiceAgentEnabled:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager;->mVersionExchangeInfo:Lcom/samsung/android/sdk/mobileservice/VersionExchangeInfo;

    iget-object p1, p0, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager;->mSupportedServices:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    return-void
.end method

.method public unbindServices(Landroid/content/Context;Ljava/util/Collection;Lcom/samsung/android/sdk/mobileservice/SeMobileServiceSession;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/samsung/android/sdk/mobileservice/SeMobileServiceSession;",
            ")V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-string v1, "SeMobileServiceBindManager"

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager;->getServiceHandler(Ljava/lang/String;)Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager$ServiceHandler;

    move-result-object v2

    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unbindServices : unknown service name : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/sdk/mobileservice/util/SdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v2, p3}, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager$ServiceHandler;->unbindable(Lcom/samsung/android/sdk/mobileservice/SeMobileServiceSession;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v2, p1, p3}, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager$ServiceHandler;->unbindService(Landroid/content/Context;Lcom/samsung/android/sdk/mobileservice/SeMobileServiceSession;)V

    goto :goto_0

    :cond_3
    const/4 p1, 0x6

    new-array p2, p1, [Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager$ServiceHandler;

    iget-object p3, p0, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager;->mAuthServiceHandler:Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager$ServiceHandler;

    const/4 v0, 0x0

    aput-object p3, p2, v0

    iget-object p3, p0, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager;->mPlaceServiceHandler:Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager$ServiceHandler;

    const/4 v2, 0x1

    aput-object p3, p2, v2

    iget-object p3, p0, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager;->mProfileServiceHandler:Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager$ServiceHandler;

    const/4 v3, 0x2

    aput-object p3, p2, v3

    iget-object p3, p0, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager;->mSocialServiceHandler:Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager$ServiceHandler;

    const/4 v3, 0x3

    aput-object p3, p2, v3

    iget-object p3, p0, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager;->mCommonServiceHandler:Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager$ServiceHandler;

    const/4 v3, 0x4

    aput-object p3, p2, v3

    iget-object p3, p0, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager;->mSaCommonServiceHandler:Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager$ServiceHandler;

    const/4 v3, 0x5

    aput-object p3, p2, v3

    move p3, v0

    :goto_1
    if-ge p3, p1, :cond_6

    aget-object v3, p2, p3

    if-nez v3, :cond_4

    goto :goto_2

    :cond_4
    invoke-static {v3}, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager$ServiceHandler;->access$300(Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager$ServiceHandler;)Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager$BindState;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager$BindState;->UNBOUND:Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager$BindState;

    if-eq v3, v4, :cond_5

    goto :goto_3

    :cond_5
    :goto_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_6
    move v0, v2

    :goto_3
    if-eqz v0, :cond_7

    const-string p1, "all services unbound"

    invoke-static {v1, p1}, Lcom/samsung/android/sdk/mobileservice/util/SdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager;->mIsStandAloneSA:Z

    iget-boolean p2, p0, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager;->mIsMobileServiceAgentInstalled:Z

    iget-boolean p3, p0, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager;->mIsMobileServiceAgentEnabled:Z

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager;->reset(ZZZ)V

    :cond_7
    return-void
.end method
