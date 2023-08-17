.class public La3/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La3/a;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/notes/sync/db/s;)V
    .locals 1

    invoke-virtual {p1}, Lcom/samsung/android/app/notes/sync/db/s;->x()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/notes/sync/db/t;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/notes/sync/db/t;-><init>(Landroid/content/Context;)V

    iget-object p1, p0, La3/a;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/notes/sync/db/t;->e(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "clear() : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, La3/a;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ConflictedNote"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/notes/sync/db/t;

    invoke-direct {v1, v0}, Lcom/samsung/android/app/notes/sync/db/t;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, La3/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v0, p1}, Lcom/samsung/android/app/notes/sync/db/t;->h(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "conflictNote() : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ConflictedNote"

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public c(Lcom/samsung/android/app/notes/sync/db/s;Ljava/lang/String;)Z
    .locals 5

    invoke-virtual {p1}, Lcom/samsung/android/app/notes/sync/db/s;->x()Z

    move-result v0

    const-string v1, "Local note is update and conflicted!"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/app/notes/sync/db/s;->c()I

    move-result p1

    const-string v0, "ConflictedNote"

    if-eqz p1, :cond_1

    const/4 v4, 0x2

    if-eq p1, v4, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    goto :goto_2

    :cond_0
    const-string p1, "handleConflictedNoteAndIsDownloadNeeded() : Add the note to ConflictedLocalNoteList"

    goto :goto_0

    :cond_1
    const-string p1, "handleConflictedNoteAndIsDownloadNeeded() : No user choice!"

    :goto_0
    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/app/notes/sync/db/s;->p()I

    move-result p1

    if-ne p1, v2, :cond_4

    :cond_3
    invoke-virtual {p0, p2, v1}, La3/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    move v2, v3

    :cond_4
    :goto_2
    return v2
.end method

.method public d(Lcom/samsung/android/app/notes/sync/db/s;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    invoke-virtual {p1}, Lcom/samsung/android/app/notes/sync/db/s;->x()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/app/notes/sync/db/s;->c()I

    move-result p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "handleConflictedNoteAndIsUploadNeeded() : conflictStrategy of "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, La3/a;->a:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "ConflictedNote"

    invoke-static {p3, p2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    if-eq p1, v1, :cond_4

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    goto :goto_2

    :cond_0
    const-string p1, "handleConflictedNoteAndIsUploadNeeded() : Cancel to upload the note!"

    goto :goto_0

    :cond_1
    const-string p1, "handleConflictedNoteAndIsUploadNeeded() : No user choice!"

    :goto_0
    invoke-static {p3, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/app/notes/sync/db/s;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Ly2/a;->d()Ljava/util/HashMap;

    move-result-object p1

    iget-object p2, p0, La3/a;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    invoke-static {}, Ly2/a;->d()Ljava/util/HashMap;

    move-result-object p1

    iget-object p2, p0, La3/a;->a:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    invoke-virtual {p0, p1, p3}, La3/a;->i(Lcom/samsung/android/app/notes/sync/db/s;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "Local note is updated after compareForUpsync!"

    invoke-virtual {p0, p2, p1}, La3/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_1
    move v1, v2

    :cond_5
    :goto_2
    return v1
.end method

.method public final e(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "ConflictedNote"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string p1, "isCommitIdSame() : commitIdOfServerNote is empty"

    :goto_0
    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->ef(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "isCommitIdSame() : commitIdOfLocalNote is empty"

    goto :goto_0

    :cond_1
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public f(Lcom/samsung/android/app/notes/sync/db/s;)Z
    .locals 1

    invoke-virtual {p1}, Lcom/samsung/android/app/notes/sync/db/s;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/app/notes/sync/db/s;->c()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public g(Lcom/samsung/android/app/notes/sync/db/s;)Z
    .locals 1

    invoke-virtual {p1}, Lcom/samsung/android/app/notes/sync/db/s;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/app/notes/sync/db/s;->c()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public h(Lcom/samsung/android/app/notes/sync/db/s;)Z
    .locals 2

    invoke-virtual {p1}, Lcom/samsung/android/app/notes/sync/db/s;->x()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/app/notes/sync/db/s;->c()I

    move-result p1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public i(Lcom/samsung/android/app/notes/sync/db/s;Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p1}, Lcom/samsung/android/app/notes/sync/db/s;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, La3/a;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "ConflictedNote"

    const-string p2, "Note is conflicted : different commitId"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public j(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "ConflictedNote"

    const-string/jumbo p2, "updateCommitId() : No serverCommitId"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->ef(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/notes/sync/db/t;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/notes/sync/db/t;-><init>(Landroid/content/Context;)V

    iget-object p1, p0, La3/a;->a:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/notes/sync/db/t;->g(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
