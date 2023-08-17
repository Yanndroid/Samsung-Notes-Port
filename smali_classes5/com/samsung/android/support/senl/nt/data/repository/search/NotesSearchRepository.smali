.class public Lcom/samsung/android/support/senl/nt/data/repository/search/NotesSearchRepository;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mNotesCategoryTreeDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;

.field private final mNotesSearchDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesSearchDAO;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "NotesSearchRepository"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/data/common/log/DataLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/data/repository/search/NotesSearchRepository;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;->notesSearchDAO()Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesSearchDAO;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/search/NotesSearchRepository;->mNotesSearchDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesSearchDAO;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;->sdocCategoryTreeDAO()Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/repository/search/NotesSearchRepository;->mNotesCategoryTreeDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;

    return-void
.end method


# virtual methods
.method public isEmptyForSearchLatestNotes()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/search/NotesSearchRepository;->mNotesSearchDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesSearchDAO;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesSearchDAO;->isEmptyForSearchLatestNotes()Z

    move-result v0

    return v0
.end method

.method public search(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/samsung/android/support/senl/nt/data/repository/search/NotesSearchRepository;->search(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;ZZ)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public search(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;ZZ)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;",
            "ZZ)",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/data/repository/search/NotesSearchRepository;->mNotesSearchDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesSearchDAO;

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesSearchDAO;->search(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;ZZ)Ljava/util/List;

    move-result-object p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-object p4, Lcom/samsung/android/support/senl/nt/data/repository/search/NotesSearchRepository;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "search, target : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/data/common/log/DataLogger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " / results : "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " / isCoeditMode : "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " / execution time : "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v2, v0

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p4, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2
.end method

.method public searchBixby(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/data/database/core/query/param/BixbyRequestParam;Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;)Ljava/util/List;
    .locals 6
    .param p2    # Lcom/samsung/android/support/senl/nt/data/database/core/query/param/BixbyRequestParam;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/samsung/android/support/senl/nt/data/database/core/query/param/BixbyRequestParam;",
            "Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/data/repository/search/NotesSearchRepository;->mNotesSearchDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesSearchDAO;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/data/repository/search/NotesSearchRepository;->mNotesCategoryTreeDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;

    invoke-virtual {v2, v3, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesSearchDAO;->searchBixby(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/data/database/core/query/param/BixbyRequestParam;Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;)Ljava/util/List;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-object p3, Lcom/samsung/android/support/senl/nt/data/repository/search/NotesSearchRepository;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "searchBixby, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " / results : "

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " / execution time : "

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v2, v0

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public searchLatestNotes(I)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/data/repository/search/NotesSearchRepository;->mNotesSearchDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesSearchDAO;

    invoke-virtual {v2, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesSearchDAO;->searchLatestNotes(I)Ljava/util/List;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sget-object v5, Lcom/samsung/android/support/senl/nt/data/repository/search/NotesSearchRepository;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "searchLatestNotes, maxCount"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " / results : "

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " / execution time : "

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v3, v0

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method
