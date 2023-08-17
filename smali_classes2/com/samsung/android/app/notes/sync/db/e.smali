.class public Lcom/samsung/android/app/notes/sync/db/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/DocSyncEntry;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/DocSyncEntry;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/db/e;->a:Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/DocSyncEntry;

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/db/e;->a:Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/DocSyncEntry;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/DocSyncEntry;->getCategoryServerTimeStamp()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public b()I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/db/e;->a:Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/DocSyncEntry;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/DocSyncEntry;->getCategoryUuid()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "trash:///"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/db/e;->a:Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/DocSyncEntry;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/DocSyncEntry;->getIsDeleted()I

    move-result v0

    return v0

    :cond_0
    return v1
.end method

.method public c()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/db/e;->a:Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/DocSyncEntry;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/DocSyncEntry;->getIsFavorite()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/db/e;->a:Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/DocSyncEntry;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/DocSyncEntry;->getFilePath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public e()J
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/db/e;->a:Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/DocSyncEntry;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/DocSyncEntry;->getLastMappedAt()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public f()J
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/db/e;->a:Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/DocSyncEntry;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/DocSyncEntry;->getServerTimestamp()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public g()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/db/e;->a:Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/DocSyncEntry;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
