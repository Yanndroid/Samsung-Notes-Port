.class Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2$SaveAsync;
.super Lcom/samsung/android/support/notes/bixby/bixby2/aid/AbsBixby2Async;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SaveAsync"
.end annotation


# instance fields
.field public mContent:Ljava/lang/String;

.field public mFolderPath:Ljava/lang/String;

.field public mNoteTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/notes/bixby/bixby2/aid/AbsBixby2Async$AsyncParam;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/notes/bixby/bixby2/aid/AbsBixby2Async;-><init>(Lcom/samsung/android/support/notes/bixby/bixby2/aid/AbsBixby2Async$AsyncParam;)V

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2$SaveAsync;->mNoteTitle:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2$SaveAsync;->mContent:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2$SaveAsync;->mFolderPath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public backgroundOperation()Lcom/samsung/android/support/notes/bixby/bixby2/aid/ActionResult;
    .locals 11

    const-string v0, "Bixby2"

    const-string v1, "Bixby_saveThread start"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/android/support/notes/bixby/bixby2/aid/ActionResult;

    invoke-direct {v1}, Lcom/samsung/android/support/notes/bixby/bixby2/aid/ActionResult;-><init>()V

    const-string v2, "failure"

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/notes/bixby/bixby2/aid/ActionResult;->setResult(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/notes/bixby/bixby2/aid/ActionResult;->setDescription(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2$SaveAsync;->mNoteTitle:Ljava/lang/String;

    if-nez v3, :cond_0

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2$SaveAsync;->mContent:Ljava/lang/String;

    if-nez v4, :cond_0

    const-string v2, "title & content is null"

    :goto_0
    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    const-string v4, ""

    if-nez v3, :cond_1

    iput-object v4, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2$SaveAsync;->mNoteTitle:Ljava/lang/String;

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2$SaveAsync;->mContent:Ljava/lang/String;

    if-nez v3, :cond_2

    iput-object v4, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2$SaveAsync;->mContent:Ljava/lang/String;

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$MyFolders;->PATH:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2$SaveAsync;->mFolderPath:Ljava/lang/String;

    if-eqz v5, :cond_3

    move-object v4, v5

    :cond_3
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2$SaveAsync;->mFolderPath:Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/support/notes/bixby/bixby2/aid/AbsBixby2Async;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2$SaveAsync;->mNoteTitle:Ljava/lang/String;

    iget-object v7, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2$SaveAsync;->mContent:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/samsung/android/support/senl/nt/app/R$color;->base_background_color_white:I

    const/4 v9, 0x0

    invoke-virtual {v3, v4, v9}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v9

    const/4 v10, 0x1

    invoke-static/range {v5 .. v10}, Lcom/samsung/android/support/senl/nt/model/service/NotesWordDocumentServiceIntent;->saveMemo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "backgroundOperation - uuid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v3, :cond_4

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/notes/bixby/bixby2/aid/ActionResult;->setResult(Ljava/lang/String;)V

    const-string v2, "failure - uuid is null"

    goto :goto_1

    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Lcom/samsung/android/support/notes/bixby/bixby2/aid/NoteInfo;

    invoke-direct {v4}, Lcom/samsung/android/support/notes/bixby/bixby2/aid/NoteInfo;-><init>()V

    invoke-virtual {v4, v3}, Lcom/samsung/android/support/notes/bixby/bixby2/aid/NoteInfo;->setNoteID(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2$SaveAsync;->mNoteTitle:Ljava/lang/String;

    invoke-virtual {v4, v3}, Lcom/samsung/android/support/notes/bixby/bixby2/aid/NoteInfo;->setNoteTitle(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2$SaveAsync;->mContent:Ljava/lang/String;

    invoke-virtual {v4, v3}, Lcom/samsung/android/support/notes/bixby/bixby2/aid/NoteInfo;->setNoteContent(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Lcom/samsung/android/support/notes/bixby/bixby2/aid/NoteInfo;->setIsFavorite(Z)V

    invoke-virtual {v4, v3}, Lcom/samsung/android/support/notes/bixby/bixby2/aid/NoteInfo;->setisLocked(Z)V

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2$SaveAsync;->mFolderPath:Ljava/lang/String;

    invoke-virtual {v4, v3}, Lcom/samsung/android/support/notes/bixby/bixby2/aid/NoteInfo;->setCategory(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/notes/bixby/bixby2/aid/ActionResult;->setNoteInfo(Ljava/util/ArrayList;)V

    const-string v2, "success"

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/notes/bixby/bixby2/aid/ActionResult;->setResult(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v1, v2}, Lcom/samsung/android/support/notes/bixby/bixby2/aid/ActionResult;->setDescription(Ljava/lang/String;)V

    const-string v2, "Bixby_saveThread end"

    goto/16 :goto_0
.end method
