.class public Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1f
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator$RunType;,
        Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator$RunViaNotification;,
        Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator$ILandingIntentGenerator;,
        Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator$RunDirect;
    }
.end annotation


# static fields
.field private static final HTTP:Ljava/lang/String; = "http://"

.field private static final HTTPS:Ljava/lang/String; = "https://"

.field private static final TAG:Ljava/lang/String; = "LandingIntentGenerator"


# instance fields
.field private final mLandingIntentGeneratorImpl:Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator$ILandingIntentGenerator;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator$RunType;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator$1;->$SwitchMap$com$samsung$android$sdk$smp$marketing$LandingIntentGenerator$RunType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    new-instance p1, Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator$RunDirect;

    invoke-direct {p1, v2}, Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator$RunDirect;-><init>(Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator$1;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid runtype : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/samsung/android/sdk/smp/common/exception/InternalException$InvalidArgumentException;

    invoke-direct {p1}, Lcom/samsung/android/sdk/smp/common/exception/InternalException$InvalidArgumentException;-><init>()V

    throw p1

    :cond_1
    new-instance p1, Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator$RunViaNotification;

    invoke-direct {p1, p0, v2}, Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator$RunViaNotification;-><init>(Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator;Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator$1;)V

    :goto_0
    iput-object p1, p0, Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator;->mLandingIntentGeneratorImpl:Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator$ILandingIntentGenerator;

    return-void
.end method

.method public static synthetic access$200()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$300(Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator;Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Z)Landroid/net/Uri;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator;->appendSmpPKToUrl(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Z)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private appendSmpPKToUrl(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Z)Landroid/net/Uri;
    .locals 0

    if-eqz p4, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator;->getSmpPK(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-object p3

    :cond_1
    invoke-virtual {p3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p2

    const-string/jumbo p3, "smpPK"

    invoke-virtual {p2, p3, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {p2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method private getLandingIntentForApp(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/smp/marketing/MarketingLink;ZZ)Landroid/content/Intent;
    .locals 9

    invoke-virtual {p3}, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator;->TAG:Ljava/lang/String;

    const-string p3, "fail to get landing intent(type:app). pkg null"

    :goto_0
    invoke-static {p1, p2, p3}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p3}, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object p1, Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator;->TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "fail to get landing intent(type:app) : "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator;->mLandingIntentGeneratorImpl:Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator$ILandingIntentGenerator;

    invoke-interface {v1, v0}, Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator$ILandingIntentGenerator;->setFlags(Landroid/content/Intent;)V

    iget-object v3, p0, Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator;->mLandingIntentGeneratorImpl:Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator$ILandingIntentGenerator;

    invoke-virtual {p3}, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->getType()Ljava/lang/String;

    move-result-object v7

    move-object v4, p1

    move-object v5, p2

    move-object v6, v0

    move v8, p4

    invoke-interface/range {v3 .. v8}, Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator$ILandingIntentGenerator;->putSmpClickFeedbackPathToExtra(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Z)V

    invoke-direct {p0, v0, p3}, Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator;->putReferrerToExtra(Landroid/content/Intent;Lcom/samsung/android/sdk/smp/marketing/MarketingLink;)V

    invoke-direct {p0, p1, p2, v0, p5}, Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator;->putSmpPKToExtra(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Z)V

    sget-object p1, Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator;->TAG:Ljava/lang/String;

    const-string p3, "landing intent : app"

    invoke-static {p1, p2, p3}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private getLandingIntentForIntent(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/smp/marketing/MarketingLink;ZZZ)Landroid/content/Intent;
    .locals 8

    invoke-virtual {p3}, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator;->TAG:Ljava/lang/String;

    const-string p3, "fail to get landing intent(type:intent). pkg null"

    :goto_0
    invoke-static {p1, p2, p3}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    invoke-virtual {p3}, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->getComponent()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    sget-object p1, Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator;->TAG:Ljava/lang/String;

    const-string p3, "fail to get landing intent(type:intent). invalid component"

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p3}, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p3}, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->getData()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p3}, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->getData()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    invoke-virtual {p3}, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p3}, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :cond_3
    invoke-virtual {p3}, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    new-instance v2, Landroid/content/ComponentName;

    invoke-virtual {p3}, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :cond_4
    invoke-virtual {p3}, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->getExtra()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {p3}, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->getExtra()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Bundle;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p3}, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->getExtra()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_5
    iget-object v2, p0, Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator;->mLandingIntentGeneratorImpl:Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator$ILandingIntentGenerator;

    invoke-interface {v2, v0}, Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator$ILandingIntentGenerator;->setFlags(Landroid/content/Intent;)V

    if-eqz p4, :cond_6

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator;->isIntentLaunchable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p4

    if-nez p4, :cond_6

    sget-object p1, Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator;->TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "fail to get landing intent(type:intent). "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " is not launchable"

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto/16 :goto_0

    :cond_6
    sget-object p4, Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator;->TAG:Ljava/lang/String;

    const-string v1, "landing intent : intent"

    invoke-static {p4, p2, v1}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator;->mLandingIntentGeneratorImpl:Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator$ILandingIntentGenerator;

    invoke-virtual {p3}, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->getType()Ljava/lang/String;

    move-result-object v6

    move-object v3, p1

    move-object v4, p2

    move-object v5, v0

    move v7, p5

    invoke-interface/range {v2 .. v7}, Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator$ILandingIntentGenerator;->putSmpClickFeedbackPathToExtra(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Z)V

    invoke-direct {p0, v0, p3}, Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator;->putReferrerToExtra(Landroid/content/Intent;Lcom/samsung/android/sdk/smp/marketing/MarketingLink;)V

    invoke-direct {p0, p1, p2, v0, p6}, Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator;->putSmpPKToExtra(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Z)V

    return-object v0
