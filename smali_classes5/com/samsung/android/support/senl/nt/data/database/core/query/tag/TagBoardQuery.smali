.class public Lcom/samsung/android/support/senl/nt/data/database/core/query/tag/TagBoardQuery;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG_ID:Ljava/lang/String; = "id"

.field private static final TAG_IS_LOCKED:Ljava/lang/String; = "isLocked"

.field private static final TAG_MIME_TYPE:Ljava/lang/String; = "mime_type"

.field private static final TAG_SDOC_UUID:Ljava/lang/String; = "sdocUUID"

.field private static final TAG_TAG:Ljava/lang/String; = "tag"

.field private static final TAG_TEXT1:Ljava/lang/String; = "text_1"

.field private static final TAG_TEXT2:Ljava/lang/String; = "text_2"

.field private static final TAG_THUMBNAIL_URI:Ljava/lang/String; = "thumbnail_uri"

.field private static final TAG_TIMESTAMP:Ljava/lang/String; = "timestamp"

.field private static final TAG_TIMESTAMP_TAG:Ljava/lang/String; = "timestamp_tag"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getIconQueryPart()Ljava/lang/String;
    .locals 4

    const-string v0, "content://com.samsung.android.app.notes"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "thumbnail_tag"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "/\'||"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;-><init>()V

    const-string v2, "(sdoc.isLock != 0 AND sdoc.isLock != -1)"

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;->caseWhen(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$When;

    move-result-object v1

    const-string v2, "NULL"

    invoke-interface {v1, v2}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$When;->then(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$Then;

    move-result-object v1

    const-string v3, "((sdoc.filePath LIKE \'%.sdoc\') AND (sdoc.firstContentType <= 1) AND (sdoc.secondContentType <= 1))"

    invoke-interface {v1, v3}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$Then;->when(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$When;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$When;->then(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$Then;

    move-result-object v1

    const-string v3, "((GROUP_CONCAT(content._data) LIKE \'%thumbnail_text%\') AND (GROUP_CONCAT(content._data) NOT LIKE \'%/image%\'))"

    invoke-interface {v1, v3}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$Then;->when(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$When;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$When;->then(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$Then;

    move-result-object v1

    const-string v3, "((sdoc.filePath LIKE \'%.sdocx\') AND (COUNT(content._data) IS 0))"

    invoke-interface {v1, v3}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$Then;->when(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$When;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$When;->then(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$Then;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "sdoc.UUID"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$Then;->elseEnd(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;->build()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getOldSdocDataQuery(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;->select()Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$Select;

    move-result-object v0

    const-string v1, "hashtagContent._id + 1073741823"

    const-string v2, "id"

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$As;->as(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$As;

    move-result-object v0

    const-string v1, "hashtag.name"

    const-string v2, "tag"

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$As;->as(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$As;

    move-result-object v0

    const-string v1, "\'application/sdoc\'"

    const-string v2, "mime_type"

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$As;->as(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$As;

    move-result-object v0

    const-string v1, "sdoc.createdAt"

    const-string v2, "timestamp"

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$As;->as(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$As;

    move-result-object v0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/query/tag/TagBoardQuery;->getIconQueryPart()Ljava/lang/String;

    move-result-object v1

    const-string v2, "thumbnail_uri"

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$As;->as(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$As;

    move-result-object v0

    const-string v1, "sdoc.title"

    const-string v2, "text_1"

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$As;->as(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$As;

    move-result-object v0

    const-string v1, "CASE WHEN (sdoc.isLock=0 OR sdoc.isLock=-1) THEN CAST(sdoc.content AS TEXT) ELSE NULL END"

    const-string v2, "text_2"

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$As;->as(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$As;

    move-result-object v0

    const-string v1, "sdoc.UUID"

    const-string v2, "sdocUUID"

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$As;->as(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$As;

    move-result-object v0

    const-string v1, "sdoc.isLock"

    const-string v2, "isLocked"

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$As;->as(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$As;

    move-result-object v0

    const-string v1, "hashtagContent.lastModifiedAt"

    const-string v2, "timestamp_tag"

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$As;->asEnd(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;

    move-result-object v0

    const-string v1, "hashtagContent"

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;->from(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$From;

    move-result-object v0

    const-string v1, "hashtag"

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$From;->leftJoin(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$Join;

    move-result-object v0

    const-string v1, "hashtagContent.hashtagUUID = hashtag.UUID"

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$Join;->on(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$On;

    move-result-object v0

    const-string v1, "sdoc"

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$From;->leftJoin(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$Join;

    move-result-object v0

    const-string v1, "hashtagContent.sdocUUID = sdoc.UUID"

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$Join;->on(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$On;

    move-result-object v0

    const-string v1, "content"

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$From;->leftJoin(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$Join;

    move-result-object v0

    const-string v1, "hashtagContent.sdocUUID = content.sdocUUID"

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$Join;->on(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$On;

    move-result-object v0

    const-string v1, "mapped_document"

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$From;->leftJoin(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$Join;

    move-result-object v0

    const-string v1, "sdoc.UUID = mapped_document.UUID"

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$Join;->on(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$On;

    move-result-object v0

    const-string v1, "sdoc.UUID IS NOT NULL"

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$From;->where(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$Where;

    move-result-object v0

    const-string v1, "hashtagContent.isDeleted IS 0"

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$Where;->and(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;

    move-result-object v0

    const-string v1, "hashtag.isDeleted IS 0"

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;->and(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;

    move-result-object v0

    const-string v1, "sdoc.isDeleted IS 0"

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;->and(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;

    move-result-object v0

    const-string v1, "mapped_document.UUID IS NULL"

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;->and(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;->and(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;->orderBy(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;

    move-result-object p1

    const-string p2, "hashtagContent._id"

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;->groupBy(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;->build()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getSdocDataQuery(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;->select()Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$Select;

    move-result-object v0

    const-string v1, "tag_list._id"

    const-string v2, "id"

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$As;->as(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$As;

    move-result-object v0

    const-string v2, "tag_list.displayName"

    const-string v3, "tag"

    invoke-interface {v0, v2, v3}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$As;->as(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$As;

    move-result-object v0

    const-string v2, "\'application/sdoc\'"

    const-string v3, "mime_type"

    invoke-interface {v0, v2, v3}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$As;->as(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$As;

    move-result-object v0

    const-string v2, "sdoc.createdAt"

    const-string v3, "timestamp"

    invoke-interface {v0, v2, v3}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$As;->as(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$As;

    move-result-object v0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/query/tag/TagBoardQuery;->getIconQueryPart()Ljava/lang/String;

    move-result-object v2

    const-string v3, "thumbnail_uri"

    invoke-interface {v0, v2, v3}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$As;->as(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$As;

    move-result-object v0

    const-string v2, "sdoc.title"

    const-string v3, "text_1"

    invoke-interface {v0, v2, v3}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$As;->as(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$As;

    move-result-object v0

    const-string v2, "CASE WHEN (sdoc.isLock=0 OR sdoc.isLock=-1) THEN CAST(sdoc.content AS TEXT) ELSE NULL END"

    const-string v3, "text_2"

    invoke-interface {v0, v2, v3}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$As;->as(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$As;

    move-result-object v0

    const-string v2, "sdoc.UUID"

    const-string v3, "sdocUUID"

    invoke-interface {v0, v2, v3}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$As;->as(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$As;

    move-result-object v0

    const-string v2, "sdoc.isLock"

    const-string v3, "isLocked"

    invoke-interface {v0, v2, v3}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$As;->as(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$As;

    move-result-object v0

    const-string v2, "sdoc.serverTimestamp"

    const-string v3, "timestamp_tag"

    invoke-interface {v0, v2, v3}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$As;->asEnd(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;

    move-result-object v0

    const-string v2, "tag_list"

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;->from(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$From;

    move-result-object v0

    const-string v2, "sdoc"

    invoke-interface {v0, v2}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$From;->leftJoin(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$Join;

    move-result-object v0

    const-string v2, "tag_list.docUUID = sdoc.UUID"

    invoke-interface {v0, v2}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$Join;->on(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$On;

    move-result-object v0

    const-string v2, "content"

    invoke-interface {v0, v2}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$From;->leftJoin(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$Join;

    move-result-object v0

    const-string v2, "tag_list.docUUID = content.sdocUUID"

    invoke-interface {v0, v2}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$Join;->on(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$On;

    move-result-object v0

    const-string v2, "mapped_document"

    invoke-interface {v0, v2}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$From;->leftJoin(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$Join;

    move-result-object v0

    const-string v2, "tag_list.docUUID = mapped_document.UUID"

    invoke-interface {v0, v2}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$Join;->on(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$On;

    move-result-object v0

    const-string v2, "sdoc.UUID IS NOT NULL"

    invoke-interface {v0, v2}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$From;->where(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$Where;

    move-result-object v0

    const-string v2, "sdoc.isDeleted IS 0"

    invoke-interface {v0, v2}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$Where;->and(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;

    move-result-object v0

    const-string v2, "mapped_document.mappedUUID IS NULL"

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;->and(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;->and(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;->orderBy(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;->groupBy(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;->build()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getQuery(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/query/tag/TagBoardQuery;->getSdocDataQuery(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " UNION "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/query/tag/TagBoardQuery;->getOldSdocDataQuery(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
