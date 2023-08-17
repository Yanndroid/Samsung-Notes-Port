.class public Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$b;,
        Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$a;,
        Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$c;
    }
.end annotation


# direct methods
.method public static bridge synthetic a(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;JILjava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/CoeditMainListEntry;
    .locals 0

    invoke-static/range {p0 .. p6}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b;->b(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;JILjava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/CoeditMainListEntry;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;JILjava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/CoeditMainListEntry;
    .locals 7
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    new-instance v6, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/CoeditMainListEntry;

    invoke-direct {v6}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/CoeditMainListEntry;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getMdeGroupId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {v6, p1, p5}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/CoeditMainListEntry;->setMainListEntry(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;I)V

    const/4 p5, 0x0

    invoke-virtual {v6, p5}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/CoeditMainListEntry;->setType(I)V

    invoke-virtual {v6, p6}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/CoeditMainListEntry;->setAuthority(Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, v6

    move-object v3, p2

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b;->f(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/CoeditMainListEntry;Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;J)V

    return-object v6
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;)Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/CoeditMainListEntry;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$a;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;)V

    return-object v0
.end method

.method public static d(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;)Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/CoeditMainListEntry;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$b;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$b;-><init>(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;)V

    return-object v0
.end method

.method public static e(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;)Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/CoeditMainListEntry;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$c;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$c;-><init>(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;)V

    return-object v0
.end method

.method public static f(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/CoeditMainListEntry;Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;J)V
    .locals 3

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getMdeItemId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesCoeditShareReadResolver;->getInstance()Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesCoeditShareReadResolver;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getMdeSpaceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getMdeItemId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesShareBaseReadResolver;->getSharedItemByItemId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;->getMemo()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lv/d;->l(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/CoeditMainListEntry;->setSocialServerChangePoint(J)V

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getUuid()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->getCheckpoint(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/CoeditMainListEntry;->setClientSavedChangePoint(J)V

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/CoeditMainListEntry;->isSnapShotUpdateRequired()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getFirstOpendAt()J

    move-result-wide p2

    cmp-long p0, p4, p2

    if-eqz p0, :cond_1

    const-wide/16 p2, 0x0

    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setFirstOpendAt(J)V

    :cond_1
    return-void
.end method
