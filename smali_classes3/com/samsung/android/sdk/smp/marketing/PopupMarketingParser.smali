.class public Lcom/samsung/android/sdk/smp/marketing/PopupMarketingParser;
.super Lcom/samsung/android/sdk/smp/marketing/MarketingParser;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/marketing/MarketingParser;-><init>()V

    return-void
.end method

.method private parseColor(Ljava/lang/String;I)I
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return p2

    :cond_0
    :try_start_0
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    return p2
.end method

.method private setImgData(Ljava/lang/String;Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p2, :cond_2

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "popupmain"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/sdk/smp/common/constants/MarketingConstants;->IMAGE_FILE_EXTENSIONS:[Ljava/lang/String;

    invoke-static {p1, p3, v0}, Lcom/samsung/android/sdk/smp/common/util/FileIOUtil;->findCertainExtension(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p2, p1}, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->setMainImagePath(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/samsung/android/sdk/smp/common/exception/InternalException$WrongMarketingDataException;

    invoke-direct {p1}, Lcom/samsung/android/sdk/smp/common/exception/InternalException$WrongMarketingDataException;-><init>()V

    throw p1

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance p1, Lcom/samsung/android/sdk/smp/common/exception/InternalException$InvalidArgumentException;

    invoke-direct {p1}, Lcom/samsung/android/sdk/smp/common/exception/InternalException$InvalidArgumentException;-><init>()V

    throw p1
.end method

.method private setTxtData(Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "body"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/sdk/smp/marketing/MarketingParser;->applyLRMUnicode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p2

    :try_start_0
    invoke-static {p2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->setBodyText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance p1, Lcom/samsung/android/sdk/smp/common/exception/InternalException$WrongMarketingDataException;

    invoke-direct {p1}, Lcom/samsung/android/sdk/smp/common/exception/InternalException$WrongMarketingDataException;-><init>()V

    throw p1

    :cond_0
    const-string/jumbo v0, "web"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->setWebUrl(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance p1, Lcom/samsung/android/sdk/smp/common/exception/InternalException$InvalidArgumentException;

    invoke-direct {p1}, Lcom/samsung/android/sdk/smp/common/exception/InternalException$InvalidArgumentException;-><init>()V

    throw p1
.end method


# virtual methods
.method public parseImageContents(Landroid/content/Context;Lcom/samsung/android/sdk/smp/marketing/Marketing;)V
    .locals 4

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->getMid()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/smp/common/util/FilePathUtil;->getImgDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    check-cast p2, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->getTemplateType()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lcom/samsung/android/sdk/smp/common/constants/MarketingConstants$PopupConst;->IMG_RES:[[Ljava/lang/String;

    aget-object v3, v2, v0

    array-length v3, v3

    if-ge v1, v3, :cond_0

    aget-object v2, v2, v0

    aget-object v2, v2, v1

    invoke-direct {p0, p1, p2, v2}, Lcom/samsung/android/sdk/smp/marketing/PopupMarketingParser;->setImgData(Ljava/lang/String;Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance p1, Lcom/samsung/android/sdk/smp/common/exception/InternalException$InvalidArgumentException;

    invoke-direct {p1}, Lcom/samsung/android/sdk/smp/common/exception/InternalException$InvalidArgumentException;-><init>()V

    throw p1
.end method

.method public parseTextContents(Landroid/content/Context;Lcom/samsung/android/sdk/smp/marketing/Marketing;Lorg/json/JSONObject;)V
    .locals 8

    const-string v0, "2"

    const-string/jumbo v1, "text"

    if-eqz p2, :cond_6

    if-eqz p3, :cond_6

    move-object v2, p2

    check-cast v2, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;

    :try_start_0
    const-string v3, "pop"

    invoke-virtual {p3, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p3

    invoke-virtual {v2}, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->getTemplateType()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    sget-object v6, Lcom/samsung/android/sdk/smp/common/constants/MarketingConstants$PopupConst;->TXT_RES:[[Ljava/lang/String;

    aget-object v7, v6, v3

    array-length v7, v7

    if-ge v5, v7, :cond_0

    aget-object v6, v6, v3

    aget-object v6, v6, v5

    invoke-direct {p0, v2, p3, v6}, Lcom/samsung/android/sdk/smp/marketing/PopupMarketingParser;->setTxtData(Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;Lorg/json/JSONObject;Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->isBottomVisible()Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "btn1"

    invoke-virtual {p3, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0xa

    if-le v6, v7, :cond_1

    invoke-virtual {v5, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    :cond_1
    invoke-virtual {v2, v5}, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->setButton1Text(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->getMid()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5, v3}, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->parse(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->setButton1Links(Ljava/util/ArrayList;)V

    invoke-virtual {v2}, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->getButton1Links()Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->isValid(Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "fail to parse resource. invalid landing page"

    if-eqz v3, :cond_4

    :try_start_1
    const-string v3, "btn2"

    invoke-virtual {p3, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p3

    if-eqz p3, :cond_5

    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v7, :cond_2

    invoke-virtual {v1, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_2
    invoke-virtual {v2, v1}, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->setButton2Text(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->getMid()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, p3}, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->parse(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->setButton2Links(Ljava/util/ArrayList;)V

    invoke-virtual {v2}, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->getButton2Links()Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->isValid(Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    sget-object p1, Lcom/samsung/android/sdk/smp/marketing/MarketingParser;->TAG:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->getMid()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3, v5}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/samsung/android/sdk/smp/common/exception/InternalException$WrongMarketingDataException;

    invoke-direct {p1}, Lcom/samsung/android/sdk/smp/common/exception/InternalException$WrongMarketingDataException;-><init>()V

    throw p1

    :cond_4
    sget-object p1, Lcom/samsung/android/sdk/smp/marketing/MarketingParser;->TAG:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->getMid()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3, v5}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/samsung/android/sdk/smp/common/exception/InternalException$WrongMarketingDataException;

    invoke-direct {p1}, Lcom/samsung/android/sdk/smp/common/exception/InternalException$WrongMarketingDataException;-><init>()V

    throw p1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_5
    :goto_1
    return-void

    :catch_0
    move-exception p1

    sget-object p3, Lcom/samsung/android/sdk/smp/marketing/MarketingParser;->TAG:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->getMid()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid resource file. "

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

    :cond_6
    new-instance p1, Lcom/samsung/android/sdk/smp/common/exception/InternalException$InvalidArgumentException;

    invoke-direct {p1}, Lcom/samsung/android/sdk/smp/common/exception/InternalException$InvalidArgumentException;-><init>()V

    throw p1
.end method

.method public parseUserData(Landroid/content/Context;Lcom/samsung/android/sdk/smp/marketing/Marketing;Lorg/json/JSONObject;)V
    .locals 6

    const-string v0, "bottom"

    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/sdk/smp/marketing/MarketingParser;->parseUserData(Landroid/content/Context;Lcom/samsung/android/sdk/smp/marketing/Marketing;Lorg/json/JSONObject;)V

    move-object p1, p2

    check-cast p1, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;

    :try_start_0
    const-string v1, "disturb"

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p3

    const/4 v1, 0x1

    if-ne v1, p3, :cond_0

    move p3, v1

    goto :goto_0

    :cond_0
    move p3, v2

    :goto_0
    invoke-virtual {p1, p3}, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->setIsDisturbOn(Z)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->isTestMsg()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-virtual {p1, v1}, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->setIsDisturbOn(Z)V

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->getStyle()Lorg/json/JSONObject;

    move-result-object p3

    const-string v3, "pop"

    invoke-virtual {p3, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->setTemplateType(I)V

    invoke-virtual {p3, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v1, v3, :cond_2

    move v3, v1

    goto :goto_1

    :cond_2
    move v3, v2

    :goto_1
    invoke-virtual {p1, v3}, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->setIsBottomVisible(Z)V

    const-string v3, "close"

    invoke-virtual {p3, v3, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v1, v3, :cond_3

    move v2, v1

    :cond_3
    invoke-virtual {p1, v2}, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->setIsCloseButtonVisible(Z)V

    const-string v2, "btnalign"

    invoke-virtual {p3, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->setButtonAlign(I)V

    const-string v1, "color"

    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p3

    const v1, -0x19191a

    const v2, -0xa0a0b

    const v3, -0x50506

    const/high16 v4, -0x22000000

    if-nez p3, :cond_4

    invoke-virtual {p1, v3}, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->setBackgroudColor(I)V

    invoke-virtual {p1, v2}, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->setBottomColor(I)V

    invoke-virtual {p1, v4}, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->setTextColor(I)V

    invoke-virtual {p1, v4}, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->setButtonTextColor(I)V

    invoke-virtual {p1, v1}, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->setLineColor(I)V

    goto :goto_2

    :cond_4
    const-string v5, "bg"

    invoke-virtual {p3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v3}, Lcom/samsung/android/sdk/smp/marketing/PopupMarketingParser;->parseColor(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->setBackgroudColor(I)V

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/sdk/smp/marketing/PopupMarketingParser;->parseColor(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->setBottomColor(I)V

    const-string/jumbo v0, "text"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v4}, Lcom/samsung/android/sdk/smp/marketing/PopupMarketingParser;->parseColor(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->setTextColor(I)V

    const-string v0, "btntext"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v4}, Lcom/samsung/android/sdk/smp/marketing/PopupMarketingParser;->parseColor(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->setButtonTextColor(I)V

    const-string v0, "line"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3, v1}, Lcom/samsung/android/sdk/smp/marketing/PopupMarketingParser;->parseColor(Ljava/lang/String;I)I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->setLineColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
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

    invoke-static {p3, p2, p1}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/samsung/android/sdk/smp/common/exception/InternalException$WrongMarketingDataException;

    invoke-direct {p1}, Lcom/samsung/android/sdk/smp/common/exception/InternalException$WrongMarketingDataException;-><init>()V

    throw p1
.end method
