.class public final Lcom/samsung/android/settings/search/provider/SearchIndexablesContract$XmlResource;
.super Lcom/samsung/android/settings/search/provider/SearchIndexablesContract$BaseColumns;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/search/provider/SearchIndexablesContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "XmlResource"
.end annotation


# static fields
.field public static final COLUMN_XML_RESID:Ljava/lang/String; = "xmlResId"

.field public static final MIME_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/indexables_xml_res"


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/search/provider/SearchIndexablesContract$BaseColumns;-><init>(Lcom/samsung/android/settings/search/provider/SearchIndexablesContract$1;)V

    return-void
.end method
