.class public Lcom/samsung/android/support/senl/nt/app/main/drawer/model/TabletDrawerModel;
.super Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TabletDrawerModel"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;-><init>()V

    return-void
.end method


# virtual methods
.method public collectingDrawerData(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;)V
    .locals 2

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object v0

    const-string v1, "settings:///"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->collectingDrawerData(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;)V

    return-void
.end method

.method public updateFilterDrawer(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesDocumentCountEntry;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->mFolderDataMap:Ljava/util/Map;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->mDrawerDisplayDataList:Ljava/util/List;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "TabletDrawerModel"

    const-string v1, "updateFilterDrawer"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->initFilterDrawerDisplayList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->updateFilterPreDefineDrawerDisplayList(Ljava/util/Map;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->mDrawerDisplayDataList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->updateFolderInfoPreference(Ljava/util/Map;)V

    :cond_1
    :goto_0
    return-void
.end method
