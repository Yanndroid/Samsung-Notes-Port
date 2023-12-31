.class Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;
.super Lcom/samsung/android/sdk/smp/marketing/Marketing;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "PopupMarketing"


# instance fields
.field private mBackgroudColor:I

.field private mBodyText:Ljava/lang/CharSequence;

.field private mBottomColor:I

.field private mButton1Links:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/smp/marketing/MarketingLink;",
            ">;"
        }
    .end annotation
.end field

.field private mButton1Text:Ljava/lang/String;

.field private mButton2Links:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/smp/marketing/MarketingLink;",
            ">;"
        }
    .end annotation
.end field

.field private mButton2Text:Ljava/lang/String;

.field private mButtonAlign:I

.field private mButtonTextColor:I

.field private mIsBottomVisible:Z

.field private mIsCloseButtonVisible:Z

.field private mIsDisturbOn:Z

.field private mLineColor:I

.field private mMainImagePath:Ljava/lang/String;

.field private mTemplateType:I

.field private mTextColor:I

.field private mWebUrl:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/sdk/smp/marketing/Marketing;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private isPopupOverlayAvailable(Landroid/content/Context;)Z
    .locals 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ge v0, v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/sdk/smp/common/util/DeviceInfoUtil;->isWindowOverlayOpAllowed(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    sget-object v0, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->getMid()Ljava/lang/String;

    move-result-object v3

    const-string v4, "cannot show popup : disabled window overlay option"

    :goto_0
    invoke-static {v0, v3, v4}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->DISABLE_POPUP_OPTION:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    invoke-virtual {p0, p1, v0, v2}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->setToFail(Landroid/content/Context;Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;Ljava/lang/String;)V

    return v1

    :cond_1
    invoke-static {p1}, Lcom/samsung/android/sdk/smp/common/util/DeviceInfoUtil;->getTargetSdkVersion(Landroid/content/Context;)I

    move-result v0

    const/16 v3, 0x1c

    if-lt v0, v3, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.permission.FOREGROUND_SERVICE"

    invoke-virtual {v0, v4, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->getMid()Ljava/lang/String;

    move-result-object v3

    const-string v4, "cannot show popup : disabled fourground service"

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->getChannelType()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->checkNotificationSettingOption(Landroid/content/Context;I)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public filterBeforeDisplay(Landroid/content/Context;)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->filterBeforeDisplay(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->isPopupOverlayAvailable(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public filterBeforeResourceDownload(Landroid/content/Context;)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->filterBeforeResourceDownload(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->isPopupOverlayAvailable(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getBackgroudColor()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->mBackgroudColor:I

    return v0
.end method

.method public getBodyText()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->mBodyText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getBottomColor()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->mBottomColor:I

    return v0
.end method

.method public getButton1Links()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/smp/marketing/MarketingLink;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->mButton1Links:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getButton1Text()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->mButton1Text:Ljava/lang/String;

    return-object v0
.end method

.method public getButton2Links()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/smp/marketing/MarketingLink;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->mButton2Links:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getButton2Text()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->mButton2Text:Ljava/lang/String;

    return-object v0
.end method

.method public getButtonAlign()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->mButtonAlign:I

    return v0
.end method

.method public getButtonTextColor()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->mButtonTextColor:I

    return v0
.end method

.method public getDisplayMeta()Landroid/os/Bundle;
    .locals 8

    invoke-super {p0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->getDisplayMeta()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->getTemplateType()I

    move-result v1

    const-string/jumbo v2, "template_type"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->isBottomVisible()Z

    move-result v1

    const-string v2, "bottom_visible"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->isCloseButtonVisible()Z

    move-result v1

    const-string v2, "close_visible"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->getButtonAlign()I

    move-result v1

    const-string v2, "btn_align"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->getBackgroudColor()I

    move-result v1

    const-string v2, "color_bg"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->getBottomColor()I

    move-result v1

    const-string v2, "color_bottom"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->getButtonTextColor()I

    move-result v1

    const-string v2, "color_btn_text"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->getTextColor()I

    move-result v1

    const-string v2, "color_body"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->getLineColor()I

    move-result v1

    const-string v2, "color_line"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->getBodyText()Ljava/lang/CharSequence;

    move-result-object v1

    const-string v2, "body_text"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->getWebUrl()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "web"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->getButton1Text()Ljava/lang/String;

    move-result-object v1

    const-string v2, "btn1_text"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->getButton2Text()Ljava/lang/String;

    move-result-object v1

    const-string v2, "btn2_text"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->getMainImagePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "img_main"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->getButton1Links()Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x5

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    move v2, v4

    :goto_0
    if-ge v2, v3, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->getButton1Links()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->getButton1Links()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "btn1_link"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->toBundle()Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v5}, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->getLinkUri()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->getButton2Links()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_3

    move v2, v4

    :goto_1
    if-ge v2, v3, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->getButton2Links()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->getButton2Links()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "btn2_link"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->toBundle()Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v5}, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->getLinkUri()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    new-array v2, v4, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    const-string v2, "link_uris"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->isDisturbOn()Z

    move-result v1

    const-string v2, "disturb"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public getLineColor()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->mLineColor:I

    return v0
.end method

.method public getMainImagePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->mMainImagePath:Ljava/lang/String;

    return-object v0
.end method

.method public getTemplateType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->mTemplateType:I

    return v0
.end method

.method public getTextColor()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->mTextColor:I

    return v0
.end method

.method public getWebUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->mWebUrl:Ljava/lang/String;

    return-object v0
.end method

.method public isBottomVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->mIsBottomVisible:Z

    return v0
.end method

.method public isCloseButtonVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->mIsCloseButtonVisible:Z

    return v0
.end method

.method public isDisturbOn()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->mIsDisturbOn:Z

    return v0
.end method

.method public isSupportType()Z
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->isSupportType()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->mTemplateType:I

    invoke-static {v0}, Lcom/samsung/android/sdk/smp/common/constants/MarketingConstants$PopupConst;->isSupportType(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setBackgroudColor(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->mBackgroudColor:I

    return-void
.end method

.method public setBodyText(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->mBodyText:Ljava/lang/CharSequence;

    return-void
.end method

.method public setBottomColor(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->mBottomColor:I

    return-void
.end method

.method public setButton1Links(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/smp/marketing/MarketingLink;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->mButton1Links:Ljava/util/ArrayList;

    return-void
.end method

.method public setButton1Text(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->mButton1Text:Ljava/lang/String;

    return-void
.end method

.method public setButton2Links(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/smp/marketing/MarketingLink;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->mButton2Links:Ljava/util/ArrayList;

    return-void
.end method

.method public setButton2Text(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->mButton2Text:Ljava/lang/String;

    return-void
.end method

.method public setButtonAlign(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->mButtonAlign:I

    return-void
.end method

.method public setButtonTextColor(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->mButtonTextColor:I

    return-void
.end method

.method public setIsBottomVisible(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->mIsBottomVisible:Z

    return-void
.end method

.method public setIsCloseButtonVisible(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->mIsCloseButtonVisible:Z

    return-void
.end method

.method public setIsDisturbOn(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->mIsDisturbOn:Z

    return-void
.end method

.method public setLineColor(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->mLineColor:I

    return-void
.end method

.method public setMainImagePath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->mMainImagePath:Ljava/lang/String;

    return-void
.end method

.method public setTemplateType(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->mTemplateType:I

    return-void
.end method

.method public setTextColor(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->mTextColor:I

    return-void
.end method

.method public setWebUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->mWebUrl:Ljava/lang/String;

    return-void
.end method