.end method

.method private getLandingIntentForUrl(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/smp/marketing/MarketingLink;ZZZ)Landroid/content/Intent;
    .locals 8

    invoke-virtual {p3}, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator;->TAG:Ljava/lang/String;

    const-string p3, "fail to get landing intent(type:url). url null"

    invoke-static {p1, p2, p3}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    invoke-virtual/range {p0 .. p6}, Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator;->getLandingIntentForOriginalUrl(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/smp/marketing/MarketingLink;ZZZ)Landroid/content/Intent;

    move-result-object p4

    if-nez p4, :cond_1

    sget-object p1, Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator;->TAG:Ljava/lang/String;

    const-string p2, "fail to get landing intent(type:url). it is not able to launch"

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator;->mLandingIntentGeneratorImpl:Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator$ILandingIntentGenerator;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p6

    invoke-interface/range {v2 .. v7}, Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator$ILandingIntentGenerator;->getLandingIntentForRedirectionUrl(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/smp/marketing/MarketingLink;Landroid/content/Intent;Z)Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_2

    sget-object p1, Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator;->TAG:Ljava/lang/String;

    const-string p3, "landing intent : url (original)"

    invoke-static {p1, p2, p3}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget-object p3, Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator;->TAG:Ljava/lang/String;

    const-string p4, "landing intent : url (redirect)"

    invoke-static {p3, p2, p4}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object p4, p1

    :goto_0
    sget-object p1, Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "landing uri : "

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p4
.end method

.method private getSmpPK(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p1}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/common/preference/PrefManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->getSmpID()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/sdk/smp/common/util/SecurityUtil;->makeSHA256Hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    sget-object p2, Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "smpPK:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method private putReferrerToExtra(Landroid/content/Intent;Lcom/samsung/android/sdk/smp/marketing/MarketingLink;)V
    .locals 2

    invoke-virtual {p2}, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->getReferrerStrForLandingPage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator;->TAG:Ljava/lang/String;

    const-string v1, "append referrer to extra"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "smpReferrer"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method private putSmpPKToExtra(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Z)V
    .locals 0

    if-eqz p4, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator;->getSmpPK(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    sget-object p2, Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator;->TAG:Ljava/lang/String;

    const-string p4, "put smpPK to extra"

    invoke-static {p2, p4}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p2, "smpPK"

    invoke-virtual {p3, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    return-void
.end method


# virtual methods
.method public appendReferrerToUrl(Ljava/lang/String;Lcom/samsung/android/sdk/smp/marketing/MarketingLink;)Landroid/net/Uri;
    .locals 2

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p2}, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->getReferrerStrForLandingPage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator;->TAG:Ljava/lang/String;

    const-string v1, "append referrer to url"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "smpReferrer"

    invoke-virtual {p1, v0, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public getLandingIntentByLinkType(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/smp/marketing/MarketingLink;ZZZ)Landroid/content/Intent;
    .locals 6

    const/4 v0, 0x0

    if-nez p3, :cond_0

    sget-object p1, Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator;->TAG:Ljava/lang/String;

    const-string p3, "fail to get landing intent. link is null"

    :goto_0
    invoke-static {p1, p2, p3}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    invoke-virtual {p3}, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "app"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator;->getLandingIntentForApp(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/smp/marketing/MarketingLink;ZZ)Landroid/content/Intent;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {p3}, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->getType()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "url"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct/range {p0 .. p6}, Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator;->getLandingIntentForUrl(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/smp/marketing/MarketingLink;ZZZ)Landroid/content/Intent;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-virtual {p3}, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "intent"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct/range {p0 .. p6}, Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator;->getLandingIntentForIntent(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/smp/marketing/MarketingLink;ZZZ)Landroid/content/Intent;

    move-result-object p1

    return-object p1

    :cond_3
    sget-object p1, Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator;->TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "fail to get landing intent. invalid type : "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->getType()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_0
.end method

.method public getLandingIntentForOriginalUrl(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/smp/marketing/MarketingLink;ZZZ)Landroid/content/Intent;
    .locals 8

    invoke-virtual {p3}, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->getUrl()Ljava/lang/String;

    move-result-object v0

    new-instance v7, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v7, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator;->mLandingIntentGeneratorImpl:Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator$ILandingIntentGenerator;

    invoke-interface {v1, v7}, Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator$ILandingIntentGenerator;->setFlags(Landroid/content/Intent;)V

    invoke-virtual {p0, v0, p3}, Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator;->appendReferrerToUrl(Ljava/lang/String;Lcom/samsung/android/sdk/smp/marketing/MarketingLink;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, p1, p2, v1, p6}, Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator;->appendSmpPKToUrl(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Z)Landroid/net/Uri;

    move-result-object p6

    invoke-virtual {v7, p6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator;->isHttpOrHttps(Ljava/lang/String;)Z

    move-result p6

    if-nez p6, :cond_1

    if-eqz p4, :cond_0

    invoke-virtual {p0, p1, v7}, Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator;->isIntentLaunchable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p4

    if-nez p4, :cond_0

    sget-object p1, Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "fail to get landing intent(type:url). "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " is not launchable"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator;->mLandingIntentGeneratorImpl:Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator$ILandingIntentGenerator;

    invoke-virtual {p3}, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->getType()Ljava/lang/String;

    move-result-object v5

    move-object v2, p1

    move-object v3, p2

    move-object v4, v7

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator$ILandingIntentGenerator;->putSmpClickFeedbackPathToExtra(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Z)V

    :cond_1
    return-object v7
.end method

.method public isHttpOrHttps(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, "http://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "https://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public isIntentLaunchable(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
