.class Lcom/samsung/android/settings/search/provider/SearchIndexablesContract;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/search/provider/SearchIndexablesContract$BaseColumns;,
        Lcom/samsung/android/settings/search/provider/SearchIndexablesContract$NonIndexableKey;,
        Lcom/samsung/android/settings/search/provider/SearchIndexablesContract$RawData;,
        Lcom/samsung/android/settings/search/provider/SearchIndexablesContract$SiteMapColumns;,
        Lcom/samsung/android/settings/search/provider/SearchIndexablesContract$XmlResource;,
        Lcom/samsung/android/settings/search/provider/SearchIndexablesContract$SliceUriPairColumns;
    }
.end annotation


# static fields
.field public static final COLUMN_INDEX_NON_INDEXABLE_KEYS_KEY_VALUE:I = 0x0

.field public static final COLUMN_INDEX_RAW_CLASS_NAME:I = 0x7

.field public static final COLUMN_INDEX_RAW_ENTRIES:I = 0x4

.field public static final COLUMN_INDEX_RAW_ICON_RESID:I = 0x8

.field public static final COLUMN_INDEX_RAW_INTENT_ACTION:I = 0x9

.field public static final COLUMN_INDEX_RAW_INTENT_TARGET_CLASS:I = 0xb

.field public static final COLUMN_INDEX_RAW_INTENT_TARGET_PACKAGE:I = 0xa

.field public static final COLUMN_INDEX_RAW_KEY:I = 0xc

.field public static final COLUMN_INDEX_RAW_KEYWORDS:I = 0x5

.field public static final COLUMN_INDEX_RAW_PAYLOAD:I = 0xf

.field public static final COLUMN_INDEX_RAW_PAYLOAD_TYPE:I = 0xe

.field public static final COLUMN_INDEX_RAW_RANK:I = 0x0

.field public static final COLUMN_INDEX_RAW_SCREEN_TITLE:I = 0x6

.field public static final COLUMN_INDEX_RAW_SUMMARY_OFF:I = 0x3

.field public static final COLUMN_INDEX_RAW_SUMMARY_ON:I = 0x2

.field public static final COLUMN_INDEX_RAW_TITLE:I = 0x1

.field public static final COLUMN_INDEX_RAW_USER_ID:I = 0xd

.field public static final COLUMN_INDEX_XML_RES_CLASS_NAME:I = 0x2

.field public static final COLUMN_INDEX_XML_RES_ICON_RESID:I = 0x3

.field public static final COLUMN_INDEX_XML_RES_INTENT_ACTION:I = 0x4

.field public static final COLUMN_INDEX_XML_RES_INTENT_TARGET_CLASS:I = 0x6

.field public static final COLUMN_INDEX_XML_RES_INTENT_TARGET_PACKAGE:I = 0x5

.field public static final COLUMN_INDEX_XML_RES_RANK:I = 0x0

.field public static final COLUMN_INDEX_XML_RES_RESID:I = 0x1

.field public static final DYNAMIC_INDEXABLES_RAW:Ljava/lang/String; = "dynamic_indexables_raw"

.field public static final DYNAMIC_INDEXABLES_RAW_PATH:Ljava/lang/String; = "settings/dynamic_indexables_raw"

.field public static final INDEXABLES_RAW:Ljava/lang/String; = "indexables_raw"

.field public static final INDEXABLES_RAW_COLUMNS:[Ljava/lang/String;

.field public static final INDEXABLES_RAW_PATH:Ljava/lang/String; = "settings/indexables_raw"

.field public static final INDEXABLES_XML_RES:Ljava/lang/String; = "indexables_xml_res"

.field public static final INDEXABLES_XML_RES_COLUMNS:[Ljava/lang/String;

.field public static final INDEXABLES_XML_RES_PATH:Ljava/lang/String; = "settings/indexables_xml_res"

.field public static final NON_INDEXABLES_KEYS:Ljava/lang/String; = "non_indexables_key"

.field public static final NON_INDEXABLES_KEYS_COLUMNS:[Ljava/lang/String;

.field public static final NON_INDEXABLES_KEYS_PATH:Ljava/lang/String; = "settings/non_indexables_key"

.field public static final PROVIDER_INTERFACE:Ljava/lang/String; = "android.content.action.SEARCH_INDEXABLES_PROVIDER"

.field private static final SETTINGS:Ljava/lang/String; = "settings"

.field public static final SITE_MAP_COLUMNS:[Ljava/lang/String;

.field public static final SITE_MAP_PAIRS_KEYS:Ljava/lang/String; = "site_map_pairs"

.field public static final SITE_MAP_PAIRS_PATH:Ljava/lang/String; = "settings/site_map_pairs"

.field public static final SLICE_URI_PAIRS:Ljava/lang/String; = "slice_uri_pairs"

.field public static final SLICE_URI_PAIRS_COLUMNS:[Ljava/lang/String;

.field public static final SLICE_URI_PAIRS_PATH:Ljava/lang/String; = "settings/slice_uri_pairs"


# direct methods
.method public static constructor <clinit>()V
    .locals 17

    const-string v0, "rank"

    const-string/jumbo v1, "xmlResId"

    const-string v2, "className"

    const-string v3, "iconResId"

    const-string v4, "intentAction"

    const-string v5, "intentTargetPackage"

    const-string v6, "intentTargetClass"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/search/provider/SearchIndexablesContract;->INDEXABLES_XML_RES_COLUMNS:[Ljava/lang/String;

    const-string v1, "rank"

    const-string/jumbo v2, "title"

    const-string/jumbo v3, "summaryOn"

    const-string/jumbo v4, "summaryOff"

    const-string v5, "entries"

    const-string v6, "keywords"

    const-string v7, "screenTitle"

    const-string v8, "className"

    const-string v9, "iconResId"

    const-string v10, "intentAction"

    const-string v11, "intentTargetPackage"

    const-string v12, "intentTargetClass"

    const-string v13, "key"

    const-string/jumbo v14, "user_id"

    const-string v15, "payload_type"

    const-string v16, "payload"

    filled-new-array/range {v1 .. v16}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/search/provider/SearchIndexablesContract;->INDEXABLES_RAW_COLUMNS:[Ljava/lang/String;

    const-string v0, "parent_class"

    const-string v1, "parent_title"

    const-string v2, "child_class"

    const-string v3, "child_title"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/search/provider/SearchIndexablesContract;->SITE_MAP_COLUMNS:[Ljava/lang/String;

    const-string v0, "key"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/settings/search/provider/SearchIndexablesContract;->NON_INDEXABLES_KEYS_COLUMNS:[Ljava/lang/String;

    const-string/jumbo v1, "slice_uri"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/search/provider/SearchIndexablesContract;->SLICE_URI_PAIRS_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
