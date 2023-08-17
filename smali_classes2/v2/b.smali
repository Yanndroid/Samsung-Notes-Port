.class public Lv2/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lx2/e;

.field public b:Lx2/g;

.field public c:Lp2/a;

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lx2/e;Lx2/g;Lp2/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lv2/b;->d:Ljava/util/List;

    iput-object p1, p0, Lv2/b;->a:Lx2/e;

    iput-object p2, p0, Lv2/b;->b:Lx2/g;

    iput-object p3, p0, Lv2/b;->c:Lp2/a;

    return-void
.end method


# virtual methods
.method public final A(Ljava/util/HashMap;)V
    .locals 7
    .param p1    # Ljava/util/HashMap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lv2/b;->a:Lx2/e;

    invoke-virtual {v0}, Lx2/e;->t()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lv2/b;->a:Lx2/e;

    invoke-virtual {v0}, Lx2/e;->t()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;

    iget-object v3, v1, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->parentFolderNodeId:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Lcom/samsung/android/app/notes/sync/db/g;

    iget-object v5, p0, Lv2/b;->a:Lx2/e;

    invoke-virtual {v5}, Lx2/d;->a()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/samsung/android/app/notes/sync/db/g;-><init>(Landroid/content/Context;)V

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    iput-object v3, v1, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->parentFolderNodeId:Ljava/lang/String;

    invoke-virtual {v4, v3}, Lcom/samsung/android/app/notes/sync/db/g;->n(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, v1, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->syncModifiedTime:J

    invoke-virtual {v4, v3}, Lcom/samsung/android/app/notes/sync/db/g;->k(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, v1, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->lastModifiedTime:J

    invoke-virtual {v4, v3}, Lcom/samsung/android/app/notes/sync/db/g;->l(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, v1, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->recyclerBinMovedTime:J

    :cond_1
    iget-object v3, p0, Lv2/b;->a:Lx2/e;

    invoke-virtual {v3}, Lx2/e;->t()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public final a(Ljava/util/Map;Ljava/util/ArrayList;JLjava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;",
            ">;J",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "root"

    invoke-virtual {v0, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p1, p5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lv2/b;->a:Lx2/e;

    invoke-virtual {v0}, Lx2/e;->t()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;

    if-eqz v0, :cond_2

    iget-wide v1, v0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->syncModifiedTime:J

    cmp-long p5, v1, p3

    if-gez p5, :cond_1

    iput-wide p3, v0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->syncModifiedTime:J

    :cond_1
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p3, v0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->uUid:Ljava/lang/String;

    invoke-interface {p1, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v4, v0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->syncModifiedTime:J

    iget-object v6, v0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->parentFolderNodeId:Ljava/lang/String;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Lv2/b;->a(Ljava/util/Map;Ljava/util/ArrayList;JLjava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "addIgnoredFolderNode() : No folderUuid <- "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SyncFolder"

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Lx2/c;->k()Ljava/lang/String;

    move-result-object v0

    const-string v1, "eyJ2ZXJzaW9uIjowLCJlbmNyeXB0ZWRHdWlkIjoiIiwicmVxdWVzdFRpbWVTdGFtcCI6MCwibW9kaWZpZWRUaW1lIjowLCJhcHBWZXJzaW9uIjoiMCIsInNka1ZlcnNpb24iOiIwIiwicHVycG9zZSI6IklOSVRJQUwiLCJ0eXBlIjoiRk9MREVSIn0="

    if-eq v0, v1, :cond_0

    invoke-static {}, Lx2/c;->r()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lv2/b;->a:Lx2/e;

    invoke-virtual {v0, v1}, Lx2/e;->y(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 3

    const-string v0, "SyncFolder"

    const-string v1, "Folder (downSync)"

    invoke-static {v0, v1}, Lc3/p;->m(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lv2/b;->a:Lx2/e;

    invoke-virtual {v0}, Lx2/d;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "downSync"

    invoke-static {v0, v1}, Lc3/p;->t(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Lv2/b;->d()Le1/f;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lv2/b;->x(Le1/f;)V

    iget-object v2, p0, Lv2/b;->a:Lx2/e;

    invoke-virtual {v2}, Lx2/d;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lc3/p;->t(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lv2/b;->a:Lx2/e;

    invoke-virtual {v0}, Le1/f;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lx2/e;->y(Ljava/lang/String;)V

    return-void
.end method

.method public final d()Le1/f;
    .locals 5

    invoke-virtual {p0}, Lv2/b;->b()V

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lq2/b;

    iget-object v2, p0, Lv2/b;->a:Lx2/e;

    invoke-virtual {v2}, Lx2/e;->p()La2/g$a;

    move-result-object v2

    iget-object v3, p0, Lv2/b;->a:Lx2/e;

    invoke-virtual {v3}, Lx2/d;->a()Landroid/content/Context;

    move-result-object v3

    invoke-static {}, Lx2/c;->k()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, v0}, Lq2/b;-><init>(La2/g$a;Landroid/content/Context;Ljava/lang/String;La2/g$b;)V

    invoke-virtual {v1}, Lq2/b;->c()Le1/f;

    move-result-object v1
    :try_end_0
    .catch Ls0/c; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ls0/c;->d()I

    move-result v2

    const/16 v3, 0x193

    if-ne v2, v3, :cond_2

    iget-object v1, p0, Lv2/b;->b:Lx2/g;

    invoke-virtual {v1}, Lx2/g;->c()V

    new-instance v1, Lq2/b;

    iget-object v2, p0, Lv2/b;->a:Lx2/e;

    invoke-virtual {v2}, Lx2/e;->p()La2/g$a;

    move-result-object v2

    iget-object v3, p0, Lv2/b;->a:Lx2/e;

    invoke-virtual {v3}, Lx2/d;->a()Landroid/content/Context;

    move-result-object v3

    invoke-static {}, Lx2/c;->k()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, v0}, Lq2/b;-><init>(La2/g$a;Landroid/content/Context;Ljava/lang/String;La2/g$b;)V

    invoke-virtual {v1}, Lq2/b;->c()Le1/f;

    move-result-object v1

    :goto_0
    invoke-virtual {v1}, Le1/f;->b()Le1/f$a;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v2, "SyncFolder"

    const-string v3, "getFolderChangeFromServer() : None"

    invoke-static {v2, v3}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lc3/p;->p()Lc3/p$c;

    move-result-object v2

    const-string v3, "No server folder change"

    invoke-virtual {v2, v3}, Lc3/p$c;->c(Ljava/lang/String;)Lc3/p$c;

    move-result-object v2

    iget-object v3, p0, Lv2/b;->a:Lx2/e;

    invoke-virtual {v3}, Lx2/d;->a()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lc3/p$c;->m(Landroid/content/Context;)V

    invoke-virtual {v1}, Le1/f;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lv2/b;->a:Lx2/e;

    invoke-virtual {v1}, Le1/f;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lx2/e;->y(Ljava/lang/String;)V

    :cond_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lv2/b;->a:Lx2/e;

    invoke-virtual {v0}, Lx2/e;->u()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-object v1

    :cond_2
    throw v1
.end method

.method public final e(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;"
        }
    .end annotation

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;

    iget-object v2, v0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->uUid:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v0

    :cond_2
    return-object v1
.end method

.method public final f(Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;
    .locals 20

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->state:Ljava/lang/String;

    const-string v2, "normal"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    move v14, v1

    iget-object v1, v0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->parentFolderNodeId:Ljava/lang/String;

    invoke-static {v1, v14}, Lcom/samsung/android/app/notes/sync/db/h;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->parentFolderNodeId:Ljava/lang/String;

    move-object/from16 v1, p0

    iget-object v2, v1, Lv2/b;->a:Lx2/e;

    invoke-virtual {v2}, Lx2/e;->s()Lcom/samsung/android/app/notes/sync/db/i;

    move-result-object v2

    iget-object v3, v0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->uUid:Ljava/lang/String;

    iget-object v4, v0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->parentFolderNodeId:Ljava/lang/String;

    iget-wide v5, v0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->syncModifiedTime:J

    iget-wide v7, v0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->createdTime:J

    iget-wide v9, v0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->lastModifiedTime:J

    iget-wide v11, v0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->recyclerBinMovedTime:J

    iget-object v13, v0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->name:Ljava/lang/String;

    const/4 v15, 0x0

    iget-object v15, v0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->restorePath:Ljava/lang/String;

    move-object/from16 v16, v15

    iget v15, v0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->isSyncWithMS:I

    move/from16 v17, v15

    iget v15, v0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->displayNameColor:I

    move/from16 v18, v15

    iget v0, v0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->reorder:I

    move/from16 v19, v0

    const/4 v15, 0x0

    invoke-virtual/range {v2 .. v19}, Lcom/samsung/android/app/notes/sync/db/i;->c(Ljava/lang/String;Ljava/lang/String;JJJJLjava/lang/String;IILjava/lang/String;III)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;

    move-result-object v0

    return-object v0
.end method

.method public final g(Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/HashMap;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;",
            ">;",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncCategoryTreeInfo;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/app/notes/sync/db/a;

    iget-object v1, p0, Lv2/b;->a:Lx2/e;

    invoke-virtual {v1}, Lx2/d;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p5}, Lcom/samsung/android/app/notes/sync/db/a;-><init>(Landroid/content/Context;Ljava/util/Map;)V

    iget-object p5, p1, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->uUid:Ljava/lang/String;

    invoke-virtual {v0, p5}, Lcom/samsung/android/app/notes/sync/db/g;->n(Ljava/lang/String;)J

    move-result-wide v1

    iget-wide v3, p1, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->syncModifiedTime:J

    cmp-long p5, v3, v1

    const/4 v3, 0x0

    const-string v4, " is latest"

    const-string v5, "deleted"

    const-string v6, "SyncFolder"

    if-lez p5, :cond_5

    iget-object p5, p1, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->state:Ljava/lang/String;

    invoke-virtual {v5, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    const-wide/16 v7, -0x1

    const-string v0, "handleEachFolderDuringDownSync() : server folder "

    if-nez p5, :cond_2

    iget-object p4, p1, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->state:Ljava/lang/String;

    const-string/jumbo p5, "trashed"

    invoke-virtual {p5, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_0

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p5, p1, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->uUid:Ljava/lang/String;

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, " is latest and trashed"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p5, p1, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->uUid:Ljava/lang/String;

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v6, p4}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    cmp-long p4, v1, v7

    if-nez p4, :cond_1

    invoke-static {p1}, Lcom/samsung/android/app/notes/sync/db/h;->c(Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1}, Lv2/b;->f(Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    iget-object p2, p0, Lv2/b;->d:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_2
    cmp-long p2, v1, v7

    if-eqz p2, :cond_4

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p5, p1, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->uUid:Ljava/lang/String;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, " is deleted"

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v6, p2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p1, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->uUid:Ljava/lang/String;

    sget-object p5, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->SCREEN_OFF_MEMO:Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;

    invoke-virtual {p5}, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->getUuid()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p0, p1}, Lv2/b;->f(Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;

    move-result-object p1

    sget-object p2, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->UNCATEGORIZED:Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->getUuid()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->setParentUuid(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getServerTimeStamp()Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p4

    const-wide/16 v0, 0x1

    add-long/2addr p4, v0

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->setServerTimeStamp(Ljava/lang/Long;)V

    invoke-virtual {p1, v3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->setIsDeleted(I)V

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_3
    :goto_2
    iget-object p2, p1, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->uUid:Ljava/lang/String;

    invoke-interface {p4, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    iget-object p2, p0, Lv2/b;->a:Lx2/e;

    invoke-virtual {p2}, Lx2/e;->t()Ljava/util/HashMap;

    move-result-object p2

    iget-object p3, p1, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->uUid:Ljava/lang/String;

    invoke-virtual {p2, p3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    :cond_5
    const-string p2, "handleEachFolderDuringDownSync() : local folder "

    const p3, 0xf423f

    const/4 v1, -0x1

    if-gez p5, :cond_7

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p1, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->uUid:Ljava/lang/String;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v6, p2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p1, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->uUid:Ljava/lang/String;

    invoke-virtual {v0, p2}, Lcom/samsung/android/app/notes/sync/db/g;->d(Ljava/lang/String;)I

    move-result p2

    if-ne p2, v1, :cond_6

    iget p2, p1, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->displayNameColor:I

    if-eq p2, v1, :cond_6

    iget-object p2, p0, Lv2/b;->a:Lx2/e;

    invoke-virtual {p2}, Lx2/e;->s()Lcom/samsung/android/app/notes/sync/db/i;

    move-result-object p2

    iget-object p4, p1, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->uUid:Ljava/lang/String;

    iget p5, p1, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->displayNameColor:I

    invoke-virtual {p2, p4, p5}, Lcom/samsung/android/app/notes/sync/db/i;->i(Ljava/lang/String;I)V

    :cond_6
    iget-object p2, p1, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->uUid:Ljava/lang/String;

    invoke-virtual {v0, p2}, Lcom/samsung/android/app/notes/sync/db/g;->m(Ljava/lang/String;)I

    move-result p2

    if-ne p2, p3, :cond_c

    iget p2, p1, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->reorder:I

    if-eq p2, p3, :cond_c

    iget-object p2, p0, Lv2/b;->a:Lx2/e;

    invoke-virtual {p2}, Lx2/e;->s()Lcom/samsung/android/app/notes/sync/db/i;

    move-result-object p2

    iget-object p3, p1, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->uUid:Ljava/lang/String;

    iget p1, p1, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->reorder:I

    invoke-virtual {p2, p3, p1}, Lcom/samsung/android/app/notes/sync/db/i;->l(Ljava/lang/String;I)V

    goto :goto_3

    :cond_7
    iget-object p5, p1, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->uUid:Ljava/lang/String;

    invoke-virtual {v0, p5}, Lcom/samsung/android/app/notes/sync/db/g;->d(Ljava/lang/String;)I

    move-result p5

    if-ne p5, v1, :cond_8

    iget p5, p1, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->displayNameColor:I

    if-eq p5, v1, :cond_8

    iget-object p5, p0, Lv2/b;->a:Lx2/e;

    invoke-virtual {p5}, Lx2/e;->s()Lcom/samsung/android/app/notes/sync/db/i;

    move-result-object p5

    iget-object v1, p1, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->uUid:Ljava/lang/String;

    iget v2, p1, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->displayNameColor:I

    invoke-virtual {p5, v1, v2}, Lcom/samsung/android/app/notes/sync/db/i;->i(Ljava/lang/String;I)V

    :cond_8
    iget-object p5, p1, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->uUid:Ljava/lang/String;

    invoke-virtual {v0, p5}, Lcom/samsung/android/app/notes/sync/db/g;->m(Ljava/lang/String;)I

    move-result p5

    if-ne p5, p3, :cond_9

    iget p5, p1, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->reorder:I

    if-eq p5, p3, :cond_9

    iget-object p3, p0, Lv2/b;->a:Lx2/e;

    invoke-virtual {p3}, Lx2/e;->s()Lcom/samsung/android/app/notes/sync/db/i;

    move-result-object p3

    iget-object p5, p1, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->uUid:Ljava/lang/String;

    iget v1, p1, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->reorder:I

    invoke-virtual {p3, p5, v1}, Lcom/samsung/android/app/notes/sync/db/i;->l(Ljava/lang/String;I)V

    :cond_9
    iget-object p3, p1, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->uUid:Ljava/lang/String;

    invoke-virtual {v0, p3}, Lcom/samsung/android/app/notes/sync/db/g;->e(Ljava/lang/String;)I

    move-result p3

    if-eqz p3, :cond_a

    iget-object p3, p0, Lv2/b;->a:Lx2/e;

    invoke-virtual {p3}, Lx2/e;->s()Lcom/samsung/android/app/notes/sync/db/i;

    move-result-object p3

    iget-object p5, p1, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->uUid:Ljava/lang/String;

    invoke-virtual {p3, p5, v3}, Lcom/samsung/android/app/notes/sync/db/i;->j(Ljava/lang/String;I)V

    :cond_a
    iget-object p3, p1, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->state:Ljava/lang/String;

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_c

    iget-object p3, p1, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->uUid:Ljava/lang/String;

    invoke-virtual {v0, p3}, Lcom/samsung/android/app/notes/sync/db/g;->c(Ljava/lang/String;)I

    move-result p3

    const/4 p5, 0x1

    if-ne p3, p5, :cond_b

    goto/16 :goto_2

    :cond_b
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->uUid:Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not deleted"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    :goto_3
    return-void
.end method

.method public final h(Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;)V
    .locals 7

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;

    iget-object v1, p0, Lv2/b;->a:Lx2/e;

    invoke-virtual {v1}, Lx2/d;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;-><init>(Landroid/content/Context;)V

    iget-object v1, p1, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->uUid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->getDocSyncEntry(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/DocSyncEntry;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->state:Ljava/lang/String;

    const-string v1, "deleted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    iget-object v0, p0, Lv2/b;->a:Lx2/e;

    invoke-virtual {v0}, Lx2/e;->t()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p1, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->uUid:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lv2/b;->a:Lx2/e;

    invoke-virtual {v0}, Lx2/e;->t()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p1, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->uUid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lv2/b;->n(Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/DocSyncEntry;)Z

    move-result v1

    const-string v2, "SyncFolder"

    if-eqz v1, :cond_3

    iget-object v0, p0, Lv2/b;->a:Lx2/e;

    invoke-virtual {v0}, Lx2/e;->t()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p1, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->uUid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lv2/b;->a:Lx2/e;

    invoke-virtual {v0}, Lx2/e;->t()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p1, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->uUid:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleEachNoteDuringDownSync() : pass old note item, UUID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->uUid:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    iget-wide v3, p1, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->syncModifiedTime:J

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/DocSyncEntry;->getCategoryServerTimeStamp()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-lez v1, :cond_5

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/DocSyncEntry;->getServerTimestamp()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-lez v1, :cond_4

    invoke-virtual {p0, p1, v0}, Lv2/b;->k(Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/DocSyncEntry;)V

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleEachNoteDuringDownSync() : Repair the FolderServerTimestamp of note "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->uUid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lv2/b;->b:Lx2/g;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->uUid:Ljava/lang/String;

    invoke-virtual {v0, p1, v5, v6}, Lx2/g;->s(Ljava/lang/String;J)V

    goto :goto_1

    :cond_5
    if-gez v1, :cond_6

    invoke-virtual {p0, v0}, Lv2/b;->j(Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/DocSyncEntry;)V

    goto :goto_1

    :cond_6
    invoke-virtual {p0, v0}, Lv2/b;->l(Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/DocSyncEntry;)V

    :cond_7
    :goto_1
    return-void
.end method

.method public final i(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;",
            ">;",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lv2/b;->a:Lx2/e;

    invoke-virtual {v0}, Lx2/e;->s()Lcom/samsung/android/app/notes/sync/db/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/notes/sync/db/i;->a(Ljava/util/List;)V

    iget-object v0, p0, Lv2/b;->a:Lx2/e;

    invoke-virtual {v0}, Lx2/e;->s()Lcom/samsung/android/app/notes/sync/db/i;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/samsung/android/app/notes/sync/db/i;->m(Ljava/util/List;)V

    iget-object v0, p0, Lv2/b;->a:Lx2/e;

    invoke-virtual {v0}, Lx2/e;->s()Lcom/samsung/android/app/notes/sync/db/i;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/samsung/android/app/notes/sync/db/i;->b(Ljava/util/List;)V

    iget-object v0, p0, Lv2/b;->a:Lx2/e;

    invoke-virtual {v0}, Lx2/e;->s()Lcom/samsung/android/app/notes/sync/db/i;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/samsung/android/app/notes/sync/db/i;->e(Ljava/util/List;)V

    iget-object p3, p0, Lv2/b;->a:Lx2/e;

    invoke-virtual {p3}, Lx2/e;->s()Lcom/samsung/android/app/notes/sync/db/i;

    move-result-object p3

    iget-object v0, p0, Lv2/b;->d:Ljava/util/List;

    invoke-virtual {p3, v0}, Lcom/samsung/android/app/notes/sync/db/i;->f(Ljava/util/List;)V

    iget-object p3, p0, Lv2/b;->a:Lx2/e;

    invoke-virtual {p3}, Lx2/e;->s()Lcom/samsung/android/app/notes/sync/db/i;

    move-result-object p3

    iget-object v0, p0, Lv2/b;->d:Ljava/util/List;

    invoke-virtual {p3, v0}, Lcom/samsung/android/app/notes/sync/db/i;->n(Ljava/util/List;)V

    invoke-virtual {p0, p1}, Lv2/b;->r(Ljava/util/List;)V

    invoke-virtual {p0, p2}, Lv2/b;->r(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method public final j(Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/DocSyncEntry;)V
    .locals 4

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/DocSyncEntry;->getCategoryUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/DocSyncEntry;->getUuid()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleEachNoteDuringDownSync() : The parent folder "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " of the local note "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is latest"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SyncFolder"

    invoke-static {v3, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lv2/b;->b:Lx2/g;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/DocSyncEntry;->getIsDeleted()I

    move-result p1

    invoke-virtual {v2, v1, p1, v0}, Lx2/g;->l(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public final k(Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/DocSyncEntry;)V
    .locals 7

    iget-wide v0, p1, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->syncModifiedTime:J

    iget-object v2, p1, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->state:Ljava/lang/String;

    const-string v3, "deleted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "SyncFolder"

    if-eqz v2, :cond_0

    new-instance p2, Lw2/e;

    iget-object v2, p0, Lv2/b;->a:Lx2/e;

    iget-object v4, p0, Lv2/b;->b:Lx2/g;

    iget-object v5, p0, Lv2/b;->c:Lp2/a;

    iget-object v6, p1, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->uUid:Ljava/lang/String;

    invoke-direct {p2, v2, v4, v5, v6}, Lw2/e;-><init>(Lx2/e;Lx2/g;Lp2/a;Ljava/lang/String;)V

    invoke-virtual {p2, v3, v0, v1}, Lw2/e;->a(Ljava/lang/String;J)V

    iget-object p2, p0, Lv2/b;->a:Lx2/e;

    invoke-virtual {p2}, Lx2/e;->v()Ljava/util/List;

    move-result-object p2

    iget-wide v0, p1, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->syncModifiedTime:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/DocSyncEntry;->getIsDeleted()I

    move-result p2

    const/4 v0, 0x1

    const-string/jumbo v1, "trashed"

    const-string v2, "handleEachNoteDuringDownSync() : local note "

    if-ne p2, v0, :cond_2

    iget-object p2, p1, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->state:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->uUid:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " will be trashed and set to "

    goto :goto_0

    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->uUid:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " will be set to "

    :goto_0
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->parentFolderNodeId:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lv2/b;->a:Lx2/e;

    invoke-virtual {p2}, Lx2/e;->w()Lcom/samsung/android/app/notes/sync/db/t;

    move-result-object p2

    iget-object v0, p1, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->uUid:Ljava/lang/String;

    const-string v1, "DeletedButWillBeUpdated"

    invoke-virtual {p2, v0, v1}, Lcom/samsung/android/app/notes/sync/db/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lv2/b;->a:Lx2/e;

    invoke-virtual {p2}, Lx2/e;->t()Ljava/util/HashMap;

    move-result-object p2

    iget-object v0, p1, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->uUid:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_4

    iget-object p2, p0, Lv2/b;->a:Lx2/e;

    invoke-virtual {p2}, Lx2/e;->t()Ljava/util/HashMap;

    move-result-object p2

    iget-object v0, p1, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->uUid:Ljava/lang/String;

    invoke-virtual {p2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    iget-object p2, p1, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->state:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->uUid:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is trashed and set to "

    goto :goto_1

    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->uUid:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is set to "

    :goto_1
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->parentFolderNodeId:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lv2/b;->z(Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;Z)V

    :cond_4
    :goto_2
    return-void
.end method

.method public final l(Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/DocSyncEntry;)V
    .locals 4

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/DocSyncEntry;->getCategoryIsDirty()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lv2/b;->a:Lx2/e;

    invoke-virtual {v0}, Lx2/e;->w()Lcom/samsung/android/app/notes/sync/db/t;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/DocSyncEntry;->getUuid()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/app/notes/sync/db/t;->p(Ljava/lang/String;I)V

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/DocSyncEntry;->getIsDirty()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/DocSyncEntry;->getIsDeleted()I

    move-result v0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lv2/b;->a:Lx2/e;

    invoke-virtual {v0}, Lx2/e;->w()Lcom/samsung/android/app/notes/sync/db/t;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/DocSyncEntry;->getUuid()Ljava/lang/String;

    move-result-object p1

    const-string v1, "handleSameTimeNoteItems"

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/app/notes/sync/db/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final m(Ls0/c;)V
    .locals 6

    iget-object v0, p0, Lv2/b;->a:Lx2/e;

    invoke-virtual {v0}, Lx2/d;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lc3/p;->k(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lv2/b;->a:Lx2/e;

    invoke-virtual {v0}, Lx2/d;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lc3/p;->v(Landroid/content/Context;Ljava/lang/Exception;)V

    :cond_0
    invoke-virtual {p1}, Ls0/c;->a()I

    move-result v0

    const/16 v1, 0x147

    const-string v2, "handleSyncError: "

    const-string v3, "SyncFolder"

    if-ne v0, v1, :cond_1

    invoke-static {v3, v2, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->ef(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :cond_1
    invoke-virtual {p1}, Ls0/c;->a()I

    move-result v0

    const/16 v1, 0x146

    if-ne v0, v1, :cond_2

    invoke-static {v3, v2, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :cond_2
    invoke-virtual {p1}, Ls0/c;->a()I

    move-result v0

    const/16 v1, 0x13b

    if-ne v0, v1, :cond_6

    invoke-virtual {p1}, Ls0/c;->d()I

    move-result v0

    const/16 v1, 0x190

    const-string v2, "eyJ2ZXJzaW9uIjowLCJlbmNyeXB0ZWRHdWlkIjoiIiwicmVxdWVzdFRpbWVTdGFtcCI6MCwibW9kaWZpZWRUaW1lIjowLCJhcHBWZXJzaW9uIjoiMCIsInNka1ZlcnNpb24iOiIwIiwicHVycG9zZSI6IklOSVRJQUwiLCJ0eXBlIjoiRk9MREVSIn0="

    const-string v4, ", msg = "

    const-string v5, "handle Server error, statusCode = "

    if-ne v0, v1, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ls0/c;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->ef(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lv2/b;->b:Lx2/g;

    invoke-virtual {p1}, Lx2/g;->t()V

    :goto_0
    iget-object p1, p0, Lv2/b;->a:Lx2/e;

    invoke-virtual {p1, v2}, Lx2/e;->y(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Ls0/c;->d()I

    move-result v0

    const/16 v1, 0x195

    if-ne v0, v1, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ls0/c;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->ef(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Ls0/c;->d()I

    move-result v0

    const/16 v1, 0x199

    if-ne v0, v1, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ls0/c;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->ef(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :goto_1
    return-void

    :cond_5
    throw p1

    :cond_6
    throw p1
.end method

.method public final n(Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/DocSyncEntry;)Z
    .locals 1
    .param p1    # Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/DocSyncEntry;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/DocSyncEntry;->getFilePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ".sdoc"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public o()Z
    .locals 9

    new-instance v0, Lcom/samsung/android/app/notes/sync/db/g;

    iget-object v1, p0, Lv2/b;->a:Lx2/e;

    invoke-virtual {v1}, Lx2/d;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/notes/sync/db/g;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/notes/sync/db/g;->p(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v1

    iget-object v3, p0, Lv2/b;->a:Lx2/e;

    invoke-virtual {v3}, Lx2/e;->q()Lcom/samsung/android/app/notes/sync/db/f;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/app/notes/sync/db/f;->e()I

    move-result v3

    const/4 v4, 0x0

    if-lez v3, :cond_0

    move v5, v1

    goto :goto_0

    :cond_0
    move v5, v4

    :goto_0
    invoke-static {}, Lc3/p;->p()Lc3/p$c;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "local dirty folder = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " , dirty note = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lc3/p$c;->c(Ljava/lang/String;)Lc3/p$c;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lc3/p$c;->b(Ljava/lang/String;)Lc3/p$c;

    move-result-object v6

    iget-object v7, p0, Lv2/b;->a:Lx2/e;

    invoke-virtual {v7}, Lx2/d;->a()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v6, v7}, Lc3/p$c;->m(Landroid/content/Context;)V

    or-int/2addr v2, v5

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isLocalChanged() : folder = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " , note = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SyncFolder"

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1
    return v4
.end method

.method public final p()Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/samsung/android/app/notes/sync/db/g;

    iget-object v2, p0, Lv2/b;->a:Lx2/e;

    invoke-virtual {v2}, Lx2/d;->a()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/app/notes/sync/db/g;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/samsung/android/app/notes/sync/db/g;->i()Ljava/util/Map;

    move-result-object v8

    iget-object v1, p0, Lv2/b;->a:Lx2/e;

    invoke-virtual {v1}, Lx2/e;->q()Lcom/samsung/android/app/notes/sync/db/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/notes/sync/db/f;->g()Ljava/util/ArrayList;

    move-result-object v9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "makeFolderNodeList() : folder = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " , note = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SyncFolder"

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;

    iget-wide v4, v1, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->syncModifiedTime:J

    iget-object v6, v1, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->parentFolderNodeId:Ljava/lang/String;

    move-object v1, p0

    move-object v2, v8

    move-object v3, v7

    invoke-virtual/range {v1 .. v6}, Lv2/b;->a(Ljava/util/Map;Ljava/util/ArrayList;JLjava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;

    iget-wide v4, v1, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->syncModifiedTime:J

    iget-object v6, v1, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->parentFolderNodeId:Ljava/lang/String;

    move-object v1, p0

    move-object v2, v8

    move-object v3, v7

    invoke-virtual/range {v1 .. v6}, Lv2/b;->a(Ljava/util/Map;Ljava/util/ArrayList;JLjava/lang/String;)V

    goto :goto_2

    :cond_2
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v7
.end method

.method public q()Z
    .locals 3

    iget-object v0, p0, Lv2/b;->a:Lx2/e;

    invoke-virtual {v0}, Lx2/d;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Start SyncFolder"

    invoke-static {v0, v1}, Lc3/p;->s(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lv2/b;->b:Lx2/g;

    iget-object v1, p0, Lv2/b;->c:Lp2/a;

    const-string v2, "downSyncServerChanges"

    invoke-virtual {v0, v1, v2}, Lx2/g;->h(Lp2/a;Ljava/lang/String;)V

    invoke-virtual {p0}, Lv2/b;->s()V

    invoke-virtual {p0}, Lv2/b;->c()V

    iget-object v0, p0, Lv2/b;->b:Lx2/g;

    iget-object v1, p0, Lv2/b;->c:Lp2/a;

    const-string v2, "downSyncServerChanges!"

    invoke-virtual {v0, v1, v2}, Lx2/g;->h(Lp2/a;Ljava/lang/String;)V

    invoke-virtual {p0}, Lv2/b;->u()V

    invoke-virtual {p0}, Lv2/b;->t()V

    invoke-virtual {p0}, Lv2/b;->w()V

    iget-object v0, p0, Lv2/b;->a:Lx2/e;

    invoke-virtual {v0}, Lx2/d;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Finish SyncFolder"

    invoke-static {v0, v1}, Lc3/p;->s(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public final r(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lv2/b;->a:Lx2/e;

    invoke-virtual {v0}, Lx2/e;->s()Lcom/samsung/android/app/notes/sync/db/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/notes/sync/db/i;->d(Ljava/util/List;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p0, p1}, Lv2/b;->A(Ljava/util/HashMap;)V

    return-void
.end method

.method public final s()V
    .locals 6

    invoke-static {}, Lx2/c;->o()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v0

    invoke-virtual {v0}, Lx/e;->m()Lb0/b;

    move-result-object v0

    iget-object v1, p0, Lv2/b;->a:Lx2/e;

    invoke-virtual {v1}, Lx2/d;->a()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lb0/b;->getUUIDList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    new-instance v1, Lcom/samsung/android/app/notes/sync/db/p;

    iget-object v2, p0, Lv2/b;->a:Lx2/e;

    invoke-virtual {v2}, Lx2/d;->a()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/app/notes/sync/db/p;-><init>(Landroid/content/Context;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Lcom/samsung/android/app/notes/sync/db/o;

    iget-object v4, p0, Lv2/b;->a:Lx2/e;

    invoke-virtual {v4}, Lx2/d;->a()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/samsung/android/app/notes/sync/db/o;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/samsung/android/app/notes/sync/db/o;->b()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UUID_UNCATEGORIZED"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "repairOldNote() : uuid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "SyncFolder"

    invoke-static {v5, v3}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v4}, Lcom/samsung/android/app/notes/sync/db/p;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    invoke-static {v0}, Lx2/c;->E(Z)V

    :cond_2
    return-void
.end method

.method public final t()V
    .locals 6

    invoke-static {}, Lx2/c;->p()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/samsung/android/app/notes/sync/db/f;

    iget-object v1, p0, Lv2/b;->a:Lx2/e;

    invoke-virtual {v1}, Lx2/d;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/notes/sync/db/f;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/db/f;->A()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/base/common/util/UUIDUtils;->isCoeditUuid(Ljava/lang/String;)Z

    move-result v2

    const-string v3, " to "

    const-string v4, "repairSharedNote() : uuid = "

    const-string v5, "SyncFolder"

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "coedit:///"

    goto :goto_1

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "shared:///"

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lv2/b;->a:Lx2/e;

    invoke-virtual {v2}, Lx2/e;->w()Lcom/samsung/android/app/notes/sync/db/t;

    move-result-object v2

    invoke-virtual {v2, v1, v3}, Lcom/samsung/android/app/notes/sync/db/t;->n(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    invoke-static {v0}, Lx2/c;->F(Z)V

    :cond_2
    return-void
.end method

.method public final u()V
    .locals 3

    invoke-static {}, Lx2/c;->q()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/samsung/android/app/notes/sync/db/g;

    iget-object v1, p0, Lv2/b;->a:Lx2/e;

    invoke-virtual {v1}, Lx2/d;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/notes/sync/db/g;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/db/g;->q()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "repairTrashedFolders() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SyncFolder"

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/android/app/notes/sync/db/i;

    iget-object v2, p0, Lv2/b;->a:Lx2/e;

    invoke-virtual {v2}, Lx2/d;->a()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/app/notes/sync/db/i;-><init>(Landroid/content/Context;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/notes/sync/db/i;->h(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Lx2/c;->G(Z)V

    :cond_1
    return-void
.end method

.method public final v(Ljava/util/ArrayList;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-static {}, Lx2/c;->r()Z

    move-result v1

    if-nez v1, :cond_4

    new-instance v1, Lcom/samsung/android/app/notes/sync/db/f;

    iget-object v2, v0, Lv2/b;->a:Lx2/e;

    invoke-virtual {v2}, Lx2/d;->a()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/app/notes/sync/db/f;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/samsung/android/app/notes/sync/db/f;->o()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    new-instance v2, Lcom/samsung/android/app/notes/sync/db/g;

    iget-object v3, v0, Lv2/b;->a:Lx2/e;

    invoke-virtual {v3}, Lx2/d;->a()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/samsung/android/app/notes/sync/db/g;-><init>(Landroid/content/Context;)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Ljava/lang/String;

    new-instance v3, Lcom/samsung/android/app/notes/sync/db/s;

    iget-object v4, v0, Lv2/b;->a:Lx2/e;

    invoke-virtual {v4}, Lx2/d;->a()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, v5}, Lcom/samsung/android/app/notes/sync/db/s;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/samsung/android/app/notes/sync/db/s;->o()I

    move-result v4

    const/4 v6, 0x2

    if-eq v4, v6, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Lcom/samsung/android/app/notes/sync/db/s;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/samsung/android/app/notes/sync/db/g;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_0

    :cond_2
    move-object/from16 v15, p1

    invoke-virtual {v0, v15, v4}, Lv2/b;->e(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, v4, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->state:Ljava/lang/String;

    const-string v6, "deleted"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "repairTrashedNote() : docUuid = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " to "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "uncategorized:///"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "SyncFolder"

    invoke-static {v6, v4}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v0, Lv2/b;->a:Lx2/e;

    invoke-virtual {v4}, Lx2/e;->w()Lcom/samsung/android/app/notes/sync/db/t;

    move-result-object v4

    sget-object v6, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->UNCATEGORIZED:Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;

    invoke-virtual {v6}, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->getUuid()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v3}, Lcom/samsung/android/app/notes/sync/db/s;->v()J

    move-result-wide v8

    invoke-virtual {v3}, Lcom/samsung/android/app/notes/sync/db/s;->l()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    const-string v14, "normal"

    const-string v3, ""

    move-object v15, v3

    invoke-virtual/range {v4 .. v15}, Lcom/samsung/android/app/notes/sync/db/t;->o(Ljava/lang/String;Ljava/lang/String;IJJJLjava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    invoke-static {v1}, Lx2/c;->H(Z)V

    :cond_4
    return-void
.end method

.method public final w()V
    .locals 10

    const-string v0, "SyncFolder"

    const-string v1, "Folder (upSync)"

    invoke-static {v0, v1}, Lc3/p;->m(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lv2/b;->a:Lx2/e;

    invoke-virtual {v1}, Lx2/d;->a()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "upSync"

    invoke-static {v1, v2}, Lc3/p;->t(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Lv2/b;->o()Z

    move-result v1

    const-string/jumbo v2, "updateFolders_res"

    const-string/jumbo v3, "upSyncLocalChanges() : fail to writeDbDump = "

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lv2/b;->p()Ljava/util/ArrayList;

    move-result-object v4

    new-instance v5, Le1/l;

    iget-object v6, p0, Lv2/b;->a:Lx2/e;

    invoke-direct {v5, v4, v6}, Le1/l;-><init>(Ljava/util/ArrayList;Lx2/e;)V

    new-instance v6, Lq2/c;

    iget-object v7, p0, Lv2/b;->a:Lx2/e;

    invoke-virtual {v7}, Lx2/e;->p()La2/g$a;

    move-result-object v7

    iget-object v8, p0, Lv2/b;->a:Lx2/e;

    invoke-virtual {v8}, Lx2/d;->a()Landroid/content/Context;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct {v6, v7, v8, v5, v9}, Lq2/c;-><init>(La2/g$a;Landroid/content/Context;Le1/l;La2/g$b;)V

    invoke-virtual {v6}, Lq2/c;->d()V

    invoke-virtual {p0, v4}, Lv2/b;->y(Ljava/util/ArrayList;)V

    goto :goto_0

    :catchall_0
    move-exception v4

    goto :goto_4

    :catch_0
    move-exception v4

    goto :goto_2

    :cond_0
    const-string/jumbo v4, "upSyncLocalChanges() : None"

    invoke-static {v0, v4}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-eqz v1, :cond_1

    :try_start_1
    iget-object v1, p0, Lv2/b;->a:Lx2/e;

    invoke-virtual {v1}, Lx2/d;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lc3/p;->u(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    :try_start_2
    instance-of v5, v4, Ls0/c;

    if-eqz v5, :cond_2

    check-cast v4, Ls0/c;

    invoke-virtual {p0, v4}, Lv2/b;->m(Ls0/c;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_1

    :try_start_3
    iget-object v1, p0, Lv2/b;->a:Lx2/e;

    invoke-virtual {v1}, Lx2/d;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lc3/p;->u(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catch_2
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    :cond_1
    :goto_3
    return-void

    :cond_2
    :try_start_4
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_4
    if-eqz v1, :cond_3

    :try_start_5
    iget-object v1, p0, Lv2/b;->a:Lx2/e;

    invoke-virtual {v1}, Lx2/d;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lc3/p;->u(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_5

    :catch_3
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_5
    throw v4
.end method

.method public final x(Le1/f;)V
    .locals 17

    move-object/from16 v7, p0

    const-string v8, "getFolderChanges_res"

    const-string/jumbo v9, "updateFoldersAndNotesDbWithFolderChange : fail to writeDbDump = "

    const-string v10, "SyncFolder"

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    invoke-virtual/range {p1 .. p1}, Le1/f;->f()V

    invoke-virtual/range {p1 .. p1}, Le1/f;->b()Le1/f$a;

    move-result-object v2

    iget-object v13, v2, Le1/f$a;->b:Ljava/util/ArrayList;

    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Lcom/samsung/android/app/notes/sync/db/g;

    iget-object v3, v7, Lv2/b;->a:Lx2/e;

    invoke-virtual {v3}, Lx2/d;->a()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/samsung/android/app/notes/sync/db/g;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/samsung/android/app/notes/sync/db/g;->f()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncCategoryTreeInfo;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncCategoryTreeInfo;->getUUID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    move/from16 v16, v1

    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;

    iget-object v1, v2, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->type:Ljava/lang/String;

    const-string v3, "folder"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/samsung/android/app/notes/sync/db/g;

    iget-object v3, v7, Lv2/b;->a:Lx2/e;

    invoke-virtual {v3}, Lx2/d;->a()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/samsung/android/app/notes/sync/db/g;-><init>(Landroid/content/Context;)V

    iget-object v3, v2, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->uUid:Ljava/lang/String;

    iget-object v4, v2, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->parentFolderNodeId:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/samsung/android/app/notes/sync/db/g;->t(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    move-object/from16 v1, p0

    move-object v3, v0

    move-object v4, v11

    move-object v5, v12

    move-object v6, v14

    invoke-virtual/range {v1 .. v6}, Lv2/b;->g(Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/HashMap;)V

    goto :goto_1

    :cond_2
    if-nez v16, :cond_3

    invoke-virtual {v7, v0, v11, v12}, Lv2/b;->i(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    const/16 v16, 0x1

    :cond_3
    invoke-virtual {v7, v2}, Lv2/b;->h(Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;)V

    iget-object v1, v7, Lv2/b;->a:Lx2/e;

    invoke-virtual {v1}, Lx2/e;->u()Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, v7, Lv2/b;->a:Lx2/e;

    invoke-virtual {v2}, Lx2/e;->t()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    goto :goto_1

    :cond_4
    if-nez v16, :cond_5

    invoke-virtual {v7, v0, v11, v12}, Lv2/b;->i(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    :cond_5
    invoke-virtual {v7, v13}, Lv2/b;->v(Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, v7, Lv2/b;->a:Lx2/e;

    invoke-virtual {v0}, Lx2/d;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v8}, Lc3/p;->u(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void

    :catchall_0
    move-exception v0

    move-object v1, v0

    :try_start_2
    iget-object v0, v7, Lv2/b;->a:Lx2/e;

    invoke-virtual {v0}, Lx2/d;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v8}, Lc3/p;->u(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    throw v1
.end method

.method public final y(Ljava/util/ArrayList;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/samsung/android/app/notes/sync/db/g;

    iget-object v2, p0, Lv2/b;->a:Lx2/e;

    invoke-virtual {v2}, Lx2/d;->a()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/app/notes/sync/db/g;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/notes/sync/db/g;->p(I)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lv2/b;->a:Lx2/e;

    invoke-virtual {v4}, Lx2/e;->q()Lcom/samsung/android/app/notes/sync/db/f;

    move-result-object v4

    invoke-virtual {v4, v2, v2}, Lcom/samsung/android/app/notes/sync/db/f;->r(IZ)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;

    iget-object v5, v4, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->type:Ljava/lang/String;

    const-string v6, "folder"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    iget-object v5, v4, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->uUid:Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, v4, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->state:Ljava/lang/String;

    const-string v7, "deleted"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v4, v4, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->uUid:Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v5, v4, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->uUid:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/samsung/android/app/notes/sync/db/g;->n(Ljava/lang/String;)J

    move-result-wide v7

    iget-wide v9, v4, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->syncModifiedTime:J

    cmp-long v5, v7, v9

    if-nez v5, :cond_0

    iget-object v5, p0, Lv2/b;->a:Lx2/e;

    invoke-virtual {v5}, Lx2/e;->s()Lcom/samsung/android/app/notes/sync/db/i;

    move-result-object v5

    iget-object v4, v4, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->uUid:Ljava/lang/String;

    invoke-virtual {v5, v4, v6}, Lcom/samsung/android/app/notes/sync/db/i;->j(Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    iget-object v5, v4, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->uUid:Ljava/lang/String;

    invoke-interface {v2, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Lcom/samsung/android/app/notes/sync/db/s;

    iget-object v7, p0, Lv2/b;->a:Lx2/e;

    invoke-virtual {v7}, Lx2/d;->a()Landroid/content/Context;

    move-result-object v7

    iget-object v8, v4, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->uUid:Ljava/lang/String;

    invoke-direct {v5, v7, v8}, Lcom/samsung/android/app/notes/sync/db/s;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/samsung/android/app/notes/sync/db/s;->h()J

    move-result-wide v7

    iget-wide v9, v4, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->syncModifiedTime:J

    cmp-long v5, v7, v9

    if-nez v5, :cond_0

    iget-object v5, p0, Lv2/b;->a:Lx2/e;

    invoke-virtual {v5}, Lx2/e;->w()Lcom/samsung/android/app/notes/sync/db/t;

    move-result-object v5

    iget-object v4, v4, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->uUid:Ljava/lang/String;

    invoke-virtual {v5, v4, v6}, Lcom/samsung/android/app/notes/sync/db/t;->p(Ljava/lang/String;I)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lv2/b;->a:Lx2/e;

    invoke-virtual {p1}, Lx2/e;->s()Lcom/samsung/android/app/notes/sync/db/i;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/notes/sync/db/i;->b(Ljava/util/List;)V

    return-void
.end method

.method public final z(Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;Z)V
    .locals 13

    iget-object v0, p0, Lv2/b;->a:Lx2/e;

    invoke-virtual {v0}, Lx2/e;->w()Lcom/samsung/android/app/notes/sync/db/t;

    move-result-object v1

    iget-object v2, p1, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->uUid:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->parentFolderNodeId:Ljava/lang/String;

    iget-wide v5, p1, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->syncModifiedTime:J

    iget-wide v7, p1, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->lastModifiedTime:J

    iget-wide v9, p1, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->recyclerBinMovedTime:J

    iget-object v11, p1, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->state:Ljava/lang/String;

    iget-object v12, p1, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->restorePath:Ljava/lang/String;

    move v4, p2

    invoke-virtual/range {v1 .. v12}, Lcom/samsung/android/app/notes/sync/db/t;->o(Ljava/lang/String;Ljava/lang/String;IJJJLjava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
