.class public Lcom/samsung/android/support/senl/nt/data/database/core/query/search/NotesSearchManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/data/database/core/query/search/NotesSearchManager$ISearchManagerHelper;,
        Lcom/samsung/android/support/senl/nt/data/database/core/query/search/NotesSearchManager$SearchManagerHelper;
    }
.end annotation


# static fields
.field public static final FINDER_SEARCH_BODY_CONTENT:Ljava/lang/String; = "suggest_text_2"

.field public static final FINDER_SEARCH_THUMBNAIL:Ljava/lang/String; = "suggest_icon_1"

.field public static final FINDER_SEARCH_TITLE:Ljava/lang/String; = "suggest_text_1"

.field private static final SUGGEST_COLUMN_EXTRA:Ljava/lang/String; = "suggest_extra_flags"

.field private static final SUGGEST_COLUMN_MIME_TYPE:Ljava/lang/String; = "suggest_mime_type"

.field private static final SUGGEST_COLUMN_TEXT_3:Ljava/lang/String; = "suggest_text_3"

.field private static final SUGGEST_COLUMN_URI:Ljava/lang/String; = "suggest_uri"

.field private static final TAG:Ljava/lang/String;

.field private static sSearchManagerHelper:Lcom/samsung/android/support/senl/nt/data/database/core/query/search/NotesSearchManager$ISearchManagerHelper;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "NotesSearchManager"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/data/common/log/DataLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/data/database/core/query/search/NotesSearchManager;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/database/core/query/search/NotesSearchManager$SearchManagerHelper;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/query/search/NotesSearchManager$SearchManagerHelper;-><init>()V

    sput-object v0, Lcom/samsung/android/support/senl/nt/data/database/core/query/search/NotesSearchManager;->sSearchManagerHelper:Lcom/samsung/android/support/senl/nt/data/database/core/query/search/NotesSearchManager$ISearchManagerHelper;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get_SUGGEST_COLUMN_EXTRA()Ljava/lang/String;
    .locals 4

    :try_start_0
    sget-object v0, Lcom/samsung/android/support/senl/nt/data/database/core/query/search/NotesSearchManager;->sSearchManagerHelper:Lcom/samsung/android/support/senl/nt/data/database/core/query/search/NotesSearchManager$ISearchManagerHelper;

    const-string v1, "SUGGEST_COLUMN_EXTRA"

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/query/search/NotesSearchManager$ISearchManagerHelper;->getField(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/data/database/core/query/search/NotesSearchManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get_SUGGEST_COLUMN_EXTRA, e : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "suggest_extra_flags"

    return-object v0
.end method

.method public static get_SUGGEST_COLUMN_MIME_TYPE()Ljava/lang/String;
    .locals 4

    :try_start_0
    sget-object v0, Lcom/samsung/android/support/senl/nt/data/database/core/query/search/NotesSearchManager;->sSearchManagerHelper:Lcom/samsung/android/support/senl/nt/data/database/core/query/search/NotesSearchManager$ISearchManagerHelper;

    const-string v1, "SUGGEST_COLUMN_MIME_TYPE"

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/query/search/NotesSearchManager$ISearchManagerHelper;->getField(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/data/database/core/query/search/NotesSearchManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get_SUGGEST_COLUMN_MIME_TYPE, e : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "suggest_mime_type"

    return-object v0
.end method

.method public static get_SUGGEST_COLUMN_TEXT_3()Ljava/lang/String;
    .locals 4

    :try_start_0
    sget-object v0, Lcom/samsung/android/support/senl/nt/data/database/core/query/search/NotesSearchManager;->sSearchManagerHelper:Lcom/samsung/android/support/senl/nt/data/database/core/query/search/NotesSearchManager$ISearchManagerHelper;

    const-string v1, "SUGGEST_COLUMN_TEXT_3"

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/query/search/NotesSearchManager$ISearchManagerHelper;->getField(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/data/database/core/query/search/NotesSearchManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get_SUGGEST_COLUMN_TEXT_3, e : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "suggest_text_3"

    return-object v0
.end method

.method public static get_SUGGEST_COLUMN_URI()Ljava/lang/String;
    .locals 4

    :try_start_0
    sget-object v0, Lcom/samsung/android/support/senl/nt/data/database/core/query/search/NotesSearchManager;->sSearchManagerHelper:Lcom/samsung/android/support/senl/nt/data/database/core/query/search/NotesSearchManager$ISearchManagerHelper;

    const-string v1, "SUGGEST_COLUMN_URI"

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/query/search/NotesSearchManager$ISearchManagerHelper;->getField(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/data/database/core/query/search/NotesSearchManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get_SUGGEST_COLUMN_URI, e : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "suggest_uri"

    return-object v0
.end method

.method public static setSearchManagerHelper(Lcom/samsung/android/support/senl/nt/data/database/core/query/search/NotesSearchManager$ISearchManagerHelper;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    sput-object p0, Lcom/samsung/android/support/senl/nt/data/database/core/query/search/NotesSearchManager;->sSearchManagerHelper:Lcom/samsung/android/support/senl/nt/data/database/core/query/search/NotesSearchManager$ISearchManagerHelper;

    return-void
.end method
