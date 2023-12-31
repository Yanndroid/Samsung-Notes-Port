.class public Lcom/samsung/context/sdk/samsunganalytics/internal/util/Preferences;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final APP_PREF_NAMES:Ljava/lang/String; = "AppPrefs"

.field public static final PREFS_KEY_APP_VERSION:Ljava/lang/String; = "appVersion"

.field public static final PREFS_KEY_DID:Ljava/lang/String; = "deviceId"

.field public static final PREFS_KEY_DID_TYPE:Ljava/lang/String; = "auidType"

.field public static final PREFS_KEY_ENABLE_DEVICE:Ljava/lang/String; = "enable_device"

.field public static final PREFS_KEY_SEND_COMMON_SUCCESS:Ljava/lang/String; = "sendCommonSuccess"

.field public static final PREFS_KEY_SEND_COMMON_TIME:Ljava/lang/String; = "sendCommonTime"

.field public static final PROPERTY_DATA:Ljava/lang/String; = "property_data"

.field public static final PROPERTY_PREFS_NAME:Ljava/lang/String; = "SAProperties"

.field public static final PROPERTY_SENT_DATE:Ljava/lang/String; = "property_sent_date"

.field public static final SHARED_PREFS_NAME:Ljava/lang/String; = "SamsungAnalyticsPrefs"

.field public static final STATUS_SENT_DATE:Ljava/lang/String; = "status_sent_date"

.field public static final TERMS_PREF_NAME:Ljava/lang/String; = "SATerms"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    const-string v0, "SamsungAnalyticsPrefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public static getPropertyPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    const-string v0, "SAProperties"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method
