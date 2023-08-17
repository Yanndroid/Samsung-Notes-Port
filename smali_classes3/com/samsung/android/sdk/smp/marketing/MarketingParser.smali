.class abstract Lcom/samsung/android/sdk/smp/marketing/MarketingParser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/smp/marketing/MarketingParser$AppData;,
        Lcom/samsung/android/sdk/smp/marketing/MarketingParser$MarketingDisplayTime;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "MarketingParser"


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getLocaleConstants(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string/jumbo v0, "type3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    goto :goto_0

    :pswitch_1
    const-string/jumbo v0, "type2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :pswitch_2
    const-string/jumbo v0, "type1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_1

    const/4 p0, 0x0

    return-object p0

    :pswitch_3
    const-string p0, "lang3"

    return-object p0

    :pswitch_4
    const-string p0, "lang2"

    return-object p0

    :pswitch_5
    const-string p0, "lang1"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x69b5837
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method private static getParser(Lcom/samsung/android/sdk/smp/marketing/Marketing;)Lcom/samsung/android/sdk/smp/marketing/MarketingParser;
    .locals 1

    instance-of v0, p0, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;

    if-eqz v0, :cond_0

    new-instance p0, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketingParser;

    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketingParser;-><init>()V

    return-object p0

    :cond_0
    instance-of p0, p0, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;

    if-eqz p0, :cond_1

    new-instance p0, Lcom/samsung/android/sdk/smp/marketing/PopupMarketingParser;

    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/marketing/PopupMarketingParser;-><init>()V

    return-object p0

    :cond_1
    new-instance p0, Lcom/samsung/android/sdk/smp/common/exception/InternalException$NotSupportedTypeException;

    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/common/exception/InternalException$NotSupportedTypeException;-><init>()V

    throw p0
.end method

.method private static getResourceUrl(Lorg/json/JSONObject;Ljava/lang/String;)Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/samsung/android/sdk/smp/marketing/MarketingParser;->getLocaleConstants(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance p0, Landroid/util/Pair;

    invoke-direct {p0, v0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_0
    const-string v2, "bURL"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "fname"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, v2, p0, v1, v0}, Lcom/samsung/android/sdk/smp/marketing/MarketingParser;->getResourceUrlByLocale(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, p0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method private static getResourceUrlByLocale(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string v0, "/"

    const/4 v1, 0x0

    if-eqz p0, :cond_5

    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    if-eqz p3, :cond_5

    if-nez p4, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-static {}, Lcom/samsung/android/sdk/smp/common/util/DeviceInfoUtil;->getLocale()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {p3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_2

    invoke-virtual {p3, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v3, v2

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    move-object v3, v1

    :goto_1
    if-nez v3, :cond_3

    invoke-static {p3}, Lcom/samsung/android/sdk/smp/marketing/MarketingParser;->getSubLocale(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v3

    sget-object p3, Lcom/samsung/android/sdk/smp/marketing/MarketingParser;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "use sub locale : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p3, v4}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    if-nez v3, :cond_4

    sget-object p0, Lcom/samsung/android/sdk/smp/marketing/MarketingParser;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "cannot get resource locale:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ". use default url"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p4

    :cond_4
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/sdk/smp/marketing/MarketingParser;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "fail to get res url by locale."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_5
    :goto_2
    sget-object p0, Lcom/samsung/android/sdk/smp/marketing/MarketingParser;->TAG:Ljava/lang/String;

    const-string p1, "fail to get res url by locale. invalid params"

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method private static getSubLocale(Ljava/util/Iterator;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/sdk/smp/common/util/DeviceInfoUtil;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getSubLocale(Lorg/json/JSONArray;)Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/samsung/android/sdk/smp/common/util/DeviceInfoUtil;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getTextResourceByLanguage(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 4

    :try_start_0
    invoke-static {}, Lcom/samsung/android/sdk/smp/common/util/DeviceInfoUtil;->getLocale()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/smp/marketing/MarketingParser;->getSubLocale(Ljava/util/Iterator;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/samsung/android/sdk/smp/marketing/MarketingParser;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "use sub locale : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-static {v1, v2}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/samsung/android/sdk/smp/marketing/MarketingParser;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "use default locale"

    goto :goto_0

    :cond_1
    new-instance p0, Lcom/samsung/android/sdk/smp/common/exception/InternalException$LocaleNotMatchException;

    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/common/exception/InternalException$LocaleNotMatchException;-><init>()V

    throw p0

    :cond_2
    :goto_1
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/sdk/smp/marketing/MarketingParser;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid text resource. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/samsung/android/sdk/smp/common/exception/InternalException$WrongMarketingDataException;

    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/common/exception/InternalException$WrongMarketingDataException;-><init>()V

    throw p0
.end method

.method private isValidFilter(Lcom/samsung/android/sdk/smp/marketing/MarketingFilter;)Z
    .locals 3

    invoke-virtual {p1}, Lcom/samsung/android/sdk/smp/marketing/MarketingFilter;->getInstallPkg()Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/smp/marketing/MarketingFilter;->getInstallCount()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lt v0, v1, :cond_0

    if-gtz v1, :cond_1

    :cond_0
    return v2

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/sdk/smp/marketing/MarketingFilter;->getNotInstallPkg()Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/smp/marketing/MarketingFilter;->getNotInstallCount()I

    move-result p1

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lt v0, p1, :cond_2

    if-gtz p1, :cond_3

    :cond_2
    return v2

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method private isValidTime(Ljava/lang/String;Lcom/samsung/android/sdk/smp/marketing/MarketingParser$MarketingDisplayTime;IIJI[I)Z
    .locals 14

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    iget-object v4, v2, Lcom/samsung/android/sdk/smp/marketing/MarketingParser$MarketingDisplayTime;->timeBase:Ljava/lang/String;

    const-string/jumbo v5, "utc0"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    iget-object v4, v2, Lcom/samsung/android/sdk/smp/marketing/MarketingParser$MarketingDisplayTime;->timeBase:Ljava/lang/String;

    const-string v6, "local"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v1, Lcom/samsung/android/sdk/smp/marketing/MarketingParser;->TAG:Ljava/lang/String;

    const-string v2, "invalid timeBase"

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v5

    :cond_0
    iget-object v4, v2, Lcom/samsung/android/sdk/smp/marketing/MarketingParser$MarketingDisplayTime;->displayTimeStart:Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;

    iget-object v6, v2, Lcom/samsung/android/sdk/smp/marketing/MarketingParser$MarketingDisplayTime;->displayTimeEnd:Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;

    invoke-direct {p0, p1, v4, v6, v5}, Lcom/samsung/android/sdk/smp/marketing/MarketingParser;->isValidTimeRange(Ljava/lang/String;Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;Z)Z

    move-result v4

    if-nez v4, :cond_1

    sget-object v2, Lcom/samsung/android/sdk/smp/marketing/MarketingParser;->TAG:Ljava/lang/String;

    const-string v3, "invalid displayTime"

    invoke-static {v2, p1, v3}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v5

    :cond_1
    iget-object v4, v2, Lcom/samsung/android/sdk/smp/marketing/MarketingParser$MarketingDisplayTime;->doNotDisturbTimeStart:Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;

    iget-object v6, v2, Lcom/samsung/android/sdk/smp/marketing/MarketingParser$MarketingDisplayTime;->doNotDisturbTimeEnd:Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;

    const/4 v7, 0x1

    invoke-direct {p0, p1, v4, v6, v7}, Lcom/samsung/android/sdk/smp/marketing/MarketingParser;->isValidTimeRange(Ljava/lang/String;Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;Z)Z

    move-result v4

    if-nez v4, :cond_2

    sget-object v2, Lcom/samsung/android/sdk/smp/marketing/MarketingParser;->TAG:Ljava/lang/String;

    const-string v3, "invalid doNotDisturbTime"

    invoke-static {v2, p1, v3}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v5

    :cond_2
    iget-wide v8, v2, Lcom/samsung/android/sdk/smp/marketing/MarketingParser$MarketingDisplayTime;->ttlStartMillis:J

    const-wide/16 v10, 0x0

    cmp-long v4, v8, v10

    if-ltz v4, :cond_b

    iget-wide v12, v2, Lcom/samsung/android/sdk/smp/marketing/MarketingParser$MarketingDisplayTime;->ttlEndMillis:J

    cmp-long v2, v12, v10

    if-ltz v2, :cond_b

    cmp-long v2, v8, v12

    if-ltz v2, :cond_3

    goto :goto_2

    :cond_3
    if-ltz v3, :cond_a

    const/16 v2, 0x5a0

    if-le v3, v2, :cond_4

    goto :goto_1

    :cond_4
    const/4 v2, -0x1

    move/from16 v3, p4

    if-ge v3, v2, :cond_5

    sget-object v2, Lcom/samsung/android/sdk/smp/marketing/MarketingParser;->TAG:Ljava/lang/String;

    const-string v3, "invalid cctime"

    invoke-static {v2, p1, v3}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v5

    :cond_5
    cmp-long v2, p5, v10

    if-ltz v2, :cond_9

    cmp-long v2, p5, v12

    if-lez v2, :cond_6

    goto :goto_0

    :cond_6
    if-gez p7, :cond_7

    sget-object v2, Lcom/samsung/android/sdk/smp/marketing/MarketingParser;->TAG:Ljava/lang/String;

    const-string v3, "invalid screenOnTime"

    invoke-static {v2, p1, v3}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v5

    :cond_7
    aget v1, p8, v5

    aget v2, p8, v7

    if-le v1, v2, :cond_8

    sget-object v1, Lcom/samsung/android/sdk/smp/marketing/MarketingParser;->TAG:Ljava/lang/String;

    const-string v2, "invalid feedbackDispersion"

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v5

    :cond_8
    return v7

    :cond_9
    :goto_0
    sget-object v2, Lcom/samsung/android/sdk/smp/marketing/MarketingParser;->TAG:Ljava/lang/String;

    const-string v3, "invalid clearTime"

    invoke-static {v2, p1, v3}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v5

    :cond_a
    :goto_1
    sget-object v2, Lcom/samsung/android/sdk/smp/marketing/MarketingParser;->TAG:Ljava/lang/String;

    const-string v3, "invalid random"

    invoke-static {v2, p1, v3}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v5

    :cond_b
    :goto_2
    sget-object v2, Lcom/samsung/android/sdk/smp/marketing/MarketingParser;->TAG:Ljava/lang/String;

    const-string v3, "invalid ttl"

    invoke-static {v2, p1, v3}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v5
.end method

.method private isValidTimeRange(Ljava/lang/String;Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;Z)Z
    .locals 3

    const/4 v0, 0x1

    if-eqz p4, :cond_0

    invoke-virtual {p2}, Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;->getHour()I

    move-result p4

    const/4 v1, -0x1

    if-ne p4, v1, :cond_0

    invoke-virtual {p3}, Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;->getHour()I

    move-result p4

    if-ne p4, v1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p2}, Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;->getHour()I

    move-result p4

    invoke-static {p4}, Lcom/samsung/android/sdk/smp/common/util/TimeUtil;->isInvalidHour(I)Z

    move-result p4

    const/4 v1, 0x0

    if-nez p4, :cond_5

    invoke-virtual {p3}, Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;->getHour()I

    move-result p4

    invoke-static {p4}, Lcom/samsung/android/sdk/smp/common/util/TimeUtil;->isInvalidHour(I)Z

    move-result p4

    if-eqz p4, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p2}, Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;->getMin()I

    move-result p4

    invoke-static {p4}, Lcom/samsung/android/sdk/smp/common/util/TimeUtil;->isInvalidMinute(I)Z

    move-result p4

    if-nez p4, :cond_4

    invoke-virtual {p3}, Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;->getMin()I

    move-result p4

    invoke-static {p4}, Lcom/samsung/android/sdk/smp/common/util/TimeUtil;->isInvalidMinute(I)Z

    move-result p4

    if-eqz p4, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;->getHour()I

    move-result p4

    invoke-virtual {p3}, Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;->getHour()I

    move-result v2

    if-ne p4, v2, :cond_3

    invoke-virtual {p2}, Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;->getMin()I

    move-result p2

    invoke-virtual {p3}, Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;->getMin()I

    move-result p3

    if-ne p2, p3, :cond_3

    sget-object p2, Lcom/samsung/android/sdk/smp/marketing/MarketingParser;->TAG:Ljava/lang/String;

    const-string p3, "invalid time range : start and end time are same"

    :goto_0
    invoke-static {p2, p1, p3}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_3
    return v0

    :cond_4
    :goto_1
    sget-object p2, Lcom/samsung/android/sdk/smp/marketing/MarketingParser;->TAG:Ljava/lang/String;

    const-string p3, "invalid time range : min"

    goto :goto_0

    :cond_5
    :goto_2
    sget-object p2, Lcom/samsung/android/sdk/smp/marketing/MarketingParser;->TAG:Ljava/lang/String;

    const-string p3, "invalid time range : hour"

    goto :goto_0
.end method

.method public static parseAppData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/samsung/android/sdk/smp/marketing/Marketing;
    .locals 1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    if-ltz p4, :cond_1

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p3, "marketingType"

    invoke-virtual {v0, p3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p1, p2, p3, p4}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->getMarketingByMarketingType(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/samsung/android/sdk/smp/marketing/Marketing;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/sdk/smp/marketing/MarketingParser;->getParser(Lcom/samsung/android/sdk/smp/marketing/Marketing;)Lcom/samsung/android/sdk/smp/marketing/MarketingParser;

    move-result-object p3

    invoke-virtual {p3, p0, p2, v0}, Lcom/samsung/android/sdk/smp/marketing/MarketingParser;->parseUserData(Landroid/content/Context;Lcom/samsung/android/sdk/smp/marketing/Marketing;Lorg/json/JSONObject;)V

    invoke-virtual {p2}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->isSupportType()Z

    move-result p0

    if-eqz p0, :cond_0

    return-object p2

    :cond_0
    new-instance p0, Lcom/samsung/android/sdk/smp/common/exception/InternalException$NotSupportedTypeException;

    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/common/exception/InternalException$NotSupportedTypeException;-><init>()V

    throw p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    sget-object p2, Lcom/samsung/android/sdk/smp/marketing/MarketingParser;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "invalid appdata. "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p1, p0}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/samsung/android/sdk/smp/common/exception/InternalException$WrongMarketingDataException;

    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/common/exception/InternalException$WrongMarketingDataException;-><init>()V

    throw p0

    :cond_1
    sget-object p0, Lcom/samsung/android/sdk/smp/marketing/MarketingParser;->TAG:Ljava/lang/String;

    const-string p2, "invalid appdata"

    invoke-static {p0, p1, p2}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/samsung/android/sdk/smp/common/exception/InternalException$WrongMarketingDataException;

    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/common/exception/InternalException$WrongMarketingDataException;-><init>()V

    throw p0
.end method

.method public static parseAppData(Ljava/lang/String;)Lcom/samsung/android/sdk/smp/marketing/MarketingParser$AppData;
    .locals 4

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/samsung/android/sdk/smp/marketing/MarketingParser;->TAG:Ljava/lang/String;

    const-string v0, "appdata is null"

    invoke-static {p0, v0}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "mid"

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v2, "type"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "userdata"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/samsung/android/sdk/smp/marketing/MarketingParser$AppData;

    invoke-direct {v3, p0, v2, v0}, Lcom/samsung/android/sdk/smp/marketing/MarketingParser$AppData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/sdk/smp/marketing/MarketingParser;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid appdata. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method private parseFeedbackDispersion(Lorg/json/JSONArray;)[I
    .locals 5

    const/4 v0, 0x2

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez p1, :cond_0

    aput v3, v1, v2

    const/16 p1, 0xa

    aput p1, v1, v3

    return-object v1

    :cond_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ne v4, v0, :cond_1

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v0

    aput v0, v1, v2

    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->getInt(I)I

    move-result p1

    aput p1, v1, v3

    return-object v1

    :cond_1
    new-instance p1, Lcom/samsung/android/sdk/smp/common/exception/InternalException$WrongMarketingDataException;

    invoke-direct {p1}, Lcom/samsung/android/sdk/smp/common/exception/InternalException$WrongMarketingDataException;-><init>()V

    throw p1
.end method

.method public static parseMarketingDisplayTime(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/samsung/android/sdk/smp/marketing/MarketingParser$MarketingDisplayTime;
    .locals 13

    const-class v0, Ljava/lang/Integer;

    const-string/jumbo v1, "timeBase"

    const-string v2, "local"

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "cardDisplayTime"

    invoke-static {p0, p1, v1, v0}, Lcom/samsung/android/sdk/smp/marketing/MarketingParser;->parseTimeList(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    sget-object v3, Lcom/samsung/android/sdk/smp/common/constants/MarketingConstants;->DEFAULT_TIME_MIN:Ljava/util/List;

    const-string v5, "cardDisplayTimeMin"

    invoke-static {p0, p1, v5, v0, v3}, Lcom/samsung/android/sdk/smp/marketing/MarketingParser;->parseTimeList(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    const-class v6, Ljava/lang/Long;

    const-string/jumbo v7, "ttl"

    invoke-static {p0, p1, v7, v6}, Lcom/samsung/android/sdk/smp/marketing/MarketingParser;->parseTimeList(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v2, :cond_0

    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/Integer;

    const/4 p1, -0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p0, v8

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v7

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/samsung/android/sdk/smp/common/constants/MarketingConstants;->DEFAULT_DO_NOT_DISTURB_TIME:Ljava/util/List;

    const-string v9, "doNotDisturbTime"

    invoke-static {p0, p1, v9, v0, v2}, Lcom/samsung/android/sdk/smp/marketing/MarketingParser;->parseTimeList(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    const-string v9, "doNotDisturbTimeMin"

    invoke-static {p0, p1, v9, v0, v3}, Lcom/samsung/android/sdk/smp/marketing/MarketingParser;->parseTimeList(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    move-object p0, v2

    :goto_0
    new-instance v9, Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v9, p1, v0}, Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;-><init>(II)V

    new-instance v10, Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v10, p1, v0}, Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;-><init>(II)V

    new-instance v11, Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;

    invoke-interface {p0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v11, p1, v0}, Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;-><init>(II)V

    new-instance v12, Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;

    invoke-interface {p0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {v12, p0, p1}, Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;-><init>(II)V

    new-instance p0, Lcom/samsung/android/sdk/smp/marketing/MarketingParser$MarketingDisplayTime;

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    move-object v3, p0

    move-wide v5, v0

    invoke-direct/range {v3 .. v12}, Lcom/samsung/android/sdk/smp/marketing/MarketingParser$MarketingDisplayTime;-><init>(Ljava/lang/String;JJLcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;)V

    return-object p0
.end method

.method public static parseResource(Landroid/content/Context;Lcom/samsung/android/sdk/smp/marketing/Marketing;)V
    .locals 3

    :try_start_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->getMid()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/samsung/android/sdk/smp/common/util/FilePathUtil;->getTxtFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/smp/common/util/FileIOUtil;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/16 v2, 0x7d

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/samsung/android/sdk/smp/marketing/MarketingParser;->getTextResourceByLanguage(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {p1}, Lcom/samsung/android/sdk/smp/marketing/MarketingParser;->getParser(Lcom/samsung/android/sdk/smp/marketing/Marketing;)Lcom/samsung/android/sdk/smp/marketing/MarketingParser;

    move-result-object v1

    invoke-virtual {v1, p0, p1, v0}, Lcom/samsung/android/sdk/smp/marketing/MarketingParser;->parseTextContents(Landroid/content/Context;Lcom/samsung/android/sdk/smp/marketing/Marketing;Lorg/json/JSONObject;)V

    invoke-virtual {v1, p0, p1}, Lcom/samsung/android/sdk/smp/marketing/MarketingParser;->parseImageContents(Landroid/content/Context;Lcom/samsung/android/sdk/smp/marketing/Marketing;)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->setToResourceParsed()V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    :goto_0
    sget-object v0, Lcom/samsung/android/sdk/smp/marketing/MarketingParser;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->getMid()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid resource. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p1, p0}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/samsung/android/sdk/smp/common/exception/InternalException$WrongMarketingDataException;

    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/common/exception/InternalException$WrongMarketingDataException;-><init>()V

    throw p0
.end method

.method public static parseResourceUrl(Landroid/content/Context;Lorg/json/JSONObject;)Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/json/JSONObject;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance p0, Landroid/util/Pair;

    const/4 p1, 0x0

    invoke-direct {p0, p1, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/common/preference/PrefManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->getContentsTypePolicy()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p0, p1, v0}, Lcom/samsung/android/sdk/smp/marketing/MarketingParser;->parseResourceUrlByPolicy(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {p0}, Lcom/samsung/android/sdk/smp/common/util/DeviceInfoUtil;->getContentsType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/smp/marketing/MarketingParser;->parseResourceUrlForType(Ljava/lang/String;Lorg/json/JSONObject;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private static parseResourceUrlByPolicy(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;)Landroid/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/sdk/smp/marketing/MarketingParser;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "contents type policy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x5f5e8754

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v1, v2, :cond_0

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string/jumbo v1, "type3"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    goto :goto_1

    :pswitch_1
    const-string/jumbo v1, "type2"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v4

    goto :goto_1

    :pswitch_2
    const-string/jumbo v1, "type1"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_0
    const-string v1, "resolution"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, -0x1

    :goto_1
    if-eqz v1, :cond_3

    if-eq v1, v4, :cond_3

    if-eq v1, v3, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "invalid contents type policy: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Landroid/util/Pair;

    const/4 p1, 0x0

    invoke-direct {p0, p1, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_2
    invoke-static {p0}, Lcom/samsung/android/sdk/smp/common/util/DeviceInfoUtil;->getContentsTypeByResolution(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/sdk/smp/marketing/MarketingParser;->getResourceUrl(Lorg/json/JSONObject;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-static {p1, p2}, Lcom/samsung/android/sdk/smp/marketing/MarketingParser;->getResourceUrl(Lorg/json/JSONObject;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x69b5837
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static parseResourceUrlForType(Ljava/lang/String;Lorg/json/JSONObject;)Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "type1"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "type2"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Landroid/util/Pair;

    invoke-direct {p0, v5, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_0
    invoke-static {p1, v0}, Lcom/samsung/android/sdk/smp/marketing/MarketingParser;->getResourceUrl(Lorg/json/JSONObject;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p0

    goto :goto_0

    :cond_1
    const-string/jumbo v4, "type3"

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {p1, v4}, Lcom/samsung/android/sdk/smp/marketing/MarketingParser;->getResourceUrl(Lorg/json/JSONObject;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p0

    goto :goto_0

    :cond_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    new-instance p0, Landroid/util/Pair;

    invoke-direct {p0, v5, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_3
    new-instance p0, Landroid/util/Pair;

    invoke-direct {p0, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    invoke-static {p1, v2}, Lcom/samsung/android/sdk/smp/marketing/MarketingParser;->getResourceUrl(Lorg/json/JSONObject;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static parseTimeList(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/sdk/smp/marketing/MarketingParser;->replaceWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    array-length p2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_2

    aget-object v1, p1, v0

    const-class v2, Ljava/lang/Integer;

    invoke-virtual {v2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_0
    :goto_1
    invoke-virtual {p3, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    const-class v2, Ljava/lang/Long;

    invoke-virtual {v2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_1

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object p0

    :cond_3
    sget-object p1, Lcom/samsung/android/sdk/smp/marketing/MarketingParser;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "invalid "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p0, p2}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/samsung/android/sdk/smp/common/exception/InternalException$WrongMarketingDataException;

    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/common/exception/InternalException$WrongMarketingDataException;-><init>()V

    throw p0
.end method

.method private static parseTimeList(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/util/List<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lcom/samsung/android/sdk/smp/marketing/MarketingParser;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " not found. set to default"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object p4

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/sdk/smp/marketing/MarketingParser;->parseTimeList(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static replaceWhiteSpace(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "\\p{Space}"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public applyLRMUnicode(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    const-string p2, "<br>"

    goto :goto_0

    :cond_0
    const-string p2, "\n"

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x200e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(?i)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method public abstract parseImageContents(Landroid/content/Context;Lcom/samsung/android/sdk/smp/marketing/Marketing;)V
.end method

.method public abstract parseTextContents(Landroid/content/Context;Lcom/samsung/android/sdk/smp/marketing/Marketing;Lorg/json/JSONObject;)V
.end method

.method public parseUserData(Landroid/content/Context;Lcom/samsung/android/sdk/smp/marketing/Marketing;Lorg/json/JSONObject;)V
    .locals 20

    move-object/from16 v10, p0

    move-object/from16 v11, p2

    move-object/from16 v0, p3

    const-string v12, "filter"

    :try_start_0
    const-string/jumbo v1, "st"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v11, v1}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->setStyle(Lorg/json/JSONObject;)V

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->getMid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/samsung/android/sdk/smp/marketing/MarketingParser;->parseMarketingDisplayTime(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/samsung/android/sdk/smp/marketing/MarketingParser$MarketingDisplayTime;

    move-result-object v13

    const-string v1, "clearTime"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-nez v1, :cond_0

    sget-object v1, Lcom/samsung/android/sdk/smp/marketing/MarketingParser;->TAG:Ljava/lang/String;

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->getMid()Ljava/lang/String;

    move-result-object v2

    const-string v3, "replace clearTime to ttl end"

    invoke-static {v1, v2, v3}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v4, v13, Lcom/samsung/android/sdk/smp/marketing/MarketingParser$MarketingDisplayTime;->ttlEndMillis:J

    :cond_0
    move-wide v14, v4

    const-string v1, "random"

    const/16 v2, 0x3c

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    const-string v1, "cctime"

    const/4 v8, 0x0

    invoke-virtual {v0, v1, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    const-string v1, "screenOnTime"

    invoke-virtual {v0, v1, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    const-string v1, "feedbackDispersion"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-direct {v10, v1}, Lcom/samsung/android/sdk/smp/marketing/MarketingParser;->parseFeedbackDispersion(Lorg/json/JSONArray;)[I

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->getMid()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-object/from16 v1, p0

    move-object v3, v13

    move v4, v9

    move v5, v6

    move v10, v6

    move/from16 v17, v7

    move-wide v6, v14

    move-object/from16 v18, v12

    move v12, v8

    move/from16 v8, v17

    move/from16 v19, v9

    move-object/from16 v9, v16

    :try_start_1
    invoke-direct/range {v1 .. v9}, Lcom/samsung/android/sdk/smp/marketing/MarketingParser;->isValidTime(Ljava/lang/String;Lcom/samsung/android/sdk/smp/marketing/MarketingParser$MarketingDisplayTime;IIJI[I)Z

    move-result v1

    if-eqz v1, :cond_8

    aget v1, v16, v12

    invoke-virtual {v11, v1}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->setFeedbackDispersionMin(I)V

    const/4 v1, 0x1

    aget v2, v16, v1

    invoke-virtual {v11, v2}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->setFeedbackDispersionMax(I)V

    iget-object v2, v13, Lcom/samsung/android/sdk/smp/marketing/MarketingParser$MarketingDisplayTime;->timeBase:Ljava/lang/String;

    invoke-virtual {v11, v2}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->setTimeBase(Ljava/lang/String;)V

    iget-object v2, v13, Lcom/samsung/android/sdk/smp/marketing/MarketingParser$MarketingDisplayTime;->displayTimeStart:Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;

    invoke-virtual {v11, v2}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->setDisplayTimeStart(Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;)V

    iget-object v2, v13, Lcom/samsung/android/sdk/smp/marketing/MarketingParser$MarketingDisplayTime;->displayTimeEnd:Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;

    invoke-virtual {v11, v2}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->setDisplayTimeEnd(Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;)V

    iget-object v2, v13, Lcom/samsung/android/sdk/smp/marketing/MarketingParser$MarketingDisplayTime;->doNotDisturbTimeStart:Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;

    invoke-virtual {v11, v2}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->setDoNotDisturbTimeStart(Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;)V

    iget-object v2, v13, Lcom/samsung/android/sdk/smp/marketing/MarketingParser$MarketingDisplayTime;->doNotDisturbTimeEnd:Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;

    invoke-virtual {v11, v2}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->setDoNotDisturbTimeEnd(Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;)V

    iget-wide v2, v13, Lcom/samsung/android/sdk/smp/marketing/MarketingParser$MarketingDisplayTime;->ttlStartMillis:J

    invoke-virtual {v11, v2, v3}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->setTtlStartMillis(J)V

    iget-wide v2, v13, Lcom/samsung/android/sdk/smp/marketing/MarketingParser$MarketingDisplayTime;->ttlEndMillis:J

    invoke-virtual {v11, v2, v3}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->setTtlEndMillis(J)V

    invoke-virtual {v11, v14, v15}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->setClearTimeMillis(J)V

    move/from16 v2, v19

    invoke-virtual {v11, v2}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->setRandomMinutes(I)V

    invoke-virtual {v11, v10}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->setCctimeMinutes(I)V

    const-string v2, "pLink"

    invoke-virtual {v0, v2, v12}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v11, v2}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->setPLink(Z)V

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/sdk/smp/common/util/DeviceInfoUtil;->isSamsungPushService(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    move/from16 v2, v17

    invoke-virtual {v11, v2}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->setScreenOnTimeMinutes(I)V

    :cond_1
    const-string v2, "contents"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v11, v2}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->setContentsUrl(Lorg/json/JSONObject;)V

    const-string v2, "chan"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v1, :cond_2

    if-eq v2, v3, :cond_2

    move v2, v1

    :cond_2
    invoke-virtual {v11, v2}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->setChannelType(I)V

    move-object/from16 v2, v18

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    new-instance v4, Lcom/samsung/android/sdk/smp/marketing/MarketingFilter;

    invoke-direct {v4}, Lcom/samsung/android/sdk/smp/marketing/MarketingFilter;-><init>()V

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v5, "install"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const-string v6, "count"

    const-string v7, "pkg"

    if-eqz v5, :cond_3

    :try_start_2
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/samsung/android/sdk/smp/marketing/MarketingFilter;->setInstallPkg(Lorg/json/JSONArray;)V

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/sdk/smp/marketing/MarketingFilter;->setInstallCount(I)V

    :cond_3
    const-string v5, "notInstall"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/sdk/smp/marketing/MarketingFilter;->setNotInstallPkg(Lorg/json/JSONArray;)V

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v4, v2}, Lcom/samsung/android/sdk/smp/marketing/MarketingFilter;->setNotInstallCount(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_4
    move-object/from16 v2, p0

    :try_start_3
    invoke-direct {v2, v4}, Lcom/samsung/android/sdk/smp/marketing/MarketingParser;->isValidFilter(Lcom/samsung/android/sdk/smp/marketing/MarketingFilter;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v11, v4}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->setFilter(Lcom/samsung/android/sdk/smp/marketing/MarketingFilter;)V

    goto :goto_0

    :cond_5
    new-instance v0, Lcom/samsung/android/sdk/smp/common/exception/InternalException$WrongMarketingDataException;

    invoke-direct {v0}, Lcom/samsung/android/sdk/smp/common/exception/InternalException$WrongMarketingDataException;-><init>()V

    throw v0

    :cond_6
    move-object/from16 v2, p0

    :goto_0
    const-string v4, "freq"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-nez v0, :cond_7

    const/4 v0, -0x1

    invoke-virtual {v11, v0, v0, v0, v0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->setFreqCapping(IIII)V

    goto :goto_1

    :cond_7
    invoke-virtual {v0, v12}, Lorg/json/JSONArray;->getInt(I)I

    move-result v4

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getInt(I)I

    move-result v3

    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->getInt(I)I

    move-result v0

    invoke-virtual {v11, v4, v1, v3, v0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->setFreqCapping(IIII)V

    :goto_1
    return-void

    :cond_8
    move-object/from16 v2, p0

    new-instance v0, Lcom/samsung/android/sdk/smp/common/exception/InternalException$WrongMarketingDataException;

    invoke-direct {v0}, Lcom/samsung/android/sdk/smp/common/exception/InternalException$WrongMarketingDataException;-><init>()V

    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object/from16 v2, p0

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v2, v10

    :goto_2
    sget-object v1, Lcom/samsung/android/sdk/smp/marketing/MarketingParser;->TAG:Ljava/lang/String;

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->getMid()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid userdata. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v3, v0}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/sdk/smp/common/exception/InternalException$WrongMarketingDataException;

    invoke-direct {v0}, Lcom/samsung/android/sdk/smp/common/exception/InternalException$WrongMarketingDataException;-><init>()V

    throw v0
.end method
