.class public Lcom/samsung/android/app/notes/sync/db/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/app/notes/sync/db/l;->a:Ljava/lang/Object;

    return-void
.end method

.method public static A(Ljava/lang/String;Ljava/lang/String;JIJLjava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagContentEntity;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return-object v0

    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    return-object v0

    :cond_1
    new-instance p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagContentEntity;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagContentEntity;-><init>()V

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagContentEntity;->setServerTimestamp(Ljava/lang/Long;)V

    invoke-virtual {p0, p5, p6}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagContentEntity;->setLastModifiedAt(J)V

    invoke-virtual {p0, p4}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagContentEntity;->setIsDirty(I)V

    invoke-virtual {p0, p7}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagContentEntity;->setExtraInfo(Ljava/lang/String;)V

    return-object p0
.end method

.method public static B(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/base/common/tag/HashTagData;Ljava/lang/String;Ljava/util/Map;J)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/samsung/android/support/senl/nt/base/common/tag/HashTagData;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/app/notes/sync/db/k;",
            ">;J)",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesHashtagContentDAO$HashTagExtra;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/base/common/tag/HashTagData;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/base/common/tag/HashTagData;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/notes/sync/db/k;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/samsung/android/app/notes/sync/db/k;->a()I

    move-result p3

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p3, v3, :cond_2

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;

    move-result-object p3

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;->notesHashtagDAO()Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesHashtagDAO;

    move-result-object p3

    invoke-virtual {p1}, Lcom/samsung/android/app/notes/sync/db/k;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesHashtagDAO;->getEntity(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagEntity;

    move-result-object p3

    if-eqz p3, :cond_2

    invoke-virtual {p3, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagEntity;->setIsDeleted(I)V

    invoke-virtual {p3, v3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagEntity;->setIsDeleted(I)V

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p3, v4}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagEntity;->setServerTimestamp(Ljava/lang/Long;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p3, v4, v5}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagEntity;->setLastModifiedAt(J)V

    new-instance v4, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesHashtagContentDAO$HashTagExtra;

    invoke-direct {v4, v3, v2, p3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesHashtagContentDAO$HashTagExtra;-><init>(ILcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagContentEntity;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagEntity;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;->notesHashtagContentDAO()Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesHashtagContentDAO;

    move-result-object p0

    invoke-virtual {p1}, Lcom/samsung/android/app/notes/sync/db/k;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesHashtagContentDAO;->getEntityBySdocUuidAndContentUuid(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagContentEntity;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagContentEntity;->setServerTimestamp(Ljava/lang/Long;)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagContentEntity;->setIsDeleted(I)V

    invoke-virtual {p0, v3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagContentEntity;->setIsDirty(I)V

    :cond_3
    new-instance p1, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesHashtagContentDAO$HashTagExtra;

    invoke-direct {p1, v3, p0, v2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesHashtagContentDAO$HashTagExtra;-><init>(ILcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagContentEntity;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagEntity;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    return-object v0
.end method

.method public static C(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/base/common/tag/HashTagData;Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/samsung/android/support/senl/nt/base/common/tag/HashTagData;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/app/notes/sync/db/k;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesHashtagContentDAO$HashTagExtra;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/base/common/tag/HashTagData;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/base/common/tag/HashTagData;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/notes/sync/db/k;

    if-nez v1, :cond_3

    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/base/common/tag/HashTagData;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    move-object v1, p3

    check-cast v1, Lcom/samsung/android/app/notes/sync/db/k;

    :cond_3
    if-eqz v1, :cond_6

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;

    move-result-object p3

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;->notesHashtagContentDAO()Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesHashtagContentDAO;

    move-result-object p3

    invoke-virtual {v1}, Lcom/samsung/android/app/notes/sync/db/k;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, p2, v2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesHashtagContentDAO;->getEntityBySdocUuidAndContentUuid(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagContentEntity;

    move-result-object p2

    const/4 p3, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_4

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/base/common/TimeManager;->getCurrentTime(Landroid/content/Context;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagContentEntity;->setServerTimestamp(Ljava/lang/Long;)V

    invoke-virtual {p2, p3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagContentEntity;->setIsDeleted(I)V

    invoke-virtual {p2, v2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagContentEntity;->setIsDirty(I)V

    :cond_4
    new-instance v3, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesHashtagContentDAO$HashTagExtra;

    const/4 v4, 0x0

    invoke-direct {v3, v2, p2, v4}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesHashtagContentDAO$HashTagExtra;-><init>(ILcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagContentEntity;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagEntity;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lcom/samsung/android/app/notes/sync/db/k;->b()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/base/common/tag/HashTagData;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;->notesHashtagDAO()Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesHashtagDAO;

    move-result-object p2

    invoke-virtual {v1}, Lcom/samsung/android/app/notes/sync/db/k;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesHashtagDAO;->getEntity(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagEntity;

    move-result-object p2

    if-eqz p2, :cond_5

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/base/common/TimeManager;->getCurrentTime(Landroid/content/Context;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagEntity;->setServerTimestamp(Ljava/lang/Long;)V

    invoke-virtual {p2, p3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagEntity;->setIsDeleted(I)V

    invoke-virtual {p2, v2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagEntity;->setIsDirty(I)V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/base/common/tag/HashTagData;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagEntity;->setName(Ljava/lang/String;)V

    :cond_5
    new-instance p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesHashtagContentDAO$HashTagExtra;

    invoke-direct {p0, v2, v4, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesHashtagContentDAO$HashTagExtra;-><init>(ILcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagContentEntity;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagEntity;)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    return-object v0
.end method

.method public static D(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;)Z
    .locals 6
    .param p4    # Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/base/common/tag/HashTagData;",
            ">;",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/base/common/tag/HashTagData;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;",
            ")Z"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/notes/sync/db/l;->F(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;Z)Z

    move-result p0

    return p0
.end method

.method public static E(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "HashTagWriteResolver"

    const-string/jumbo v1, "updateHashTagsBySdocUuidFromProvider start"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    move v7, v0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v7, v1, :cond_3

    invoke-interface {p2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/samsung/android/app/notes/sync/db/j;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v2, v0

    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    new-instance v6, Lcom/samsung/android/support/senl/nt/base/common/tag/HashTagData;

    invoke-direct {v6}, Lcom/samsung/android/support/senl/nt/base/common/tag/HashTagData;-><init>()V

    invoke-virtual {v6, v5}, Lcom/samsung/android/support/senl/nt/base/common/tag/HashTagData;->setName(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/base/common/tag/HashTagData;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    if-eqz v2, :cond_2

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;

    move-result-object v8

    new-instance v9, Lcom/samsung/android/app/notes/sync/db/l$a;

    move-object v1, v9

    move-object v2, p0

    move-object v5, p2

    move v6, v7

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/app/notes/sync/db/l$a;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/util/List;I)V

    invoke-virtual {v8, v9}, Landroidx/room/RoomDatabase;->runInTransaction(Ljava/lang/Runnable;)V

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_3
    invoke-static {}, Ln2/a;->e()Ln2/a;

    move-result-object p1

    invoke-virtual {p1}, Ln2/a;->r()V

    new-instance p1, Lcom/samsung/android/support/senl/nt/data/repository/tag/NotesTagRepository;

    invoke-direct {p1, p0}, Lcom/samsung/android/support/senl/nt/data/repository/tag/NotesTagRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/repository/tag/NotesTagRepository;->notifyTagBoard()V

    return-void
.end method

.method public static F(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;Z)Z
    .locals 19
    .param p4    # Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/base/common/tag/HashTagData;",
            ">;",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/base/common/tag/HashTagData;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;",
            "Z)Z"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v14, p3

    const-string v15, "HashTagWriteResolver"

    const-string/jumbo v0, "updateHashTagsBySdocUuid start"

    invoke-static {v15, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/senl/nt/base/common/tag/HashTagData;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/base/common/tag/HashTagData;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/support/senl/nt/base/common/tag/HashTagData;

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/base/common/tag/HashTagData;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/support/senl/nt/base/common/tag/HashTagData;

    move-object/from16 v11, p2

    invoke-interface {v11, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/base/common/tag/HashTagData;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/base/common/tag/HashTagData;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    move-object/from16 v11, p2

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/senl/nt/base/common/tag/HashTagData;

    move-object/from16 v4, p1

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/base/common/tag/HashTagData;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez v5, :cond_6

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/base/common/tag/HashTagData;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_7
    invoke-static {v6, v0}, Lcom/samsung/android/app/notes/sync/db/j;->m(Landroid/content/Context;Ljava/util/List;)Ljava/util/Map;

    move-result-object v12

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/support/senl/nt/base/common/TimeManager;->getCurrentTime(Landroid/content/Context;)J

    move-result-wide v16

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/base/common/tag/HashTagData;

    invoke-static {v1, v14, v12}, Lcom/samsung/android/app/notes/sync/db/l;->l(Lcom/samsung/android/support/senl/nt/base/common/tag/HashTagData;Ljava/lang/String;Ljava/util/Map;)Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesHashtagContentDAO$HashTagExtra;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_9
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_a
    :goto_6
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/support/senl/nt/base/common/tag/HashTagData;

    move-object/from16 v0, p0

    move-object/from16 v2, p3

    move-object v3, v12

    move-wide/from16 v4, v16

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/notes/sync/db/l;->B(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/base/common/tag/HashTagData;Ljava/lang/String;Ljava/util/Map;J)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_6

    :cond_b
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_c
    :goto_7
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/support/senl/nt/base/common/tag/HashTagData;

    move-object/from16 v0, p0

    move-object/from16 v2, p3

    move-object v3, v12

    move-wide/from16 v4, v16

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/notes/sync/db/l;->b(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/base/common/tag/HashTagData;Ljava/lang/String;Ljava/util/Map;J)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_7

    :cond_d
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/base/common/tag/HashTagData;

    invoke-static {v6, v1, v14, v12}, Lcom/samsung/android/app/notes/sync/db/l;->C(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/base/common/tag/HashTagData;Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_8

    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateHashTagsBySdocUuid delete : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateHashTagsBySdocUuid update : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateHashTagsBySdocUuid insert : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateHashTagsBySdocUuid updateCases : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateHashTagsBySdocUuid cpo : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_f

    return v1

    :cond_f
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v8, 0x1

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/support/senl/nt/base/common/TimeManager;->getCurrentTime(Landroid/content/Context;)J

    move-result-wide v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    const-string v0, ""

    move-object/from16 v7, p3

    move-object v2, v13

    move-object v13, v0

    invoke-static/range {v7 .. v13}, Lcom/samsung/android/app/notes/sync/db/l;->e(Ljava/lang/String;IJJLjava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesHashtagContentDAO$HashTagExtra;

    move-result-object v0

    :goto_9
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_10
    move-object v2, v13

    invoke-static {v6, v14}, Lcom/samsung/android/app/notes/sync/db/l;->q(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesHashtagContentDAO$HashTagExtra;

    move-result-object v0

    if-eqz v0, :cond_11

    goto :goto_9

    :cond_11
    :goto_a
    const-string/jumbo v0, "updateHashTagsBySdocUuid end0"

    invoke-static {v15, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagContentEntity;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagContentEntity;-><init>()V

    invoke-virtual {v0, v14}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagContentEntity;->setSdocUuid(Ljava/lang/String;)V

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/support/senl/nt/base/common/TimeManager;->getCurrentTime(Landroid/content/Context;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagContentEntity;->setServerTimestamp(Ljava/lang/Long;)V

    new-instance v3, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesHashtagContentDAO$HashTagExtra;

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-direct {v3, v4, v0, v5}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesHashtagContentDAO$HashTagExtra;-><init>(ILcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagContentEntity;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagEntity;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;->notesHashtagContentDAO()Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesHashtagContentDAO;

    move-result-object v0

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;->notesHashtagDAO()Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesHashtagDAO;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesHashtagContentDAO;->updateHashTagsBySdocUuid(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesHashtagDAO;Ljava/util/ArrayList;)V

    const-string/jumbo v0, "updateHashTagsBySdocUuid end1"

    invoke-static {v15, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p5, :cond_12

    invoke-static {}, Ln2/a;->e()Ln2/a;

    move-result-object v0

    invoke-virtual {v0}, Ln2/a;->n()V

    const-string/jumbo v0, "updateHashTagsBySdocUuid end2"

    invoke-static {v15, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/repository/tag/NotesTagRepository;

    invoke-direct {v0, v6}, Lcom/samsung/android/support/senl/nt/data/repository/tag/NotesTagRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/repository/tag/NotesTagRepository;->notifyTagBoard()V

    :cond_12
    return v1
.end method

.method public static G(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;->notesHashtagDAO()Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesHashtagDAO;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesHashtagDAO;->getEntity(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagEntity;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagEntity;->setName(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;->notesHashtagDAO()Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesHashtagDAO;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/dao/BaseDao;->update(Ljava/lang/Object;)I

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagEntity;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagEntity;-><init>()V

    invoke-virtual {v0, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagEntity;->setName(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagEntity;->setUuid(Ljava/lang/String;)V

    const-string p1, ""

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagEntity;->setExtraInfo(Ljava/lang/String;)V

    invoke-static {p0, v0, p3}, Lcom/samsung/android/app/notes/sync/db/l;->d(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagEntity;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/base/common/tag/HashTagData;Ljava/lang/String;Ljava/util/Map;J)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/samsung/android/support/senl/nt/base/common/tag/HashTagData;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/app/notes/sync/db/k;",
            ">;J)",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesHashtagContentDAO$HashTagExtra;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/base/common/tag/HashTagData;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/base/common/tag/HashTagData;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/notes/sync/db/k;

    if-nez v1, :cond_3

    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/base/common/tag/HashTagData;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    move-object v1, p3

    check-cast v1, Lcom/samsung/android/app/notes/sync/db/k;

    :cond_3
    const-string p3, "HashTagWriteResolver"

    const-string v2, ""

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v1, :cond_4

    new-instance v1, Lcom/samsung/android/app/notes/sync/db/k;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/base/common/tag/HashTagData;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/base/common/util/UUIDUtils;->newUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, v6, p0, v5}, Lcom/samsung/android/app/notes/sync/db/k;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagEntity;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagEntity;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/base/common/tag/HashTagData;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagEntity;->setName(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/samsung/android/app/notes/sync/db/k;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagEntity;->setUuid(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagEntity;->setExtraInfo(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {p0, v6, v7}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagEntity;->setLastModifiedAt(J)V

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagEntity;->setServerTimestamp(Ljava/lang/Long;)V

    new-instance p1, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesHashtagContentDAO$HashTagExtra;

    invoke-direct {p1, v5, v3, p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesHashtagContentDAO$HashTagExtra;-><init>(ILcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagContentEntity;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagEntity;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p0, "addHashTagContents insert "

    invoke-static {p3, p0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Lcom/samsung/android/app/notes/sync/db/k;->a()I

    move-result p1

    if-ne p1, v4, :cond_5

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;->notesHashtagDAO()Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesHashtagDAO;

    move-result-object p0

    invoke-virtual {v1}, Lcom/samsung/android/app/notes/sync/db/k;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesHashtagDAO;->getEntity(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagEntity;

    move-result-object p0

    invoke-virtual {p0, v5}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagEntity;->setIsDeleted(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {p0, v6, v7}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagEntity;->setLastModifiedAt(J)V

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagEntity;->setServerTimestamp(Ljava/lang/Long;)V

    new-instance p1, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesHashtagContentDAO$HashTagExtra;

    invoke-direct {p1, v4, v3, p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesHashtagContentDAO$HashTagExtra;-><init>(ILcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagContentEntity;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagEntity;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_0
    new-instance p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagContentEntity;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagContentEntity;-><init>()V

    invoke-virtual {v1}, Lcom/samsung/android/app/notes/sync/db/k;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagContentEntity;->setHashtagUuid(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagContentEntity;->setSdocUuid(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagContentEntity;->setExtraInfo(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagContentEntity;->setIsDirty(I)V

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagContentEntity;->setServerTimestamp(Ljava/lang/Long;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagContentEntity;->setLastModifiedAt(J)V

    new-instance p1, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesHashtagContentDAO$HashTagExtra;

    invoke-direct {p1, v5, p0, v3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesHashtagContentDAO$HashTagExtra;-><init>(ILcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagContentEntity;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagEntity;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p0, "addHashTagContents insert cpo"

    invoke-static {p3, p0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JIJLjava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagContentEntity;
    .locals 1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return-object v0

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    return-object v0

    :cond_1
    new-instance p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagContentEntity;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagContentEntity;-><init>()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagContentEntity;->setHashtagUuid(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagContentEntity;->setSdocUuid(Ljava/lang/String;)V

    invoke-virtual {p0, p8}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagContentEntity;->setExtraInfo(Ljava/lang/String;)V

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagContentEntity;->setServerTimestamp(Ljava/lang/Long;)V

    invoke-virtual {p0, p5}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagContentEntity;->setIsDirty(I)V

    invoke-virtual {p0, p6, p7}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagContentEntity;->setLastModifiedAt(J)V

    return-object p0
.end method

.method public static d(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagEntity;Z)Ljava/lang/String;
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagEntity;->setLastModifiedAt(J)V

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/base/common/TimeManager;->getCurrentTime(Landroid/content/Context;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagEntity;->setServerTimestamp(Ljava/lang/Long;)V

    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;->notesHashtagDAO()Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesHashtagDAO;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/dao/BaseDao;->upsert(Ljava/lang/Object;)Landroid/util/Pair;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagEntity;->getUuid()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteFullException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "HashTagWriteResolver"

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/samsung/android/support/senl/nt/base/winset/util/DialogUtils;->showNotEnoughStorageDialog(Landroid/content/Context;Ljava/lang/Runnable;)Landroidx/appcompat/app/AlertDialog;

    return-object p1
.end method

.method public static e(Ljava/lang/String;IJJLjava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesHashtagContentDAO$HashTagExtra;
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagContentEntity;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagContentEntity;-><init>()V

    const-string v1, "NOTAG"

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagContentEntity;->setHashtagUuid(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagContentEntity;->setSdocUuid(Ljava/lang/String;)V

    invoke-virtual {v0, p6}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagContentEntity;->setExtraInfo(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagContentEntity;->setIsDirty(I)V

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagContentEntity;->setServerTimestamp(Ljava/lang/Long;)V

    invoke-virtual {v0, p4, p5}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagContentEntity;->setLastModifiedAt(J)V

    new-instance p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesHashtagContentDAO$HashTagExtra;

    const/4 p1, 0x0

    const/4 p2, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesHashtagContentDAO$HashTagExtra;-><init>(ILcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagContentEntity;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagEntity;)V

    return-object p0
.end method

.method public static f(Landroid/content/Context;Ljava/lang/String;IJJLjava/lang/String;)Landroid/net/Uri;
    .locals 0

    invoke-static/range {p0 .. p7}, Lcom/samsung/android/app/notes/sync/db/l;->i(Landroid/content/Context;Ljava/lang/String;IJJLjava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static g(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;
    .locals 7

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/base/common/TimeManager;->getCurrentTime(Landroid/content/Context;)J

    move-result-wide v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const/4 v2, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v6}, Lcom/samsung/android/app/notes/sync/db/l;->h(Landroid/content/Context;Ljava/lang/String;IJJ)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static h(Landroid/content/Context;Ljava/lang/String;IJJ)Landroid/net/Uri;
    .locals 8

    const-string v7, ""

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move-wide v5, p5

    invoke-static/range {v0 .. v7}, Lcom/samsung/android/app/notes/sync/db/l;->i(Landroid/content/Context;Ljava/lang/String;IJJLjava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static i(Landroid/content/Context;Ljava/lang/String;IJJLjava/lang/String;)Landroid/net/Uri;
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagContentEntity;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagContentEntity;-><init>()V

    const-string v1, "NOTAG"

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagContentEntity;->setHashtagUuid(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagContentEntity;->setSdocUuid(Ljava/lang/String;)V

    invoke-virtual {v0, p7}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagContentEntity;->setExtraInfo(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagContentEntity;->setIsDirty(I)V

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagContentEntity;->setServerTimestamp(Ljava/lang/Long;)V

    invoke-virtual {v0, p5, p6}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagContentEntity;->setLastModifiedAt(J)V

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;->notesHashtagContentDAO()Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesHashtagContentDAO;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/dao/BaseDao;->upsert(Ljava/lang/Object;)Landroid/util/Pair;

    const-string p0, "content://"

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static j(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;->notesHashtagContentDAO()Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesHashtagContentDAO;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesHashtagContentDAO;->deleteByUuid(Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method public static k(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;->notesHashtagContentDAO()Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesHashtagContentDAO;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesHashtagContentDAO;->deleteBySdocUuidAndContentUuid(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static l(Lcom/samsung/android/support/senl/nt/base/common/tag/HashTagData;Ljava/lang/String;Ljava/util/Map;)Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesHashtagContentDAO$HashTagExtra;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/nt/base/common/tag/HashTagData;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/app/notes/sync/db/k;",
            ">;)",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesHashtagContentDAO$HashTagExtra;"
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/common/tag/HashTagData;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/common/tag/HashTagData;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/notes/sync/db/k;

    if-nez p0, :cond_2

    return-object v1

    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "deleteHashTagContents newDelete : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "HashTagWriteResolver"

    invoke-static {v0, p2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagContentEntity;

    invoke-direct {p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagContentEntity;-><init>()V

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagContentEntity;->setSdocUuid(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/db/k;->c()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagContentEntity;->setHashtagUuid(Ljava/lang/String;)V

    new-instance p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesHashtagContentDAO$HashTagExtra;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesHashtagContentDAO$HashTagExtra;-><init>(ILcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagContentEntity;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagEntity;)V

    return-object p0
.end method

.method public static m(Landroid/content/Context;Ljava/lang/String;JIZ)I
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;

    move-result-object p5

    invoke-virtual {p5}, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;->notesHashtagDAO()Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesHashtagDAO;

    move-result-object p5

    invoke-virtual {p5, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesHashtagDAO;->getEntity(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagEntity;

    move-result-object p5

    invoke-virtual {p5, p4}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagEntity;->setIsDirty(I)V

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p5, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagEntity;->setServerTimestamp(Ljava/lang/Long;)V

    const/4 p2, 0x1

    invoke-virtual {p5, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagEntity;->setIsDeleted(I)V

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;

    move-result-object p3

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;->notesHashtagDAO()Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesHashtagDAO;

    move-result-object p3

    invoke-virtual {p3, p5}, Lcom/samsung/android/support/senl/nt/data/database/core/dao/BaseDao;->update(Ljava/lang/Object;)I

    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/notes/sync/db/j;->w(Landroid/content/Context;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-static {p0, p4}, Lcom/samsung/android/app/notes/sync/db/j;->n(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object p5

    if-eqz p5, :cond_0

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result p5

    if-ne p5, p2, :cond_0

    invoke-static {p0, p4}, Lcom/samsung/android/app/notes/sync/db/l;->g(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;->notesHashtagContentDAO()Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesHashtagContentDAO;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesHashtagContentDAO;->deleteByHashtagUuid(Ljava/lang/String;)V

    new-instance p1, Lcom/samsung/android/support/senl/nt/data/repository/tag/NotesTagRepository;

    invoke-direct {p1, p0}, Lcom/samsung/android/support/senl/nt/data/repository/tag/NotesTagRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/repository/tag/NotesTagRepository;->notifyTagBoard()V

    const/4 p0, 0x0

    return p0
.end method

.method public static n(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;->notesHashtagDAO()Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesHashtagDAO;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesHashtagDAO;->deleteByUuid(Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method public static o(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/notes/sync/db/l;->k(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static p(Landroid/content/Context;Ljava/lang/String;JI)V
    .locals 2

    sget-object v0, Lcom/samsung/android/app/notes/sync/db/l;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;->notesHashtagDAO()Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesHashtagDAO;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesHashtagDAO;->getEntity(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagEntity;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagEntity;->setIsDirty(I)V

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagEntity;->setServerTimestamp(Ljava/lang/Long;)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagEntity;->setIsDeleted(I)V

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;->notesHashtagDAO()Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesHashtagDAO;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/dao/BaseDao;->update(Ljava/lang/Object;)I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance p1, Lcom/samsung/android/support/senl/nt/data/repository/tag/NotesTagRepository;

    invoke-direct {p1, p0}, Lcom/samsung/android/support/senl/nt/data/repository/tag/NotesTagRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/repository/tag/NotesTagRepository;->notifyTagBoard()V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->requestSyncByModification()Z

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static q(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesHashtagContentDAO$HashTagExtra;
    .locals 2

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;->notesHashtagContentDAO()Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesHashtagContentDAO;

    move-result-object p0

    const-string v0, "NOTAG"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesHashtagContentDAO;->getEntityBySdocUuidAndContentUuid(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagContentEntity;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesHashtagContentDAO$HashTagExtra;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesHashtagContentDAO$HashTagExtra;-><init>(ILcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagContentEntity;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagEntity;)V

    return-object v0

    :cond_0
    return-object p1
.end method

.method public static r(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;->notesHashtagContentDAO()Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesHashtagContentDAO;

    move-result-object p0

    const-string v0, "NOTAG"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesHashtagContentDAO;->deleteBySdocUuidAndContentUuid(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static s(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;->notesHashtagDAO()Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesHashtagDAO;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesHashtagDAO;->updateDirtyByHashtagUuid(Ljava/lang/String;I)V

    return-void
.end method

.method public static t(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;->notesHashtagDAO()Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesHashtagDAO;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesHashtagDAO;->updateServerTimestampByHashtagUuid(Ljava/lang/String;J)V

    return-void
.end method

.method public static u(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;->notesHashtagContentDAO()Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesHashtagContentDAO;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesHashtagContentDAO;->updateDirtyBySdocUuid(Ljava/lang/String;I)V

    return-void
.end method

.method public static v(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;->notesHashtagContentDAO()Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesHashtagContentDAO;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesHashtagContentDAO;->getEntityBySdocUuidAndContentUuid(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagContentEntity;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagContentEntity;->setHashtagUuid(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;->notesHashtagContentDAO()Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesHashtagContentDAO;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/dao/BaseDao;->update(Ljava/lang/Object;)I

    new-instance p1, Lcom/samsung/android/support/senl/nt/data/repository/tag/NotesTagRepository;

    invoke-direct {p1, p0}, Lcom/samsung/android/support/senl/nt/data/repository/tag/NotesTagRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/repository/tag/NotesTagRepository;->notifyTagBoard()V

    const/4 p0, 0x0

    return p0
.end method

.method public static w(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJJLjava/lang/String;I)I
    .locals 12

    move-object v1, p2

    const/4 v0, -0x1

    if-nez v1, :cond_0

    return v0

    :cond_0
    const-string v2, "NOTAG"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v9, 0x1

    if-eqz v2, :cond_2

    invoke-static {p0, p1}, Lcom/samsung/android/app/notes/sync/db/l;->j(Landroid/content/Context;Ljava/lang/String;)Z

    move-object v1, p0

    move-object v2, p1

    move/from16 v3, p9

    move-wide/from16 v4, p6

    move-wide/from16 v6, p4

    move-object/from16 v8, p8

    invoke-static/range {v1 .. v8}, Lcom/samsung/android/app/notes/sync/db/l;->f(Landroid/content/Context;Ljava/lang/String;IJJLjava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_1

    move v0, v9

    :cond_1
    return v0

    :cond_2
    invoke-static {p0, p1}, Lcom/samsung/android/app/notes/sync/db/l;->r(Landroid/content/Context;Ljava/lang/String;)I

    invoke-static {p0, p1}, Lcom/samsung/android/app/notes/sync/db/j;->n(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-eq v2, v0, :cond_3

    move-object v0, p2

    move-object v1, p1

    move-wide/from16 v2, p6

    move/from16 v4, p9

    move-wide/from16 v5, p4

    move-object/from16 v7, p8

    invoke-static/range {v0 .. v7}, Lcom/samsung/android/app/notes/sync/db/l;->A(Ljava/lang/String;Ljava/lang/String;JIJLjava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagContentEntity;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    move v0, p3

    if-eq v0, v9, :cond_4

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    move-wide/from16 v3, p6

    move/from16 v5, p9

    move-wide/from16 v6, p4

    move-object/from16 v8, p8

    invoke-static/range {v0 .. v8}, Lcom/samsung/android/app/notes/sync/db/l;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JIJLjava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagContentEntity;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;->notesHashtagContentDAO()Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesHashtagContentDAO;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesHashtagContentDAO;->updateBySdocUuidAndContentUuid(Ljava/util/ArrayList;)V

    move v0, v9

    :cond_5
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;->notesHashtagContentDAO()Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesHashtagContentDAO;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/samsung/android/support/senl/nt/data/database/core/dao/BaseDao;->upsert(Ljava/util/Collection;)V

    move v0, v9

    :cond_6
    if-eqz v0, :cond_7

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/repository/tag/NotesTagRepository;

    move-object v1, p0

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/data/repository/tag/NotesTagRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/repository/tag/NotesTagRepository;->notifyTagBoard()V

    :cond_7
    return v9
.end method

.method public static x(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;I)I
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/base/common/sync/TagContentItem;",
            ">;I)I"
        }
    .end annotation

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    if-nez p2, :cond_1

    return v1

    :cond_1
    invoke-static/range {p0 .. p1}, Lcom/samsung/android/app/notes/sync/db/l;->j(Landroid/content/Context;Ljava/lang/String;)Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/support/senl/nt/base/common/sync/TagContentItem;

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/base/common/sync/TagContentItem;->getTagUUID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/base/common/sync/TagContentItem;->getTagServerTime()J

    move-result-wide v11

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/base/common/sync/TagContentItem;->getTagModifiedTime()J

    move-result-wide v13

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/base/common/sync/TagContentItem;->getIsDeleted()I

    move-result v6

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/base/common/sync/TagContentItem;->getExtraInfo()Ljava/lang/String;

    move-result-object v15

    const-string v4, "NOTAG"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move/from16 v10, p3

    invoke-static/range {v8 .. v15}, Lcom/samsung/android/app/notes/sync/db/l;->f(Landroid/content/Context;Ljava/lang/String;IJJLjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_3

    move v1, v5

    :cond_3
    return v1

    :cond_4
    invoke-static/range {p0 .. p1}, Lcom/samsung/android/app/notes/sync/db/j;->n(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v7}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    if-eq v4, v1, :cond_5

    move-object v6, v7

    move-object/from16 v7, p1

    move-wide v8, v11

    move/from16 v10, p3

    move-wide v11, v13

    move-object v13, v15

    invoke-static/range {v6 .. v13}, Lcom/samsung/android/app/notes/sync/db/l;->A(Ljava/lang/String;Ljava/lang/String;JIJLjava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagContentEntity;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    if-eq v6, v5, :cond_2

    move-object/from16 v6, p0

    move-object/from16 v8, p1

    move-wide v9, v11

    move/from16 v11, p3

    move-wide v12, v13

    move-object v14, v15

    invoke-static/range {v6 .. v14}, Lcom/samsung/android/app/notes/sync/db/l;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JIJLjava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagContentEntity;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_7

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;->notesHashtagContentDAO()Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesHashtagContentDAO;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesHashtagContentDAO;->updateBySdocUuidAndContentUuid(Ljava/util/ArrayList;)V

    move v1, v5

    goto :goto_1

    :cond_7
    move v1, v3

    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;->notesHashtagContentDAO()Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesHashtagContentDAO;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/dao/BaseDao;->upsert(Ljava/util/Collection;)V

    goto :goto_2

    :cond_8
    move v5, v1

    :goto_2
    if-eqz v5, :cond_9

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/repository/tag/NotesTagRepository;

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/data/repository/tag/NotesTagRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/repository/tag/NotesTagRepository;->notifyTagBoard()V

    :cond_9
    return v3
.end method

.method public static y(Landroid/content/Context;Ljava/lang/String;JJ)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;->notesHashtagDAO()Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesHashtagDAO;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesHashtagDAO;->getEntity(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagEntity;

    move-result-object p1

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-virtual {p1, p4}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagEntity;->setServerTimestamp(Ljava/lang/Long;)V

    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagEntity;->setLastModifiedAt(J)V

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;->notesHashtagDAO()Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesHashtagDAO;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/dao/BaseDao;->update(Ljava/lang/Object;)I

    return-void
.end method

.method public static z(Landroid/content/Context;Ljava/lang/String;JJLjava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;->notesHashtagDAO()Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesHashtagDAO;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesHashtagDAO;->getEntity(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagEntity;

    move-result-object p1

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-virtual {p1, p4}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagEntity;->setServerTimestamp(Ljava/lang/Long;)V

    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagEntity;->setLastModifiedAt(J)V

    invoke-virtual {p1, p6}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagEntity;->setExtraInfo(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;->notesHashtagDAO()Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesHashtagDAO;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/dao/BaseDao;->update(Ljava/lang/Object;)I

    return-void
.end method
