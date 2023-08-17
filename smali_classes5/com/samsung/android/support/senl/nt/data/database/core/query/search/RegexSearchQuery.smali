.class public Lcom/samsung/android/support/senl/nt/data/database/core/query/search/RegexSearchQuery;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ACTION_VIEW_FINDER:Ljava/lang/String; = "\'com.samsung.android.app.notes.action.VIEW_FROM_FINDER\'"

.field public static final BASE_URI_NOTE:Landroid/net/Uri;

.field private static final FINDER_DATA_SCHEME:Ljava/lang/String; = "\'notes_finder://\'"

.field private static final KEY_END_TIME:Ljava/lang/String; = "etime"

.field private static final KEY_LIMIT:Ljava/lang/String; = "limit"

.field private static final KEY_START_TIME:Ljava/lang/String; = "stime"

.field public static final MIME_TYPE_TEXT:Ljava/lang/String; = "text/plain"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "RegexSearchQuery"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/data/common/log/DataLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/data/database/core/query/search/RegexSearchQuery;->TAG:Ljava/lang/String;

    sget-object v0, Lcom/samsung/android/support/senl/nt/base/common/constants/WDocConstants;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "sdoc"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/data/database/core/query/search/RegexSearchQuery;->BASE_URI_NOTE:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkWildcardCharacters([Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    aget-object v3, p1, v2

    invoke-static {v3, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/query/common/QueryUtils;->checkWildcardChar(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    aput-object v3, p1, v2

    aget-object v3, p1, v2

    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/data/common/log/DataLogger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p1, v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/samsung/android/support/senl/nt/data/database/core/query/search/RegexSearchQuery;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tokens: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private createKeywordSearchCondition([Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, " ( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_2

    array-length v3, p1

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    if-ne v2, v3, :cond_0

    goto :goto_1

    :cond_0
    move v4, v1

    :goto_1
    aget-object v3, p1, v2

    invoke-direct {p0, v3}, Lcom/samsung/android/support/senl/nt/data/database/core/query/search/RegexSearchQuery;->getLikeClauseForSearch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_1

    const-string v3, ""

    goto :goto_2

    :cond_1
    const-string v3, " AND "

    :goto_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_2
    const-string p1, " ) "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private createSelectClause([Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/samsung/android/support/senl/nt/data/database/core/query/search/RegexSearchQuery;->BASE_URI_NOTE:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/\'||"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;-><init>()V

    const-string v2, "sdoc._id , "

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;->append(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;

    move-result-object v1

    const-string v2, "sdoc.title"

    const-string v3, "suggest_text_1"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;->as(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$As;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/query/search/RegexSearchQuery;->getFinderBodyContent([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "suggest_text_2"

    invoke-interface {v1, p1, v2}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$As;->as(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$As;

    move-result-object p1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/query/search/RegexSearchQuery;->getIconField()Ljava/lang/String;

    move-result-object v1

    const-string v2, "suggest_icon_1"

    invoke-interface {p1, v1, v2}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$As;->as(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$As;

    move-result-object p1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/data/database/core/query/search/NotesSearchManager;->get_SUGGEST_COLUMN_TEXT_3()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sdoc.lastModifiedAt"

    invoke-interface {p1, v2, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$As;->as(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$As;

    move-result-object p1

    const-string v1, "\'com.samsung.android.app.notes.action.VIEW_FROM_FINDER\'"

    const-string v2, "suggest_intent_action"

    invoke-interface {p1, v1, v2}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$As;->as(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$As;

    move-result-object p1

    const-string v1, "\'notes_finder://\'"

    const-string v2, "suggest_intent_data"

    invoke-interface {p1, v1, v2}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$As;->as(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$As;

    move-result-object p1

    const-string v1, "sdoc.UUID"

    const-string v2, "suggest_intent_extra_data"

    invoke-interface {p1, v1, v2}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$As;->as(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$As;

    move-result-object p1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/data/database/core/query/search/NotesSearchManager;->get_SUGGEST_COLUMN_EXTRA()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CASE WHEN sdoc.vrUUID=\'\' THEN NULL ELSE 1 END"

    invoke-interface {p1, v2, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$As;->as(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$As;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "sdoc._id"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/data/database/core/query/search/NotesSearchManager;->get_SUGGEST_COLUMN_URI()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$As;->as(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$As;

    move-result-object p1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/data/database/core/query/search/NotesSearchManager;->get_SUGGEST_COLUMN_MIME_TYPE()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\'text/plain\'"

    invoke-interface {p1, v1, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$As;->asEnd(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;->build()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getFinderBodyContent([Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CASE WHEN (sdoc.isLock=0 OR sdoc.isLock=-1) THEN (CASE WHEN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "stroke.text"

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/query/search/RegexSearchQuery;->getLikeClauseForFinderBody([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") THEN stroke.text WHEN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "tag_list.normalizeName"

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/query/search/RegexSearchQuery;->getLikeClauseForFinderBody([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") THEN tag_list.normalizeName WHEN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "auto_tag_list.normalizeName"

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/query/search/RegexSearchQuery;->getLikeClauseForFinderBody([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") THEN auto_tag_list.normalizeName ELSE CAST(sdoc.content AS TEXT) END) ELSE \'\'  END "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getIconField()Ljava/lang/String;
    .locals 3

    const-string v0, "content://com.samsung.android.app.notes"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "thumbnail_finder"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "/\'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;-><init>()V

    const-string v2, "(sdoc.isLock != 0 AND sdoc.isLock != -1)"

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;->caseWhen(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$When;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$When;->then(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$Then;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "||sdoc.UUID"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$Then;->elseEnd(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;->build()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getLikeClauseForFinderBody([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_2

    array-length v3, p1

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    if-ne v2, v3, :cond_0

    goto :goto_1

    :cond_0
    move v4, v1

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "REPLACE("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", \' \', \'\') LIKE \'%"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, p1, v2

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "%\' ESCAPE "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\'\ufffd\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_1

    const-string v3, ""

    goto :goto_2

    :cond_1
    const-string v3, " AND "

    :goto_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getLikeClauseForSearch(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\'%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "%\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;-><init>()V

    const-string v1, "(sdoc.isLock=0 OR sdoc.isLock=-1)"

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;->caseWhen(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$When;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$When;->then()Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$Then;

    move-result-object v0

    const-string v1, "("

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$Base;->append(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;

    move-result-object v0

    const-string v2, "sdoc.title"

    const-string v3, "\' \'"

    const-string v4, "\'\'"

    invoke-virtual {v0, v2, v3, v4}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;->like(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;

    move-result-object v0

    const-string v5, "\'\ufffd\'"

    invoke-virtual {v0, v5}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;->escape(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;->or()Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;

    move-result-object v0

    const-string v6, "text_search.strippedContent"

    invoke-virtual {v0, v6, v3, v4}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;->like(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;->escape(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;->or()Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;

    move-result-object v0

    const-string v6, "stroke.text"

    invoke-virtual {v0, v6, v3, v4}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;->like(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;->escape(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;->or()Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;

    move-result-object v0

    const-string v6, "tag_list.normalizeName"

    invoke-virtual {v0, v6, v3, v4}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;->like(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;->escape(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;->or()Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;

    move-result-object v0

    const-string v6, "auto_tag_list.normalizeName"

    invoke-virtual {v0, v6, v3, v4}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;->like(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;->escape(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;

    move-result-object v0

    const-string v6, ")"

    invoke-virtual {v0, v6}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;->append(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;->else_()Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;->append(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3, v4}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;->like(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;->escape(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;

    move-result-object p1

    const-string v0, " ) "

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;->append(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;->end()Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;->build()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getLimit(Landroid/net/Uri;)I
    .locals 3

    const-string v0, "limit"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/database/core/query/search/RegexSearchQuery;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLimitFromUri, e : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private getModifiedTimeCondition(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3

    const-string v0, "stime"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "etime"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lastModifiedAt >= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " AND "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "lastModifiedAt"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " <= "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method private getTokens([Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    aget-object v1, p1, v0

    const-string v2, "[]"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/samsung/android/support/senl/nt/data/database/core/query/search/RegexSearchQueryParser;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/query/search/RegexSearchQueryParser;-><init>()V

    aget-object p1, p1, v0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/query/search/RegexSearchQueryParser;->regexParser(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private searchRegex([Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;-><init>(I)V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/query/search/RegexSearchQuery;->createSelectClause([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;->select(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$Select;

    move-result-object v0

    const-string v1, "sdoc"

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$Select;->from(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$From;

    move-result-object v0

    const-string v1, "text_search"

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$From;->leftJoin(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$Join;

    move-result-object v0

    const-string v1, "sdoc.UUID = text_search.sdocUUID"

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$Join;->on(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$On;

    move-result-object v0

    const-string v1, "stroke"

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$From;->leftJoin(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$Join;

    move-result-object v0

    const-string v1, "sdoc.UUID = stroke.sdocUUID"

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$Join;->on(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$On;

    move-result-object v0

    const-string v1, "tag_list"

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$From;->leftJoin(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$Join;

    move-result-object v0

    const-string v1, "sdoc.UUID = tag_list.docUUID"

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$Join;->on(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$On;

    move-result-object v0

    const-string v1, "auto_tag_list"

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$From;->leftJoin(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$Join;

    move-result-object v0

    const-string v1, "sdoc.UUID = auto_tag_list.docUUID"

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$Join;->on(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$On;

    move-result-object v0

    const-string v1, "content"

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$From;->leftJoin(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$Join;

    move-result-object v0

    const-string v1, "sdoc.UUID = content.sdocUUID"

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$Join;->on(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$On;

    move-result-object v0

    const-string v1, "mapped_document"

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$From;->leftJoin(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$Join;

    move-result-object v0

    const-string v1, "sdoc.UUID = mapped_document.UUID"

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$Join;->on(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$On;

    move-result-object v0

    const-string v1, "sdoc.isDeleted = 0"

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$From;->where(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$Where;

    move-result-object v0

    const-string v1, "mapped_document.mappedUUID IS NULL"

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$Where;->and(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;->and(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;

    move-result-object p2

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/query/search/RegexSearchQuery;->createKeywordSearchCondition([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;->and(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;

    move-result-object p1

    const-string p2, "sdoc.UUID"

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;->groupBy(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;

    move-result-object p1

    const-string p2, "sdoc.lastModifiedAt"

    const-string v0, " DESC "

    invoke-virtual {p1, p2, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;->orderBy(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;->limit(I)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;->delimiter()Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;->build()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getQuery(Landroid/net/Uri;[Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    invoke-direct {p0, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/query/search/RegexSearchQuery;->getTokens([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/query/search/RegexSearchQuery;->getModifiedTimeCondition(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/query/search/RegexSearchQuery;->getLimit(Landroid/net/Uri;)I

    move-result p1

    if-nez p2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    array-length v1, p2

    add-int/lit8 v1, v1, 0x1

    div-int/lit8 v1, v1, 0x2

    :goto_0
    sget-object v2, Lcom/samsung/android/support/senl/nt/data/database/core/query/search/RegexSearchQuery;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getQuery, token count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_1

    const-string p1, "args = null"

    invoke-static {v2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-direct {p0, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/query/search/RegexSearchQuery;->checkWildcardCharacters([Ljava/lang/String;)V

    invoke-direct {p0, p2, v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/query/search/RegexSearchQuery;->searchRegex([Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
