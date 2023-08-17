.class Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;
.super Lcom/samsung/android/sdk/smp/marketing/Marketing;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBannerPicturePath:Ljava/lang/String;

.field private mBigPicturePath:Ljava/lang/String;

.field private mButtonLinks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/smp/marketing/MarketingButton;",
            ">;"
        }
    .end annotation
.end field

.field private mContentText:Ljava/lang/String;

.field private mContentTitle:Ljava/lang/String;

.field private mExpandedFlipAnim:I

.field private mExpandedFlipPeriod:I

.field private final mExpandedFlipperPaths:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mExpandedType:I

.field private mFoldedFlipAnim:I

.field private mFoldedFlipPeriod:I

.field private final mFoldedFlipperPaths:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFoldedType:I

.field private mIcon:Z

.field private mLargeIconPath:Ljava/lang/String;

.field private mMarketingLinks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/smp/marketing/MarketingLink;",
            ">;"
        }
    .end annotation
.end field

.field private mSmallIconPath:Ljava/lang/String;

.field private mSubContentText:Ljava/lang/String;

.field private mTicker:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/sdk/smp/marketing/Marketing;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->mFoldedFlipperPaths:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->mExpandedFlipperPaths:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public checkNotificationVisible(Landroid/content/Context;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->getDisplayId()I

    move-result v0

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/smp/common/util/DeviceInfoUtil;->isNotificationVisible(Landroid/content/Context;I)Z

    move-result p1

    return p1
.end method

.method public clearDisplayedMarketing(Landroid/content/Context;)V
    .locals 8

    invoke-static {p1}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->open(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/common/database/DBHandler;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object p1, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->TAG:Ljava/lang/String;

    const-string v0, "fail to clear. db open fail"

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object v1, Lcom/samsung/android/sdk/smp/common/constants/MarketingState;->DISPLAYED:Lcom/samsung/android/sdk/smp/common/constants/MarketingState;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->getMid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->getMarketingState(Ljava/lang/String;)Lcom/samsung/android/sdk/smp/common/constants/MarketingState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {p1}, Lcom/samsung/android/sdk/smp/common/util/DeviceInfoUtil;->getTargetSdkVersion(Landroid/content/Context;)I

    move-result v1

    const/16 v2, 0x1f

    const/4 v3, 0x0

    if-lt v1, v2, :cond_3

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v1, v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->checkNotificationVisible(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->getMid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->isMarketingLandingRedirected(Ljava/lang/String;)Z

    move-result v2

    sget-object v4, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->getMid()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "clearDisplayedMarketing. visible to user:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", isRedirected:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v5, v2}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->getMid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->isMarketingLandingRedirected(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->getMid()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->CLICKED:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    goto :goto_2

    :cond_3
    :goto_0
    sget-object v1, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->getMid()Ljava/lang/String;

    move-result-object v2

    const-string v4, "clearDisplayedMarketing. generate none_reaction feedback"

    invoke-static {v1, v2, v4}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->getMid()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->NONE_REACTION:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    :goto_2
    invoke-static {p1, v1, v2, v3}, Lcom/samsung/android/sdk/smp/marketing/FeedbackManager;->addFeedback(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;Ljava/lang/String;)V

    :cond_4
    invoke-super {p0, p1}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->clearDisplayedMarketing(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->close()V

    return-void
.end method

.method public filterBeforeDisplay(Landroid/content/Context;)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->filterBeforeDisplay(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->getChannelType()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->checkNotificationSettingOption(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->checkNotificationVisible(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public filterBeforeGetMarketingStatus(Landroid/content/Context;)Z
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->filterBeforeGetMarketingStatus(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method public filterBeforeResourceDownload(Landroid/content/Context;)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->filterBeforeResourceDownload(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->getChannelType()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->checkNotificationSettingOption(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getBannerPicturePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->mBannerPicturePath:Ljava/lang/String;

    return-object v0
.end method

.method public getBigPicturePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->mBigPicturePath:Ljava/lang/String;

    return-object v0
.end method

.method public getContentText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->mContentText:Ljava/lang/String;

    return-object v0
.end method

.method public getContentTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->mContentTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayMeta()Landroid/os/Bundle;
    .locals 8

    invoke-super {p0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->getDisplayMeta()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->getTicker()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "ticker"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->getFoldedType()I

    move-result v1

    const-string v2, "f_type"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->getExpandedType()I

    move-result v1

    const-string v2, "e_type"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->getContentTitle()Ljava/lang/String;

    move-result-object v1

    const-string v2, "content_title"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->getContentText()Ljava/lang/String;

    move-result-object v1

    const-string v2, "content_text"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->getSubContentText()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "sub_content_text"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->getSmallIconPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "small_icon"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->getLargeIconPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "large_icon"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->getBigPicturePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "big_picture"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->getBannerPicturePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "banner"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->getIcon()Z

    move-result v1

    const-string v2, "noti_big_icon"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->getFoldedFlipperPaths()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->getFoldedFlipperPaths()Ljava/util/ArrayList;

    move-result-object v1

    const-string v2, "f_flip_path"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->getFoldedFlipPeriod()I

    move-result v1

    const-string v2, "f_flip_period"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->getFoldedFlipAnim()I

    move-result v1

    const-string v2, "f_flip_anim"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->getExpandedFlipperPaths()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->getExpandedFlipperPaths()Ljava/util/ArrayList;

    move-result-object v1

    const-string v2, "e_flip_path"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->getExpandedFlipPeriod()I

    move-result v1

    const-string v2, "e_flip_period"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->getExpandedFlipAnim()I

    move-result v1

    const-string v2, "e_flip_anim"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->getMarketingLinks()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move v3, v2

    :goto_0
    const/4 v4, 0x5

    if-ge v3, v4, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->getMarketingLinks()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->getMarketingLinks()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "click_link"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->toBundle()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v4}, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->getLinkUri()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    new-array v3, v2, [Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    const-string v3, "link_uris"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->getMarketingButton()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_7

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move v3, v2

    :goto_1
    const/4 v4, 0x3

    if-ge v3, v4, :cond_7

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->getMarketingButton()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_7

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->getMarketingButton()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/sdk/smp/marketing/MarketingButton;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "noti_button"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/samsung/android/sdk/smp/marketing/MarketingButton;->toBundle()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    move v5, v2

    :goto_2
    invoke-virtual {v4}, Lcom/samsung/android/sdk/smp/marketing/MarketingButton;->getMarketingLinks()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_6

    invoke-virtual {v4}, Lcom/samsung/android/sdk/smp/marketing/MarketingButton;->getMarketingLinks()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->getLinkUri()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_7
    return-object v0
.end method

.method public getExpandedFlipAnim()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->mExpandedFlipAnim:I

    return v0
.end method

.method public getExpandedFlipPeriod()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->mExpandedFlipPeriod:I

    return v0
.end method

.method public getExpandedFlipperPaths()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->mExpandedFlipperPaths:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getExpandedType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->mExpandedType:I

    return v0
.end method

.method public getFoldedFlipAnim()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->mFoldedFlipAnim:I

    return v0
.end method

.method public getFoldedFlipPeriod()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->mFoldedFlipPeriod:I

    return v0
.end method

.method public getFoldedFlipperPaths()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->mFoldedFlipperPaths:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getFoldedType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->mFoldedType:I

    return v0
.end method

.method public getIcon()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->mIcon:Z

    return v0
.end method

.method public getLargeIconPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->mLargeIconPath:Ljava/lang/String;

    return-object v0
.end method

.method public getMarketingButton()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/smp/marketing/MarketingButton;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->mButtonLinks:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getMarketingLinks()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/smp/marketing/MarketingLink;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->mMarketingLinks:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSmallIconPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->mSmallIconPath:Ljava/lang/String;

    return-object v0
.end method

.method public getSubContentText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->mSubContentText:Ljava/lang/String;

    return-object v0
.end method

.method public getTicker()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->mTicker:Ljava/lang/String;

    return-object v0
.end method

.method public isSupportType()Z
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->isSupportType()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->mFoldedType:I

    iget v1, p0, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->mExpandedType:I

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/smp/common/constants/MarketingConstants$NotificationConst;->isSupportType(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public putExpandedFlipperPaths(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->mExpandedFlipperPaths:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public putFoldedFlipperPaths(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->mFoldedFlipperPaths:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setBannerPicturePath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->mBannerPicturePath:Ljava/lang/String;

    return-void
.end method

.method public setBigPicturePath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->mBigPicturePath:Ljava/lang/String;

    return-void
.end method

.method public setContentText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->mContentText:Ljava/lang/String;

    return-void
.end method

.method public setContentTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->mContentTitle:Ljava/lang/String;

    return-void
.end method

.method public setExpandedFlipAnim(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->mExpandedFlipAnim:I

    return-void
.end method

.method public setExpandedFlipPeriod(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->mExpandedFlipPeriod:I

    return-void
.end method

.method public setExpandedType(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->mExpandedType:I

    return-void
.end method

.method public setFoldedFlipAnim(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->mFoldedFlipAnim:I

    return-void
.end method

.method public setFoldedFlipPeriod(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->mFoldedFlipPeriod:I

    return-void
.end method

.method public setFoldedType(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->mFoldedType:I

    return-void
.end method

.method public setIcon(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->mIcon:Z

    return-void
.end method

.method public setLargeIconPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->mLargeIconPath:Ljava/lang/String;

    return-void
.end method

.method public setMarketingButtons(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/smp/marketing/MarketingButton;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->mButtonLinks:Ljava/util/ArrayList;

    return-void
.end method

.method public setMarketingLinks(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/smp/marketing/MarketingLink;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->mMarketingLinks:Ljava/util/ArrayList;

    return-void
.end method

.method public setSmallIconPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->mSmallIconPath:Ljava/lang/String;

    return-void
.end method

.method public setSubContentText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->mSubContentText:Ljava/lang/String;

    return-void
.end method

.method public setTicker(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->mTicker:Ljava/lang/String;

    return-void
.end method
