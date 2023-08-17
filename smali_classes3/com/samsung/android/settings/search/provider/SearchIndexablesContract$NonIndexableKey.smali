.class public final Lcom/samsung/android/settings/search/provider/SearchIndexablesContract$NonIndexableKey;
.super Lcom/samsung/android/settings/search/provider/SearchIndexablesContract$BaseColumns;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/search/provider/SearchIndexablesContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NonIndexableKey"
.end annotation


# static fields
.field public static final COLUMN_KEY_VALUE:Ljava/lang/String; = "key"

.field public static final MIME_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/non_indexables_key"


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/search/provider/SearchIndexablesContract$BaseColumns;-><init>(Lcom/samsung/android/settings/search/provider/SearchIndexablesContract$1;)V

    return-void
.end method
