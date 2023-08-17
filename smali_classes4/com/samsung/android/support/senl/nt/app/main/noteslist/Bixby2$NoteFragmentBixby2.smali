.class public Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2$NoteFragmentBixby2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/notes/bixby/bixby2/contract/INoteFragmentBixby2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NoteFragmentBixby2"
.end annotation


# static fields
.field private static mInstance:Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2$NoteFragmentBixby2;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mNotesView:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;

.field private mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2$NoteFragmentBixby2;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2$NoteFragmentBixby2;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2$NoteFragmentBixby2;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2$NoteFragmentBixby2;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    return-object p0
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2$NoteFragmentBixby2;
    .locals 2

    const-class v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2$NoteFragmentBixby2;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2$NoteFragmentBixby2;->mInstance:Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2$NoteFragmentBixby2;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2$NoteFragmentBixby2;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2$NoteFragmentBixby2;-><init>()V

    sput-object v1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2$NoteFragmentBixby2;->mInstance:Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2$NoteFragmentBixby2;

    :cond_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2$NoteFragmentBixby2;->mInstance:Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2$NoteFragmentBixby2;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private setCheckNotes([Ljava/lang/String;ZZ)Z
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2$NoteFragmentBixby2;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->clearCheckedData()V

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    array-length v1, p1

    move v2, v0

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v1, :cond_4

    aget-object v4, p1, v2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->getInstance()Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->getMainListRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;->get(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;

    move-result-object v4

    if-eqz v4, :cond_3

    if-eqz p3, :cond_1

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getIsDeleted()I

    move-result v5

    if-ne v5, v3, :cond_3

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->isSdoc()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2$NoteFragmentBixby2;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {v3, v4}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->addCheckedNote(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;)V

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2$NoteFragmentBixby2;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->getCheckedNotesCount()I

    move-result p1

    if-lez p1, :cond_5

    move v0, v3

    :cond_5
    return v0

    :cond_6
    :goto_2
    const-string p1, "Bixby2"

    const-string p2, "list invalid"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private shareNotes(Ljava/lang/String;)Z
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2$NoteFragmentBixby2;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->getSharableCheckedNoteMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "shareNotes, selectedSize: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Bixby2"

    invoke-static {v3, v2}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    if-gtz v1, :cond_0

    return v2

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2$NoteFragmentBixby2;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->getCheckNotesCountInfo()Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckNotesCountInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckNotesCountInfo;->getDeletableCheckedLockNotesCount()I

    move-result v1

    const/4 v3, -0x1

    const-string v4, "SDOC"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "PDF"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    move v2, v5

    goto :goto_0

    :cond_2
    move v2, v3

    :goto_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2$NoteFragmentBixby2;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {p1, v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->setSaveExportType(I)V

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {p1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2$NoteFragmentBixby2$2;

    invoke-direct {v3, p0, v1, v2, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2$NoteFragmentBixby2$2;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2$NoteFragmentBixby2;IILjava/util/Map;)V

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return v5
.end method


# virtual methods
.method public deleteNotes([Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2$NoteFragmentBixby2;->mNotesView:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->initFolderForBixby()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2$NoteFragmentBixby2;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->getStateInfo()Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->isRecyclebinMode()Z

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2$NoteFragmentBixby2;->setCheckNotes([Ljava/lang/String;ZZ)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2$NoteFragmentBixby2;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {p1, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->setEditMode(Z)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2$NoteFragmentBixby2;->mNotesView:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->getMode()Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewContract$IMode;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewContract$IMode;->onLayout()V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2$NoteFragmentBixby2;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;->showDeleteDialog()V

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public release()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2$NoteFragmentBixby2;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2$NoteFragmentBixby2;->mActivity:Landroid/app/Activity;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2$NoteFragmentBixby2;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2$NoteFragmentBixby2;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    :cond_1
    sget-object v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2$NoteFragmentBixby2;->mInstance:Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2$NoteFragmentBixby2;

    if-eqz v0, :cond_2

    sput-object v1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2$NoteFragmentBixby2;->mInstance:Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2$NoteFragmentBixby2;

    :cond_2
    return-void
.end method

.method public search()Z
    .locals 4

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2$NoteFragmentBixby2$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2$NoteFragmentBixby2$1;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2$NoteFragmentBixby2;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x0

    return v0
.end method

.method public setAction()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2$NoteFragmentBixby2;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    return-void
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2$NoteFragmentBixby2;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public setNoteListObject(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2$NoteFragmentBixby2;->mNotesView:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2$NoteFragmentBixby2;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    return-void
.end method

.method public shareNotes([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le v0, v2, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2$NoteFragmentBixby2;->mNotesView:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->initFolderForBixby()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2$NoteFragmentBixby2;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->getStateInfo()Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->isRecyclebinMode()Z

    move-result v0

    invoke-direct {p0, p1, v2, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2$NoteFragmentBixby2;->setCheckNotes([Ljava/lang/String;ZZ)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2$NoteFragmentBixby2;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {p1, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->setEditMode(Z)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2$NoteFragmentBixby2;->mNotesView:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->getMode()Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewContract$IMode;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewContract$IMode;->onLayout()V

    :cond_0
    invoke-direct {p0, p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2$NoteFragmentBixby2;->shareNotes(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2$NoteFragmentBixby2;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->clearCheckedData()V

    :cond_2
    return v1
.end method

.method public showAllNotes()Z
    .locals 2

    const-string v0, "Bixby2"

    const-string v1, "showAllNotes"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2$NoteFragmentBixby2;->mNotesView:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->initFolderForBixby()V

    const/4 v0, 0x1

    return v0
.end method
