.class public abstract Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/mode/ImportSNoteMode;
.super Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/mode/ImportFolderMode;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "ImportSNoteMode"


# instance fields
.field private mCheckedItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ld1/d;",
            ">;"
        }
    .end annotation
.end field

.field public mImportSnoteListener:Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;

.field private mSelectedItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ld1/d;",
            ">;"
        }
    .end annotation
.end field

.field public mSnoteImportListRequest:Lcom/samsung/android/app/notes/sync/importing/controllers/b;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/ImportFolderPresenterContract;Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/mode/ImportFolderMode$Contract;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/mode/ImportFolderMode;-><init>(Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/ImportFolderPresenterContract;Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/mode/ImportFolderMode$Contract;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/mode/ImportSNoteMode;->mSnoteImportListRequest:Lcom/samsung/android/app/notes/sync/importing/controllers/b;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/request/ImportRequestListener;

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/request/ImportHandler;

    new-instance v2, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/ImportSNoteResult;

    invoke-direct {v2, p1, p2}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/ImportSNoteResult;-><init>(Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/ImportFolderPresenterContract;Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/mode/ImportFolderMode$Contract;)V

    invoke-direct {v1, v2}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/request/ImportHandler;-><init>(Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/request/ImportResult;)V

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/request/ImportRequestListener;-><init>(Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/request/ImportHandler;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/mode/ImportSNoteMode;->initImportRequestListener(Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/request/ImportRequestListener;)V

    return-void
.end method

.method private addSelectedItem(Ld1/d;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/mode/ImportSNoteMode;->mSelectedItems:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private addSelectedItems(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ld1/d;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/mode/ImportSNoteMode;->mSelectedItems:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method private clearCheckedItem()V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/mode/ImportSNoteMode;->isCheckedItemEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/mode/ImportSNoteMode;->mCheckedItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method private onDuplicateFileCheck()V
    .locals 2

    const-string v0, "ImportSNoteMode"

    const-string v1, "onDuplicateFileCheck# "

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/mode/ImportSNoteMode;->startImportIfCheckedItemIsNothing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/mode/ImportSNoteMode;->mCheckedItems:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld1/d;

    invoke-virtual {v0}, Ld1/d;->F()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/mode/ImportFolderMode;->mPresenterContract:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/ImportFolderPresenterContract;

    invoke-virtual {v0}, Ld1/d;->f()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/ImportFolderPresenterContract;->showFileNameInUseDialog(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/mode/ImportSNoteMode;->addSelectedItem(Ld1/d;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/mode/ImportSNoteMode;->removeFirstCheckedItem()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/mode/ImportSNoteMode;->onDuplicateFileCheck()V

    :goto_0
    return-void
.end method

.method private removeFirstCheckedItem()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/mode/ImportSNoteMode;->isCheckedItemEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/mode/ImportSNoteMode;->mCheckedItems:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private removeFirstSelectedItem()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/mode/ImportSNoteMode;->isSelectedItemEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/mode/ImportSNoteMode;->mSelectedItems:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method public abstract getAbstractImportType(Ljava/util/List;)Ly0/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ld1/d;",
            ">;)",
            "Ly0/a;"
        }
    .end annotation
.end method

.method public getAppNameRes()I
    .locals 1

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->settings_import_downloading_dialog_snote:I

    return v0
.end method

.method public getImportItems(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/model/ImportFolderInfo;",
            ">;)",
            "Ljava/util/List<",
            "Ld1/d;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/model/ImportFolderInfo;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/model/ImportFolderInfo;->getItem()Ld1/d;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public initImportRequestListener(Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/request/ImportRequestListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/mode/ImportSNoteMode;->mImportSnoteListener:Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;

    return-void
.end method

.method public isCheckedItemEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/mode/ImportSNoteMode;->mCheckedItems:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isSelectedItemEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/mode/ImportSNoteMode;->mSelectedItems:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public onRenameDuplicateFile(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/mode/ImportFolderMode;->onRenameDuplicateFile(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/mode/ImportSNoteMode;->startImportIfCheckedItemIsNothing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/mode/ImportSNoteMode;->mCheckedItems:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/mode/ImportSNoteMode;->addSelectedItems(Ljava/util/List;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/mode/ImportSNoteMode;->clearCheckedItem()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/mode/ImportSNoteMode;->mCheckedItems:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ld1/d;

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/mode/ImportSNoteMode;->addSelectedItem(Ld1/d;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/mode/ImportSNoteMode;->removeFirstCheckedItem()V

    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/mode/ImportSNoteMode;->onDuplicateFileCheck()V

    return-void
.end method

.method public onReplaceDuplicateFile(Z)V
    .locals 2

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/mode/ImportFolderMode;->onReplaceDuplicateFile(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/mode/ImportSNoteMode;->startImportIfCheckedItemIsNothing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/mode/ImportSNoteMode;->mCheckedItems:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld1/d;

    invoke-virtual {v1, v0}, Ld1/d;->b0(Z)V

    invoke-direct {p0, v1}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/mode/ImportSNoteMode;->addSelectedItem(Ld1/d;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/mode/ImportSNoteMode;->clearCheckedItem()V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/mode/ImportSNoteMode;->mCheckedItems:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ld1/d;

    invoke-virtual {p1, v0}, Ld1/d;->b0(Z)V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/mode/ImportSNoteMode;->addSelectedItem(Ld1/d;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/mode/ImportSNoteMode;->removeFirstCheckedItem()V

    :goto_1
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/mode/ImportSNoteMode;->onDuplicateFileCheck()V

    return-void
.end method

.method public onSkipDuplicateFile(Z)V
    .locals 2

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/mode/ImportFolderMode;->onSkipDuplicateFile(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/mode/ImportSNoteMode;->startImportIfCheckedItemIsNothing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/mode/ImportSNoteMode;->mCheckedItems:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld1/d;

    invoke-virtual {v0}, Ld1/d;->F()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/mode/ImportSNoteMode;->addSelectedItem(Ld1/d;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/mode/ImportSNoteMode;->clearCheckedItem()V

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/mode/ImportSNoteMode;->removeFirstCheckedItem()V

    :goto_1
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/mode/ImportSNoteMode;->onDuplicateFileCheck()V

    return-void
.end method

.method public removeSelectedItem()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/mode/ImportFolderMode;->removeSelectedItem()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/mode/ImportSNoteMode;->removeFirstSelectedItem()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/mode/ImportSNoteMode;->removeFirstCheckedItem()V

    return-void
.end method

.method public setCheckedItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ld1/d;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/mode/ImportSNoteMode;->mCheckedItems:Ljava/util/List;

    return-void
.end method

.method public setSelectedItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ld1/d;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/mode/ImportSNoteMode;->mSelectedItems:Ljava/util/List;

    return-void
.end method

.method public startImport(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/model/ImportFolderInfo;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/mode/ImportSNoteMode;->getImportItems(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/mode/ImportSNoteMode;->startImportDirectly(Ljava/util/List;)V

    return-void
.end method

.method public startImportDirectly(Ljava/util/List;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ld1/d;",
            ">;)V"
        }
    .end annotation

    const-string v0, "ImportSNoteMode"

    const-string v1, "startImport()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/mode/ImportSNoteMode;->setCheckedItems(Ljava/util/List;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/mode/ImportSNoteMode;->setSelectedItems(Ljava/util/List;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/mode/ImportSNoteMode;->onDuplicateFileCheck()V

    return-void
.end method

.method public startImportIfCheckedItemIsNothing()Z
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/mode/ImportSNoteMode;->isCheckedItemEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/mode/ImportSNoteMode;->isSelectedItemEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/mode/ImportFolderMode;->mPresenterContract:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/ImportFolderPresenterContract;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/ImportFolderPresenterContract;->activityFinish()V

    return v1

    :cond_1
    invoke-static {}, Lx0/a;->a()Lx0/a;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/mode/ImportSNoteMode;->mSelectedItems:Ljava/util/List;

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/mode/ImportSNoteMode;->getAbstractImportType(Ljava/util/List;)Ly0/a;

    move-result-object v2

    invoke-virtual {v0, v2}, Lx0/a;->f(Ly0/a;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "action_import_notes"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/mode/ImportFolderMode;->mPresenterContract:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/ImportFolderPresenterContract;

    invoke-interface {v2}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/ImportFolderPresenterContract;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/app/common/util/NotesUtils;->backToNoteList(Landroid/app/Activity;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public unregisterImportListRequest()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/mode/ImportSNoteMode;->mSnoteImportListRequest:Lcom/samsung/android/app/notes/sync/importing/controllers/b;

    if-eqz v0, :cond_0

    const-string v0, "ImportSNoteMode"

    const-string v1, "unregisterImportListRequest# "

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/mode/ImportSNoteMode;->mSnoteImportListRequest:Lcom/samsung/android/app/notes/sync/importing/controllers/b;

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/importing/controllers/b;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/mode/ImportSNoteMode;->mSnoteImportListRequest:Lcom/samsung/android/app/notes/sync/importing/controllers/b;

    :cond_0
    return-void
.end method
