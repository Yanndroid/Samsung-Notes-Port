.class public Lcom/samsung/android/support/senl/nt/data/database/core/query/search/SearchQuery;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final COEDIT_SPACE:Ljava/lang/String; = "sdoc.categoryUUID = \'coedit:///\'"

.field public static final DEFAULT:Ljava/lang/String; = "sdoc.mdeSpaceId = \'\'"

.field public static final SELECTION_ARG_COUNT_IN_TOTAL_QUERY:I = 0x5


# instance fields
.field private final mPageModeQuery:Ljava/lang/String;

.field private final mSpaceQuery:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    const-string p1, "sdoc.categoryUUID = \'coedit:///\'"

    goto :goto_0

    :cond_0
    const-string p1, "sdoc.mdeSpaceId = \'\'"

    :goto_0
    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/query/search/SearchQuery;->mSpaceQuery:Ljava/lang/String;

    if-eqz p2, :cond_1

    const-string p1, "sdoc.pageMode = 2"

    goto :goto_1

    :cond_1
    const-string p1, ""

    :goto_1
    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/query/search/SearchQuery;->mPageModeQuery:Ljava/lang/String;

    return-void
.end method

.method private static appendLikeText(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v2, p1, -0x1

    if-ge v1, v2, :cond_0

    const-string v2, " AND "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static appendTitleSearchResult(I)Ljava/lang/String;
    .locals 3

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;-><init>()V

    const-string v1, "sdoc.UUID"

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;->select(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$Select;

    move-result-object v0

    const-string v1, "sdoc"

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$Select;->from(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$From;

    move-result-object v0

    const-string v1, "sdoc.isDeleted = 0"

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$From;->where(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$Where;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "REPLACE(sdoc.title, \' \', \'\') LIKE ? ESCAPE \'\ufffd\'"

    invoke-static {v2, p0}, Lcom/samsung/android/support/senl/nt/data/database/core/query/search/SearchQuery;->appendLikeText(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ") "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$Where;->and(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;->build()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static appendUnionAutoTagTable(I)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " UNION "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;-><init>()V

    const-string v2, "auto_tag_list.docUUID"

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;->select(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$Select;

    move-result-object v1

    const-string v2, "auto_tag_list"

    invoke-interface {v1, v2}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$Select;->from(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$From;

    move-result-object v1

    const-string v2, "sdoc"

    invoke-interface {v1, v2}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$From;->innerJoin(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$Join;

    move-result-object v1

    const-string v2, "sdoc.UUID = auto_tag_list.docUUID"

    invoke-interface {v1, v2}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$Join;->on(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$On;

    move-result-object v1

    const-string v2, "sdoc.isDeleted = 0"

    invoke-interface {v1, v2}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$On;->and(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$On;

    move-result-object v1

    const-string v2, "(sdoc.isLock=0 OR sdoc.isLock=-1)"

    invoke-interface {v1, v2}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$On;->and(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$On;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "REPLACE(auto_tag_list.normalizeName, \' \', \'\') LIKE ? ESCAPE \'\ufffd\' "

    invoke-static {v3, p0}, Lcom/samsung/android/support/senl/nt/data/database/core/query/search/SearchQuery;->appendLikeText(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$On;->and(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$On;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$From;->build()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static appendUnionContentSearchResult(I)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " UNION "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;-><init>()V

    const-string v2, "text_search.sdocUUID"

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;->select(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$Select;

    move-result-object v1

    const-string v2, "text_search"

    invoke-interface {v1, v2}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$Select;->from(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$From;

    move-result-object v1

    const-string v2, "sdoc"

    invoke-interface {v1, v2}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$From;->leftJoin(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$Join;

    move-result-object v1

    const-string v2, "sdoc.UUID = text_search.sdocUUID"

    invoke-interface {v1, v2}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$Join;->on(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$On;

    move-result-object v1

    const-string v2, "sdoc.isDeleted = 0"

    invoke-interface {v1, v2}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$From;->where(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$Where;

    move-result-object v1

    const-string v2, "(sdoc.isLock=0 OR sdoc.isLock=-1)"

    invoke-interface {v1, v2}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$Where;->and(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " REPLACE(text_search.strippedContent, \' \', \'\') LIKE ? ESCAPE \'\ufffd\'"

    invoke-static {v3, p0}, Lcom/samsung/android/support/senl/nt/data/database/core/query/search/SearchQuery;->appendLikeText(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ") "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;->and(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;->build()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static appendUnionStrokeTable(I)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " UNION "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;-><init>()V

    const-string v2, "stroke.sdocUUID"

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;->select(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$Select;

    move-result-object v1

    const-string v2, "stroke"

    invoke-interface {v1, v2}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$Select;->from(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$From;

    move-result-object v1

    const-string v2, "sdoc"

    invoke-interface {v1, v2}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$From;->innerJoin(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$Join;

    move-result-object v1

    const-string v2, "sdoc.UUID = stroke.sdocUUID"

    invoke-interface {v1, v2}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$Join;->on(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$On;

    move-result-object v1

    const-string v2, "sdoc.isDeleted = 0"

    invoke-interface {v1, v2}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$On;->and(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$On;

    move-result-object v1

    const-string v2, "(sdoc.isLock=0 OR sdoc.isLock=-1)"

    invoke-interface {v1, v2}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$On;->and(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$On;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "REPLACE(text, \' \', \'\') LIKE ? ESCAPE \'\ufffd\' "

    invoke-static {v3, p0}, Lcom/samsung/android/support/senl/nt/data/database/core/query/search/SearchQuery;->appendLikeText(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$On;->and(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$On;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$From;->build()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static appendUnionTagListTable(I)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " UNION "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;-><init>()V

    const-string v2, "tag_list.docUUID"

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;->select(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$Select;

    move-result-object v1

    const-string v2, "tag_list"

    invoke-interface {v1, v2}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$Select;->from(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$From;

    move-result-object v1

    const-string v2, "sdoc"

    invoke-interface {v1, v2}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$From;->innerJoin(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$Join;

    move-result-object v1

    const-string v2, "sdoc.UUID = tag_list.docUUID"

    invoke-interface {v1, v2}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$Join;->on(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$On;

    move-result-object v1

    const-string v2, "sdoc.isDeleted = 0"

    invoke-interface {v1, v2}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$On;->and(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$On;

    move-result-object v1

    const-string v2, "(sdoc.isLock=0 OR sdoc.isLock=-1)"

    invoke-interface {v1, v2}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$On;->and(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$On;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "REPLACE(\'#\' || tag_list.normalizeName, \' \', \'\') LIKE ? ESCAPE \'\ufffd\' "

    invoke-static {v3, p0}, Lcom/samsung/android/support/senl/nt/data/database/core/query/search/SearchQuery;->appendLikeText(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$On;->and(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$On;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$From;->build()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static integrateSearchTables(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/query/search/SearchQuery;->appendTitleSearchResult(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/query/search/SearchQuery;->appendUnionContentSearchResult(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/query/search/SearchQuery;->appendUnionTagListTable(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/query/search/SearchQuery;->appendUnionAutoTagTable(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/query/search/SearchQuery;->appendUnionStrokeTable(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getQuery(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;-><init>()V

    const-string v1, "`sdoc`.`_id` AS `_id`, `sdoc`.`UUID` AS `UUID`, `sdoc`.`isDeleted` AS `isDeleted`, `sdoc`.`isDirty` AS `isDirty`, substr(`sdoc`.`title`, 1, 300) AS `title`, `sdoc`.`recommendedTitle` AS `recommendedTitle`, substr(`sdoc`.`content`, 1, 300) AS `content`, `sdoc`.`displayContent` AS `displayContent`, `sdoc`.`createdAt` AS `createdAt`, `sdoc`.`lastModifiedAt` AS `lastModifiedAt`, `sdoc`.`vrUUID` AS `vrUUID`, `sdoc`.`contentUUID` AS `contentUUID`, `sdoc`.`firstContentType` AS `firstContentType`, `sdoc`.`secondContentType` AS `secondContentType`, `sdoc`.`strokeUUID` AS `strokeUUID`, `sdoc`.`strokeRatio` AS `strokeRatio`, `sdoc`.`categoryUUID` AS `categoryUUID`, `sdoc`.`filePath` AS `filePath`, `sdoc`.`isFavorite` AS `isFavorite`, `sdoc`.`isLock` AS `isLock`, `sdoc`.`isSaving` AS `isSaving`, `sdoc`.`reminderTriggerTime` AS `reminderTriggerTime`, `sdoc`.`reminderRequestCode` AS `reminderRequestCode`, `sdoc`.`recycle_bin_time_moved` AS `recycle_bin_time_moved`, `sdoc`.`contentSecureVersion` AS `contentSecureVersion`, `sdoc`.`size` AS `size`, `sdoc`.`displayTitle` AS `displayTitle`, `sdoc`.`saveType` AS `saveType`, `sdoc`.`firstOpendAt` AS `firstOpendAt`, `sdoc`.`secondOpenedAt` AS `secondOpenedAt`, `sdoc`.`lastOpenedAt` AS `lastOpenedAt`, `sdoc`.`importedAt` AS `importedAt`, `sdoc`.`recommendedAt` AS `recommendedAt`, `sdoc`.`lastMappedAt` AS `lastMappedAt`, `sdoc`.`mdeSpaceId` AS `mdeSpaceId`, `sdoc`.`mdeItemId` AS `mdeItemId`, `sdoc`.`mdeExtra` AS `mdeExtra`, `sdoc`.`mdeGroupId` AS `mdeGroupId`, `sdoc`.`mdeOwnerId` AS `mdeOwnerId`, `sdoc`.`firstHandwritingHeight` AS `firstHandwritingHeight`, `sdoc`.`deleteRecommended` AS `deleteRecommended`, `sdoc`.`absolutePath` AS `absolutePath`, `sdoc`.`backgroundColor` AS `backgroundColor`, `sdoc`.`backgroundColorInverted` AS `backgroundColorInverted`, `sdoc`.`lockAccountGuid` AS `lockAccountGuid`, `sdoc`.`corrupted` AS `corrupted`, `sdoc`.`pageMode` AS `pageMode`"

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;->select(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$Select;

    move-result-object v0

    const-string v1, "sdoc"

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$Select;->from(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$From;

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

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/query/search/SearchQuery;->mSpaceQuery:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/Post$Where;->and(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/query/search/SearchQuery;->mPageModeQuery:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;->and(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;->and(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;

    move-result-object p1

    const-string v0, "mapped_document.mappedUUID IS NULL"

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;->and(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sdoc.UUID in ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/samsung/android/support/senl/nt/data/database/core/query/search/SearchQuery;->integrateSearchTables(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ")"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;->and(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;

    move-result-object p1

    const-string p3, "sdoc.UUID"

    invoke-virtual {p1, p3}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;->groupBy(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " ORDER BY "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;->append(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;->delimiter()Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/query/sqlbuilder/NotesSQLBuilder;->build()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
