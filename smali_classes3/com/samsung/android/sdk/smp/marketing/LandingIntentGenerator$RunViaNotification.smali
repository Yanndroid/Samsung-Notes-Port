.class Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator$RunViaNotification;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator$ILandingIntentGenerator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RunViaNotification"
.end annotation


# static fields
.field private static final MIN_SMP_SDK_VERSION_CLICK_EVENT_FOR_S:I = 0x2e15a8

.field private static final PARAM_REDIRECT_WEB_ID:Ljava/lang/String; = "webid"

.field private static final QUERY_PARAM_URL:Ljava/lang/String; = "url"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator;


# direct methods
.method private constructor <init>(Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator$RunViaNotification;->this$0:Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator;Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator$RunViaNotification;-><init>(Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator;)V

    return-void
.end method

.method private appendReferrerToRedirectionUri(Ljava/lang/String;Landroid/net/Uri;Lcom/samsung/android/sdk/smp/marketing/MarketingLink;)Landroid/net/Uri;
    .locals 3

    const-string/jumbo v0, "url"

    invoke-virtual {p2, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object p1, p0, Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator$RunViaNotification;->this$0:Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator;

    invoke-virtual {p1, v1, p3}, Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator;->appendReferrerToUrl(Ljava/lang/String;Lcom/samsung/android/sdk/smp/marketing/MarketingLink;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    return-object p2

    :cond_0
    invoke-direct {p0, p2, v0, p1}, Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator$RunViaNotification;->replaceUriQueryParameter(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-static {}, Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator;->access$200()Ljava/lang/String;

    move-result-object p2

    const-string p3, "invalid redirection url. no url query parameter in redirection url"

    invoke-static {p2, p1, p3}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/samsung/android/sdk/smp/common/exception/InternalException$WrongMarketingDataException;

    invoke-direct {p1}, Lcom/samsung/android/sdk/smp/common/exception/InternalException$WrongMarketingDataException;-><init>()V

    throw p1
.end method

.method private appendSmpPKToRedirectionUri(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Z)Landroid/net/Uri;
    .locals 3

    if-nez p4, :cond_0

    return-object p3

    :cond_0
    const-string/jumbo v0, "url"

    invoke-virtual {p3, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator$RunViaNotification;->this$0:Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v2, p1, p2, v1, p4}, Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator;->access$300(Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator;Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Z)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p3, v0, p1}, Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator$RunViaNotification;->replaceUriQueryParameter(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-static {}, Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator;->access$200()Ljava/lang/String;

    move-result-object p1

    const-string p3, "invalid redirection url. no url query parameter in redirection url"

    invoke-static {p1, p2, p3}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/samsung/android/sdk/smp/common/exception/InternalException$WrongMarketingDataException;

    invoke-direct {p1}, Lcom/samsung/android/sdk/smp/common/exception/InternalException$WrongMarketingDataException;-><init>()V

    throw p1
.end method

.method private appendWebIdToRedirectionUri(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    const-string/jumbo v0, "webid"

    invoke-virtual {p1, v0, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method private isIntentLaunchableWithBrowsable(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-string p2, "android.intent.category.BROWSABLE"

    invoke-virtual {v0, p2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object p2, p0, Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator$RunViaNotification;->this$0:Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator;

    invoke-virtual {p2, p1, v0}, Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator;->isIntentLaunchable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method

.method private replaceUriQueryParameter(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 4

    invoke-virtual {p1}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->clearQuery()Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, p3

    goto :goto_1

    :cond_0
    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getLandingIntentForRedirectionUrl(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/smp/marketing/MarketingLink;Landroid/content/Intent;Z)Landroid/content/Intent;
    .locals 4

    invoke-virtual {p3}, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->getRedirectionUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/common/preference/PrefManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->getWebId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator;->access$200()Ljava/lang/String;

    move-result-object p1

    const-string p3, "fail to get redirection intent. webid is null"

    :goto_0
    invoke-static {p1, p2, p3}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator$RunViaNotification;->this$0:Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator;

    invoke-virtual {p3}, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator;->isHttpOrHttps(Ljava/lang/String;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    invoke-direct {p0, p1, p4}, Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator$RunViaNotification;->isIntentLaunchableWithBrowsable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p4

    if-nez p4, :cond_2

    invoke-static {}, Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator;->access$200()Ljava/lang/String;

    move-result-object p1

    const-string p3, "fail to get redirection intent. not launchable when adding browsable category"

    goto :goto_0

    :cond_2
    invoke-virtual {p3}, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->getRedirectionUrl()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p4

    invoke-direct {p0, p4, v0}, Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator$RunViaNotification;->appendWebIdToRedirectionUri(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p4

    invoke-direct {p0, p2, p4, p3}, Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator$RunViaNotification;->appendReferrerToRedirectionUri(Ljava/lang/String;Landroid/net/Uri;Lcom/samsung/android/sdk/smp/marketing/MarketingLink;)Landroid/net/Uri;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3, p5}, Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator$RunViaNotification;->appendSmpPKToRedirectionUri(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Z)Landroid/net/Uri;

    move-result-object p3

    new-instance p4, Landroid/content/Intent;

    const-string p5, "android.intent.action.VIEW"

    invoke-direct {p4, p5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, p4}, Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator$RunViaNotification;->setFlags(Landroid/content/Intent;)V

    invoke-static {}, Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator;->access$200()Ljava/lang/String;

    move-result-object p5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "redirect : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p5, p3}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->open(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/common/database/DBHandler;

    move-result-object p1

    if-eqz p1, :cond_3

    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->updateMarketingLandingRedirected(Ljava/lang/String;Ljava/lang/Boolean;)Z

    invoke-virtual {p1}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->close()V

    :cond_3
    return-object p4
.end method

.method public putSmpClickFeedbackPathToExtra(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Z)V
    .locals 5

    if-eqz p5, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/common/preference/PrefManager;

    move-result-object p5

    invoke-virtual {p5}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->getAID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator;->access$200()Ljava/lang/String;

    move-result-object p1

    const-string p2, "fail to put click feedback path. aid is null"

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v1, ""

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string/jumbo v2, "v3"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v2, "feedback"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v2, "aid"

    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v0, "mid"

    invoke-virtual {v1, v0, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {p3}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/smp/common/util/DeviceInfoUtil;->getSmpSdkVersionInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-static {}, Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator;->access$200()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sdk version of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const v2, 0x2e15a8

    if-ge v0, v2, :cond_3

    invoke-virtual {p5}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->getWebId()Ljava/lang/String;

    move-result-object p5

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator;->access$200()Ljava/lang/String;

    move-result-object p1

    const-string p2, "fail to put click feedback path. webid is null"

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    const-string/jumbo v0, "webid"

    goto :goto_0

    :cond_3
    invoke-virtual {p5}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->getSmpID()Ljava/lang/String;

    move-result-object p5

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator;->access$200()Ljava/lang/String;

    move-result-object p1

    const-string p2, "fail to put click feedback path. smpid is null"

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    const-string/jumbo v0, "smpid"

    :goto_0
    invoke-virtual {v1, v0, p5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {}, Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "put click feedback path extra : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "com.samsung.android.sdk.smp.EXTRA_FEEDBACK_PATH"

    invoke-virtual {p3, v0, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string p5, "com.samsung.android.sdk.smp.EXTRA_SENDER_PACKAGE"

    invoke-virtual {p3, p5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "com.samsung.android.sdk.smp.EXTRA_MID"

    invoke-virtual {p3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "com.samsung.android.sdk.smp.LINK_TYPE"

    invoke-virtual {p3, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-void
.end method

.method public setFlags(Landroid/content/Intent;)V
    .locals 1

    const/high16 v0, 0x14000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-void
.end method
