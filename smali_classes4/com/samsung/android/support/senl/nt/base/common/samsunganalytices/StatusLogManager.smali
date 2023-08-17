.class Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/StatusLogManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final STATUS_KEY_NAME_INTEGER:Ljava/lang/String; = "IntegerKeys"

.field private static final STATUS_KEY_NAME_STRING:Ljava/lang/String; = "StringKeys"

.field private static final STATUS_KEY_NAME_VERSION:Ljava/lang/String; = "VersionKey"

.field private static final STATUS_KEY_TYPE_INTEGER:I = 0x2

.field private static final STATUS_KEY_TYPE_STRING:I = 0x1

.field private static final STATUS_PREFERENCE_NAME:Ljava/lang/String; = "APP_LAUNCH"

.field private static final TAG:Ljava/lang/String; = "NotesSA$StatusM"

.field private static final mIntegerStatusList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final mSettingPrefBuilder:Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingPrefBuilder;

.field private static mSharedPref:Landroid/content/SharedPreferences;

.field private static final mStringStatusList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/StatusLogManager;->mStringStatusList:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/StatusLogManager;->mIntegerStatusList:Ljava/util/Map;

    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingPrefBuilder;

    invoke-direct {v0}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingPrefBuilder;-><init>()V

    sput-object v0, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/StatusLogManager;->mSettingPrefBuilder:Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingPrefBuilder;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static insertStatusLog(Ljava/lang/String;I)V
    .locals 6

    sget-object v0, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/StatusLogManager;->mIntegerStatusList:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    move v5, v3

    move v3, v2

    move v2, v5

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    if-eqz v2, :cond_2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/StatusLogManager;->updateStatusValues(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    if-eqz v3, :cond_3

    const/4 p1, 0x2

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/StatusLogManager;->updateStatusKeys(I)V

    sget-object p1, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/StatusLogManager;->mSettingPrefBuilder:Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingPrefBuilder;

    const-string v0, "APP_LAUNCH"

    invoke-virtual {p1, v0, p0}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingPrefBuilder;->addKey(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingPrefBuilder;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/StatusLogManager;->registerStatusLogs()V

    :cond_3
    return-void
.end method

.method public static insertStatusLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "invalid status("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "). detail is null."

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NotesSA$StatusM"

    invoke-static {p1, p0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/StatusLogManager;->mStringStatusList:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    move v1, v3

    move v2, v1

    goto :goto_0

    :cond_1
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v2

    move v2, v3

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    if-eqz v2, :cond_3

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/StatusLogManager;->updateStatusValues(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    if-eqz v1, :cond_4

    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/StatusLogManager;->updateStatusKeys(I)V

    sget-object p1, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/StatusLogManager;->mSettingPrefBuilder:Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingPrefBuilder;

    const-string v0, "APP_LAUNCH"

    invoke-virtual {p1, v0, p0}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingPrefBuilder;->addKey(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingPrefBuilder;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/StatusLogManager;->registerStatusLogs()V

    :cond_4
    return-void
.end method

.method private static registerStatusLogs()V
    .locals 2

    const-string v0, "NotesSA$StatusM"

    const-string v1, "setUpStatus: register Setting Pref"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->getInstance()Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/StatusLogManager;->mSettingPrefBuilder:Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingPrefBuilder;

    invoke-virtual {v1}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingPrefBuilder;->build()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->registerSettingPref(Ljava/util/Map;)V

    return-void
.end method

.method public static setUpStatus(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setUpStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotesSA$StatusM"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "APP_LAUNCH"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    sput-object p0, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/StatusLogManager;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v3, "VersionKey"

    const-string v4, ""

    invoke-interface {p0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/StatusLogManager;->updateVersion(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setUpStatus: changed version : fr "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " to "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :goto_1
    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    sget-object p1, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/StatusLogManager;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v3, "StringKeys"

    invoke-interface {p1, v3, p0}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v3, v2

    :cond_2
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    :try_start_0
    sget-object v6, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/StatusLogManager;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v6, v5, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-object v6, v4

    :goto_3
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    sget-object v7, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/StatusLogManager;->mStringStatusList:Ljava/util/Map;

    invoke-interface {v7, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/StatusLogManager;->mSettingPrefBuilder:Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingPrefBuilder;

    invoke-virtual {v6, v0, v5}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingPrefBuilder;->addKey(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingPrefBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    invoke-interface {p0}, Ljava/util/Set;->clear()V

    goto :goto_4

    :cond_4
    move v3, v2

    :goto_4
    sget-object p1, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/StatusLogManager;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v4, "IntegerKeys"

    invoke-interface {p1, v4, p0}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    :try_start_1
    sget-object v4, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/StatusLogManager;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v4, p1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_6

    :catch_1
    move v4, v2

    :goto_6
    sget-object v5, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/StatusLogManager;->mIntegerStatusList:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/StatusLogManager;->mSettingPrefBuilder:Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingPrefBuilder;

    invoke-virtual {v4, v0, p1}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingPrefBuilder;->addKey(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingPrefBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "setUpStatus : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/StatusLogManager;->mSettingPrefBuilder:Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingPrefBuilder;

    invoke-virtual {p1}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingPrefBuilder;->build()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-lez v3, :cond_6

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/StatusLogManager;->registerStatusLogs()V

    :cond_6
    return-void
.end method

.method private static updateStatusKeys(I)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/StatusLogManager;->mSharedPref:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    move-object p0, v1

    goto :goto_1

    :cond_1
    sget-object p0, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/StatusLogManager;->mIntegerStatusList:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    const-string p0, "IntegerKeys"

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/StatusLogManager;->mStringStatusList:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    const-string p0, "StringKeys"

    :goto_0
    move-object v2, v1

    move-object v1, p0

    move-object p0, v2

    :goto_1
    if-eqz v1, :cond_3

    sget-object v0, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/StatusLogManager;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_3
    return-void
.end method

.method private static updateStatusValues(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/StatusLogManager;->mSharedPref:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    return-void

    :cond_0
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    check-cast p1, Ljava/lang/String;

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1

    :cond_1
    instance-of v1, p1, Ljava/lang/Integer;

    if-eqz v1, :cond_2

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private static updateVersion(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/StatusLogManager;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "VersionKey"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
