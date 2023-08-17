.class public Lcom/samsung/android/support/senl/nt/model/utils/NotesDocumentSyncUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setDocumentEntitySyncSkipped(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;->getServerTimestamp()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide v2, 0x154f600fa47L

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-lez v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setKeepServerTimestamp(Z)V

    :cond_0
    invoke-virtual {p0, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setDirtySkipped(Z)V

    return-object p0
.end method
