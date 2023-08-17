.class public Lcom/samsung/android/app/notes/sync/migration/restore/RestoreSNoteTask;
.super Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "RestoreSNoteTask"

    invoke-static {v0}, Lx1/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreSNoteTask;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/notes/sync/migration/restore/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;-><init>(Lcom/samsung/android/app/notes/sync/migration/restore/b;)V

    const/16 p1, 0x100

    iput p1, p0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->mMask:I

    return-void
.end method

.method private getRestoreData(Ljava/io/File;Ljava/lang/String;I)V
    .locals 5

    sget-object v0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreSNoteTask;->TAG:Ljava/lang/String;

    const-string v1, "getRestoreData."

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    const-string p1, "sourceLocation not exists."

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lc3/n;->k(Ljava/io/File;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v1

    invoke-virtual {v1}, Lx/e;->a()Lx/a;

    move-result-object v1

    invoke-interface {v1}, Lx/a;->getAppContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v2, v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    new-instance v1, Ld1/d;

    invoke-direct {v1, p3}, Ld1/d;-><init>(I)V

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ld1/d;->R(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ld1/d;->a0(Z)V

    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->mImportItemList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    sget-object v0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreSNoteTask;->TAG:Ljava/lang/String;

    const-string v1, "clear."

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lc3/n;->U(Z)V

    return-void
.end method

.method public decryptAndUnzip()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCancelled()V
    .locals 2

    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lc3/n;->U(Z)V

    return-void
.end method

.method public prepare()V
    .locals 2

    sget-object v0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreSNoteTask;->TAG:Ljava/lang/String;

    const-string v1, "prepare."

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lc3/n;->U(Z)V

    return-void
.end method

.method public update()I
    .locals 5

    sget-object v0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreSNoteTask;->TAG:Ljava/lang/String;

    const-string v1, "Start update."

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v2

    invoke-virtual {v2}, Lc3/n;->v()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v2, "snb"

    const/16 v3, 0xd

    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreSNoteTask;->getRestoreData(Ljava/io/File;Ljava/lang/String;I)V

    new-instance v1, Ljava/io/File;

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v3

    invoke-virtual {v3}, Lc3/n;->s()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x14

    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreSNoteTask;->getRestoreData(Ljava/io/File;Ljava/lang/String;I)V

    new-instance v1, Ljava/io/File;

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v4

    invoke-virtual {v4}, Lc3/n;->r()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreSNoteTask;->getRestoreData(Ljava/io/File;Ljava/lang/String;I)V

    new-instance v1, Ljava/io/File;

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v4

    invoke-virtual {v4}, Lc3/n;->u()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreSNoteTask;->getRestoreData(Ljava/io/File;Ljava/lang/String;I)V

    new-instance v1, Ljava/io/File;

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v4

    invoke-virtual {v4}, Lc3/n;->t()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreSNoteTask;->getRestoreData(Ljava/io/File;Ljava/lang/String;I)V

    new-instance v1, Ljava/io/File;

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v2

    invoke-virtual {v2}, Lc3/n;->t()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v2, "spd"

    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreSNoteTask;->getRestoreData(Ljava/io/File;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->mImportItemList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    const-string v1, "No item found."

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, -0x6

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Finish update. result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method
