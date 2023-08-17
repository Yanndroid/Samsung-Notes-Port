.class public Le1/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lx2/e;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Lx2/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;",
            ">;",
            "Lx2/e;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le1/l;->a:Ljava/util/ArrayList;

    iput-object p2, p0, Le1/l;->b:Lx2/e;

    return-void
.end method


# virtual methods
.method public final a(Le1/o;)V
    .locals 6

    const-string v0, "node"

    :try_start_0
    iget-object v1, p0, Le1/l;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;

    invoke-virtual {p1, v0}, Le1/o;->y(Ljava/lang/String;)V

    const-string v3, "id"

    iget-object v4, v2, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->uUid:Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Le1/o;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "type"

    iget-object v4, v2, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->type:Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Le1/o;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "parentFolderNodeId"

    iget-object v4, v2, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->parentFolderNodeId:Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Le1/o;->k(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "syncModifiedTime"

    iget-wide v4, v2, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->syncModifiedTime:J

    invoke-virtual {p1, v3, v4, v5}, Le1/o;->j(Ljava/lang/String;J)V

    const-string v3, "createdTime"

    iget-wide v4, v2, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->createdTime:J

    invoke-virtual {p1, v3, v4, v5}, Le1/o;->j(Ljava/lang/String;J)V

    const-string v3, "lastModifiedTime"

    iget-wide v4, v2, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->lastModifiedTime:J

    invoke-virtual {p1, v3, v4, v5}, Le1/o;->j(Ljava/lang/String;J)V

    const-string v3, "name"

    iget-object v4, v2, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->name:Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Le1/o;->n(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "state"

    iget-object v4, v2, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->state:Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Le1/o;->k(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "restorePath"

    iget-object v4, v2, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->restorePath:Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Le1/o;->m(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "trashedTime"

    iget-wide v4, v2, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->recyclerBinMovedTime:J

    invoke-virtual {p1, v3, v4, v5}, Le1/o;->j(Ljava/lang/String;J)V

    const-string v3, "isSyncWithMS"

    iget v4, v2, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->isSyncWithMS:I

    invoke-virtual {p1, v3, v4}, Le1/o;->i(Ljava/lang/String;I)V

    const-string v3, "color"

    iget v4, v2, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->displayNameColor:I

    invoke-virtual {p1, v3, v4}, Le1/o;->i(Ljava/lang/String;I)V

    const-string v3, "order"

    iget v2, v2, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->reorder:I

    invoke-virtual {p1, v3, v2}, Le1/o;->i(Ljava/lang/String;I)V

    invoke-virtual {p1, v0}, Le1/o;->g(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "composeXmlForNode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UpdateFolderItem"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ls0/c;

    const/16 v1, 0x146

    invoke-direct {v0, v1, p1}, Ls0/c;-><init>(ILjava/lang/Throwable;)V

    throw v0
.end method

.method public b()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Le1/l;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method public c()J
    .locals 2

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Le1/l;->e(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Le1/l;->f(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Le1/l;->d(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public d(J)J
    .locals 4

    iget-object v0, p0, Le1/l;->b:Lx2/e;

    invoke-virtual {v0}, Lx2/e;->v()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-lez v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    goto :goto_0

    :cond_1
    return-wide p1
.end method

.method public e(J)J
    .locals 4

    iget-object v0, p0, Le1/l;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;

    iget-wide v1, v1, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->syncModifiedTime:J

    cmp-long v3, v1, p1

    if-lez v3, :cond_0

    move-wide p1, v1

    goto :goto_0

    :cond_1
    return-wide p1
.end method

.method public f(J)J
    .locals 4

    iget-object v0, p0, Le1/l;->b:Lx2/e;

    invoke-virtual {v0}, Lx2/e;->t()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;

    iget-wide v1, v1, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->syncModifiedTime:J

    cmp-long v3, v1, p1

    if-lez v3, :cond_0

    move-wide p1, v1

    goto :goto_0

    :cond_1
    return-wide p1
.end method

.method public g()Ljava/lang/String;
    .locals 6

    const-string v0, "nodeList"

    const-string v1, "FolderResource"

    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v2

    new-instance v3, Le1/p;

    invoke-direct {v3, v2}, Le1/p;-><init>(Lorg/xmlpull/v1/XmlSerializer;)V

    invoke-virtual {v3, v1}, Le1/o;->y(Ljava/lang/String;)V

    const-string v2, "syncModifiedTime"

    invoke-virtual {p0}, Le1/l;->c()J

    move-result-wide v4

    invoke-virtual {v3, v2, v4, v5}, Le1/o;->j(Ljava/lang/String;J)V

    invoke-virtual {v3, v0}, Le1/o;->y(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Le1/l;->a(Le1/o;)V

    invoke-virtual {v3, v0}, Le1/o;->g(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Le1/o;->g(Ljava/lang/String;)V

    invoke-virtual {v3}, Le1/o;->h()V

    invoke-virtual {v3}, Le1/o;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "toXml : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UpdateFolderItem"

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ls0/c;

    const/16 v2, 0x146

    invoke-direct {v1, v2, v0}, Ls0/c;-><init>(ILjava/lang/Throwable;)V

    throw v1
.end method
