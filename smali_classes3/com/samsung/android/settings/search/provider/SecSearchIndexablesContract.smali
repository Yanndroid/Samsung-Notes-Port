.class public Lcom/samsung/android/settings/search/provider/SecSearchIndexablesContract;
.super Lcom/samsung/android/settings/search/provider/SearchIndexablesContract;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/search/provider/SecSearchIndexablesContract$SecRawData;,
        Lcom/samsung/android/settings/search/provider/SecSearchIndexablesContract$SecNonIndexableKey;
    }
.end annotation


# static fields
.field public static final AVAILABLE:I = 0x0

.field public static final SEC_COLUMN_SITEMAP_CHILD_CLASS:I = 0x2

.field public static final SEC_COLUMN_SITEMAP_CHILD_TITLE:I = 0x3

.field public static final SEC_COLUMN_SITEMAP_PARENT_CLASS:I = 0x0

.field public static final SEC_COLUMN_SITEMAP_PARENT_TITLE:I = 0x1

.field public static final SEC_EXTRA_KEY_AVAILABILITY:Ljava/lang/String; = "availability"

.field public static final SEC_EXTRA_KEY_CLASS_NAME:Ljava/lang/String; = "class_name"

.field public static final SEC_EXTRA_KEY_DESKTOP_MODE_ENABLED:Ljava/lang/String; = "desktopModeEnabled"

.field public static final SEC_EXTRA_KEY_PREFERENCE_KEY:Ljava/lang/String; = "preference_key"

.field public static final SEC_EXTRA_KEY_REQUIRING_CONFIG_INFO:Ljava/lang/String; = "requiringConfigInfo"

.field public static final SEC_NON_INDEXABLES_KEYS:Ljava/lang/String; = "sec_non_indexables_key"

.field public static final SEC_NON_INDEXABLES_KEYS_PATH:Ljava/lang/String; = "sec_settings/sec_non_indexables_key"

.field private static final SEC_SETTINGS:Ljava/lang/String; = "sec_settings"

.field public static final SEC_VARIABLE_RAW_DATA:Ljava/lang/String; = "sec_variable_raw_data"

.field public static final SEC_VARIABLE_RAW_DATA_PATH:Ljava/lang/String; = "sec_settings/sec_variable_raw_data"

.field public static final UNAVAILABLE:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/search/provider/SearchIndexablesContract;-><init>()V

    return-void
.end method
