.class public final Lcom/samsung/android/settings/search/provider/SearchIndexablesContract$RawData;
.super Lcom/samsung/android/settings/search/provider/SearchIndexablesContract$BaseColumns;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/search/provider/SearchIndexablesContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RawData"
.end annotation


# static fields
.field public static final COLUMN_ENTRIES:Ljava/lang/String; = "entries"

.field public static final COLUMN_KEY:Ljava/lang/String; = "key"

.field public static final COLUMN_KEYWORDS:Ljava/lang/String; = "keywords"

.field public static final COLUMN_SCREEN_TITLE:Ljava/lang/String; = "screenTitle"

.field public static final COLUMN_SUMMARY_OFF:Ljava/lang/String; = "summaryOff"

.field public static final COLUMN_SUMMARY_ON:Ljava/lang/String; = "summaryOn"

.field public static final COLUMN_TITLE:Ljava/lang/String; = "title"

.field public static final COLUMN_USER_ID:Ljava/lang/String; = "user_id"

.field public static final MIME_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/indexables_raw"

.field public static final PAYLOAD:Ljava/lang/String; = "payload"

.field public static final PAYLOAD_TYPE:Ljava/lang/String; = "payload_type"


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/search/provider/SearchIndexablesContract$BaseColumns;-><init>(Lcom/samsung/android/settings/search/provider/SearchIndexablesContract$1;)V

    return-void
.end method
