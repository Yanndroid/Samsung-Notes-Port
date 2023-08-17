.class Lcom/samsung/android/sdk/smp/marketing/NotificationMarketingParser;
.super Lcom/samsung/android/sdk/smp/marketing/MarketingParser;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/marketing/MarketingParser;-><init>()V

    return-void
.end method

.method private setImgData(Ljava/lang/String;Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;Ljava/lang/String;)V
    .locals 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    if-eqz p2, :cond_a

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "flip_f"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "flip_e"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/smp/common/constants/MarketingConstants;->IMAGE_FILE_EXTENSIONS:[Ljava/lang/String;

    invoke-static {p1, p3, v0}, Lcom/samsung/android/sdk/smp/common/util/FileIOUtil;->findCertainExtension(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "largeIcon"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2, p1}, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->setLargeIconPath(Ljava/lang/String;)V

    goto :goto_3

    :cond_1
    const-string/jumbo v0, "smallIcon"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2, p1}, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->setSmallIconPath(Ljava/lang/String;)V

    goto :goto_3

    :cond_2
    if-eqz p1, :cond_4

    const-string v0, "bigPicture"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p2, p1}, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->setBigPicturePath(Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    const-string v0, "banner"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_9

    invoke-virtual {p2, p1}, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->setBannerPicturePath(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    new-instance p1, Lcom/samsung/android/sdk/smp/common/exception/InternalException$WrongMarketingDataException;

    invoke-direct {p1}, Lcom/samsung/android/sdk/smp/common/exception/InternalException$WrongMarketingDataException;-><init>()V

    throw p1

    :cond_5
    :goto_0
    const/4 v1, 0x1

    move v2, v1

    :goto_1
    const/16 v3, 0xa

    if-gt v2, v3, :cond_9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/sdk/smp/common/constants/MarketingConstants;->IMAGE_FILE_EXTENSIONS:[Ljava/lang/String;

    invoke-static {p1, v3, v4}, Lcom/samsung/android/sdk/smp/common/util/FileIOUtil;->findCertainExtension(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_7

    if-eq v2, v1, :cond_6

    goto :goto_3

    :cond_6
    new-instance p1, Lcom/samsung/android/sdk/smp/common/exception/InternalException$WrongMarketingDataException;

    invoke-direct {p1}, Lcom/samsung/android/sdk/smp/common/exception/InternalException$WrongMarketingDataException;-><init>()V

    throw p1

    :cond_7
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {p2, v3}, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->putFoldedFlipperPaths(Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    invoke-virtual {p2, v3}, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->putExpandedFlipperPaths(Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_9
    :goto_3
    return-void

    :cond_a
    new-instance p1, Lcom/samsung/android/sdk/smp/common/exception/InternalException$InvalidArgumentException;

    invoke-direct {p1}, Lcom/samsung/android/sdk/smp/common/exception/InternalException$InvalidArgumentException;-><init>()V

    throw p1
.end method

.method private setTxtData(Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "contentTitle"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_1
    const-string v1, "contentText"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v1, "subContentText"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, v2}, Lcom/samsung/android/sdk/smp/marketing/MarketingParser;->applyLRMUnicode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->setContentTitle(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_1
    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, v2}, Lcom/samsung/android/sdk/smp/marketing/MarketingParser;->applyLRMUnicode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->setContentText(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_2
    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, v2}, Lcom/samsung/android/sdk/smp/marketing/MarketingParser;->applyLRMUnicode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->setSubContentText(Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_3
    new-instance p1, Lcom/samsung/android/sdk/smp/common/exception/InternalException$InvalidArgumentException;

    invoke-direct {p1}, Lcom/samsung/android/sdk/smp/common/exception/InternalException$InvalidArgumentException;-><init>()V

    throw p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4943751a -> :sswitch_2
        -0x1731f6ba -> :sswitch_1
        0x30f4e15f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public parseImageContents(Landroid/content/Context;Lcom/samsung/android/sdk/smp/marketing/Marketing;)V
    .locals 6

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->getMid()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/smp/common/util/FilePathUtil;->getImgDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    check-cast p2, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->getFoldedType()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p2}, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->getExpandedType()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    sget-object v4, Lcom/samsung/android/sdk/smp/common/constants/MarketingConstants$NotificationConst;->FOLDED_IMG_RES:[[Ljava/lang/String;

    aget-object v5, v4, v0

    array-length v5, v5

    if-ge v3, v5, :cond_0

    aget-object v4, v4, v0

    aget-object v4, v4, v3

    invoke-direct {p0, p1, p2, v4}, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketingParser;->setImgData(Ljava/lang/String;Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    sget-object v0, Lcom/samsung/android/sdk/smp/common/constants/MarketingConstants$NotificationConst;->EXPANDED_IMG_RES:[[Ljava/lang/String;

    aget-object v3, v0, v1

    array-length v3, v3

    if-ge v2, v3, :cond_1

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketingParser;->setImgData(Ljava/lang/String;Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void

    :cond_2
    new-instance p1, Lcom/samsung/android/sdk/smp/common/exception/InternalException$InvalidArgumentException;

    invoke-direct {p1}, Lcom/samsung/android/sdk/smp/common/exception/InternalException$InvalidArgumentException;-><init>()V

    throw p1
.end method

.method public parseTextContents(Landroid/content/Context;Lcom/samsung/android/sdk/smp/marketing/Marketing;Lorg/json/JSONObject;)V
    .locals 7

    if-eqz p2, :cond_3

    if-eqz p3, :cond_3

    move-object v0, p2

    check-cast v0, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;

    :try_start_0
    const-string/jumbo v1, "ticker"

    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\n"

    const-string v3, " "

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->setTicker(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->getFoldedType()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->getExpandedType()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    sget-object v5, Lcom/samsung/android/sdk/smp/common/constants/MarketingConstants$NotificationConst;->FOLDED_TXT_RES:[[Ljava/lang/String;

    aget-object v6, v5, v1

    array-length v6, v6

    if-ge v4, v6, :cond_0

    aget-object v5, v5, v1

    aget-object v5, v5, v4

    invoke-direct {p0, v0, p3, v5}, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketingParser;->setTxtData(Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;Lorg/json/JSONObject;Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    sget-object v1, Lcom/samsung/android/sdk/smp/common/constants/MarketingConstants$NotificationConst;->EXPANDED_TXT_RES:[[Ljava/lang/String;

    aget-object v4, v1, v2

    array-length v4, v4

    if-ge v3, v4, :cond_1

    aget-object v1, v1, v2

    aget-object v1, v1, v3

    invoke-direct {p0, v0, p3, v1}, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketingParser;->setTxtData(Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;Lorg/json/JSONObject;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->getMid()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, p3}, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->parse(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object v1

    const-string v2, "1"

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->isValid(Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->setMarketingLinks(Ljava/util/ArrayList;)V

    invoke-virtual {p2}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->getMid()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, p3}, Lcom/samsung/android/sdk/smp/marketing/MarketingButton;->parse(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->setMarketingButtons(Ljava/util/ArrayList;)V

    return-void

    :cond_2
    sget-object p1, Lcom/samsung/android/sdk/smp/marketing/MarketingParser;->TAG:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->getMid()Ljava/lang/String;

    move-result-object p3

    const-string v0, "fail to parse resource. invalid landing page"

    invoke-static {p1, p3, v0}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/samsung/android/sdk/smp/common/exception/InternalException$WrongMarketingDataException;

    invoke-direct {p1}, Lcom/samsung/android/sdk/smp/common/exception/InternalException$WrongMarketingDataException;-><init>()V

    throw p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    sget-object p3, Lcom/samsung/android/sdk/smp/marketing/MarketingParser;->TAG:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->getMid()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fail to parse resource. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p2, p1}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/samsung/android/sdk/smp/common/exception/InternalException$WrongMarketingDataException;

    invoke-direct {p1}, Lcom/samsung/android/sdk/smp/common/exception/InternalException$WrongMarketingDataException;-><init>()V

    throw p1

    :cond_3
    new-instance p1, Lcom/samsung/android/sdk/smp/common/exception/InternalException$InvalidArgumentException;

    invoke-direct {p1}, Lcom/samsung/android/sdk/smp/common/exception/InternalException$InvalidArgumentException;-><init>()V

    throw p1
.end method

.method public parseUserData(Landroid/content/Context;Lcom/samsung/android/sdk/smp/marketing/Marketing;Lorg/json/JSONObject;)V
    .locals 7

    const-string v0, "e"

    const-string v1, "f"

    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/sdk/smp/marketing/MarketingParser;->parseUserData(Landroid/content/Context;Lcom/samsung/android/sdk/smp/marketing/Marketing;Lorg/json/JSONObject;)V

    move-object p1, p2

    check-cast p1, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;

    :try_start_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->getStyle()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->setFoldedType(I)V

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->setExpandedType(I)V

    const-string v2, "icon"

    const/4 v3, 0x1

    invoke-virtual {p3, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {p1, v2}, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->setIcon(Z)V

    const-string v2, "fa"

    invoke-virtual {p3, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->getExpandedType()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x5

    const-string v5, "invalid flipping period"

    const-string v6, "fp"

    if-ne v3, v4, :cond_1

    :try_start_1
    invoke-virtual {p3, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->setExpandedFlipPeriod(I)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->getExpandedFlipPeriod()I

    move-result v3

    if-lez v3, :cond_0

    if-eqz v2, :cond_1

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->setExpandedFlipAnim(I)V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/samsung/android/sdk/smp/marketing/MarketingParser;->TAG:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->getMid()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3, v5}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/samsung/android/sdk/smp/common/exception/InternalException$WrongMarketingDataException;

    invoke-direct {p1}, Lcom/samsung/android/sdk/smp/common/exception/InternalException$WrongMarketingDataException;-><init>()V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->getFoldedType()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_3

    invoke-virtual {p3, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p3

    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->setFoldedFlipPeriod(I)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->getFoldedFlipPeriod()I

    move-result p3

    if-lez p3, :cond_2

    if-eqz v2, :cond_3

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;->setFoldedFlipAnim(I)V

    goto :goto_1

    :cond_2
    sget-object p1, Lcom/samsung/android/sdk/smp/marketing/MarketingParser;->TAG:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->getMid()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3, v5}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/samsung/android/sdk/smp/common/exception/InternalException$WrongMarketingDataException;

    invoke-direct {p1}, Lcom/samsung/android/sdk/smp/common/exception/InternalException$WrongMarketingDataException;-><init>()V

    throw p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    :goto_1
    return-void

    :catch_0
    move-exception p1

    sget-object p3, Lcom/samsung/android/sdk/smp/marketing/MarketingParser;->TAG:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->getMid()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid userdata. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p2, p1}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/samsung/android/sdk/smp/common/exception/InternalException$WrongMarketingDataException;

    invoke-direct {p1}, Lcom/samsung/android/sdk/smp/common/exception/InternalException$WrongMarketingDataException;-><init>()V

    throw p1
.end method
