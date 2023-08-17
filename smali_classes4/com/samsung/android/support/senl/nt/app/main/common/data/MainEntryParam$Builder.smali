.class public Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mainEntryParam:Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam$Builder;->mainEntryParam:Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam$Builder;->mainEntryParam:Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;

    :cond_0
    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam$Builder;->mainEntryParam:Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;

    return-object v0
.end method

.method public setDeleted(I)Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam$Builder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam$Builder;->mainEntryParam:Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;->a(Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;I)V

    return-object p0
.end method

.method public setFilePath(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam$Builder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam$Builder;->mainEntryParam:Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;->c(Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;Ljava/lang/String;)V

    return-object p0
.end method

.method public setFolderUuid(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam$Builder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam$Builder;->mainEntryParam:Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;->d(Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;Ljava/lang/String;)V

    return-object p0
.end method

.method public setGuid(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam$Builder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam$Builder;->mainEntryParam:Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;->f(Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;Ljava/lang/String;)V

    return-object p0
.end method

.method public setLastModifiedAt(J)Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam$Builder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam$Builder;->mainEntryParam:Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;

    invoke-static {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;->g(Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;J)V

    return-object p0
.end method

.method public setLockType(I)Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam$Builder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam$Builder;->mainEntryParam:Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;->h(Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;I)V

    return-object p0
.end method

.method public setMainListEntry(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;)Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam$Builder;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam$Builder;->mainEntryParam:Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;->n(Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam$Builder;->mainEntryParam:Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getCategoryUuid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;->d(Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam$Builder;->mainEntryParam:Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;->c(Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam$Builder;->mainEntryParam:Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;->b(Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam$Builder;->mainEntryParam:Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getMdeGroupId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;->e(Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam$Builder;->mainEntryParam:Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getMdeSpaceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;->l(Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam$Builder;->mainEntryParam:Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getMdeOwnerId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;->i(Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam$Builder;->mainEntryParam:Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;->m(Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam$Builder;->mainEntryParam:Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getLastModifiedAt()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;->g(Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;J)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam$Builder;->mainEntryParam:Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->isSdoc()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;->k(Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam$Builder;->mainEntryParam:Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getIsDeleted()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;->a(Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam$Builder;->mainEntryParam:Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getIsLock()I

    move-result p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;->h(Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;I)V

    return-object p0
.end method

.method public setModeIndex(I)Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam$Builder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam$Builder;->mainEntryParam:Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;->setModeIndex(I)V

    return-object p0
.end method

.method public setRequestCode(I)Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam$Builder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam$Builder;->mainEntryParam:Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;->j(Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;I)V

    return-object p0
.end method

.method public setSdoc(Z)Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam$Builder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam$Builder;->mainEntryParam:Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;->k(Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;Z)V

    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam$Builder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam$Builder;->mainEntryParam:Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;->m(Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;Ljava/lang/String;)V

    return-object p0
.end method

.method public setToolType(I)Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam$Builder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam$Builder;->mainEntryParam:Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;->setToolType(I)V

    return-object p0
.end method

.method public setUuid(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam$Builder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam$Builder;->mainEntryParam:Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;->n(Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;Ljava/lang/String;)V

    return-object p0
.end method
