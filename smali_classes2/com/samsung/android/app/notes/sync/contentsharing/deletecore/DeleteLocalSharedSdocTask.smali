.class public Lcom/samsung/android/app/notes/sync/contentsharing/deletecore/DeleteLocalSharedSdocTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/notes/sync/contentsharing/deletecore/DeleteLocalSharedSdocTask$b;,
        Lcom/samsung/android/app/notes/sync/contentsharing/deletecore/DeleteLocalSharedSdocTask$DeleteType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DeleteLocalSharedSdocTask"


# instance fields
.field private mId:Ljava/lang/String;

.field private mListener:Lcom/samsung/android/app/notes/sync/contentsharing/deletecore/DeleteLocalSharedSdocTask$b;

.field private mType:Lcom/samsung/android/app/notes/sync/contentsharing/deletecore/DeleteLocalSharedSdocTask$DeleteType;

.field private mUserId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/notes/sync/contentsharing/deletecore/DeleteLocalSharedSdocTask$DeleteType;Ljava/lang/String;Lcom/samsung/android/app/notes/sync/contentsharing/deletecore/DeleteLocalSharedSdocTask$b;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/deletecore/DeleteLocalSharedSdocTask;->mUserId:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/contentsharing/deletecore/DeleteLocalSharedSdocTask;->mType:Lcom/samsung/android/app/notes/sync/contentsharing/deletecore/DeleteLocalSharedSdocTask$DeleteType;

    iput-object p2, p0, Lcom/samsung/android/app/notes/sync/contentsharing/deletecore/DeleteLocalSharedSdocTask;->mId:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/app/notes/sync/contentsharing/deletecore/DeleteLocalSharedSdocTask;->mListener:Lcom/samsung/android/app/notes/sync/contentsharing/deletecore/DeleteLocalSharedSdocTask$b;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/notes/sync/contentsharing/deletecore/DeleteLocalSharedSdocTask$DeleteType;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/app/notes/sync/contentsharing/deletecore/DeleteLocalSharedSdocTask$b;)V
    .locals 0

    invoke-direct {p0, p1, p2, p4}, Lcom/samsung/android/app/notes/sync/contentsharing/deletecore/DeleteLocalSharedSdocTask;-><init>(Lcom/samsung/android/app/notes/sync/contentsharing/deletecore/DeleteLocalSharedSdocTask$DeleteType;Ljava/lang/String;Lcom/samsung/android/app/notes/sync/contentsharing/deletecore/DeleteLocalSharedSdocTask$b;)V

    iput-object p3, p0, Lcom/samsung/android/app/notes/sync/contentsharing/deletecore/DeleteLocalSharedSdocTask;->mUserId:Ljava/lang/String;

    return-void
.end method

.method private deleteSdocFile(Ljava/lang/String;)Z
    .locals 4

    new-instance v0, Lcom/samsung/android/app/notes/sync/db/s;

    invoke-direct {p0}, Lcom/samsung/android/app/notes/sync/contentsharing/deletecore/DeleteLocalSharedSdocTask;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/app/notes/sync/db/s;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/android/app/notes/sync/db/t;

    invoke-direct {p0}, Lcom/samsung/android/app/notes/sync/contentsharing/deletecore/DeleteLocalSharedSdocTask;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/app/notes/sync/db/t;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/db/s;->o()I

    move-result v0

    const-string v2, "DeleteLocalSharedSdocTask"

    const/4 v3, 0x1

    if-eq v0, v3, :cond_0

    invoke-virtual {v1, p1, v2}, Lcom/samsung/android/app/notes/sync/db/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is already deleted!"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v3
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v0

    invoke-virtual {v0}, Lx/e;->a()Lx/a;

    move-result-object v0

    invoke-interface {v0}, Lx/a;->getAppContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private getSDocListById()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/app/notes/sync/db/f;

    invoke-direct {p0}, Lcom/samsung/android/app/notes/sync/contentsharing/deletecore/DeleteLocalSharedSdocTask;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/notes/sync/db/f;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/samsung/android/app/notes/sync/contentsharing/deletecore/DeleteLocalSharedSdocTask$a;->a:[I

    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/contentsharing/deletecore/DeleteLocalSharedSdocTask;->mType:Lcom/samsung/android/app/notes/sync/contentsharing/deletecore/DeleteLocalSharedSdocTask$DeleteType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSDocListById. Type error : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/contentsharing/deletecore/DeleteLocalSharedSdocTask;->mType:Lcom/samsung/android/app/notes/sync/contentsharing/deletecore/DeleteLocalSharedSdocTask$DeleteType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeleteLocalSharedSdocTask"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/contentsharing/deletecore/DeleteLocalSharedSdocTask;->mId:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/samsung/android/app/notes/sync/contentsharing/deletecore/DeleteLocalSharedSdocTask;->isValidId(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/contentsharing/deletecore/DeleteLocalSharedSdocTask;->mUserId:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/samsung/android/app/notes/sync/contentsharing/deletecore/DeleteLocalSharedSdocTask;->isValidId(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/contentsharing/deletecore/DeleteLocalSharedSdocTask;->mId:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/contentsharing/deletecore/DeleteLocalSharedSdocTask;->mUserId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/notes/sync/db/f;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/db/f;->z()Ljava/util/List;

    move-result-object v0

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/contentsharing/deletecore/DeleteLocalSharedSdocTask;->mId:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/samsung/android/app/notes/sync/contentsharing/deletecore/DeleteLocalSharedSdocTask;->isValidId(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/contentsharing/deletecore/DeleteLocalSharedSdocTask;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/notes/sync/db/f;->x(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/contentsharing/deletecore/DeleteLocalSharedSdocTask;->mId:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/samsung/android/app/notes/sync/contentsharing/deletecore/DeleteLocalSharedSdocTask;->isValidId(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/contentsharing/deletecore/DeleteLocalSharedSdocTask;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/notes/sync/db/f;->v(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method private isValidId(Ljava/lang/String;)Z
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/notes/sync/contentsharing/deletecore/DeleteLocalSharedSdocTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Start delete local shared sdoc. Type : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/deletecore/DeleteLocalSharedSdocTask;->mType:Lcom/samsung/android/app/notes/sync/contentsharing/deletecore/DeleteLocalSharedSdocTask$DeleteType;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", ID : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/deletecore/DeleteLocalSharedSdocTask;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", UserID : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/deletecore/DeleteLocalSharedSdocTask;->mUserId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DeleteLocalSharedSdocTask"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/app/notes/sync/contentsharing/deletecore/DeleteLocalSharedSdocTask;->getSDocListById()Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const-string p1, "Invalid parameters. Skip deletion."

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/samsung/android/app/notes/sync/contentsharing/deletecore/DeleteLocalSharedSdocTask;->deleteSdocFile(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Delete space. total : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", success : "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/notes/sync/contentsharing/deletecore/DeleteLocalSharedSdocTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/Void;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/contentsharing/deletecore/DeleteLocalSharedSdocTask;->mListener:Lcom/samsung/android/app/notes/sync/contentsharing/deletecore/DeleteLocalSharedSdocTask$b;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/samsung/android/app/notes/sync/contentsharing/deletecore/DeleteLocalSharedSdocTask$b;->onDeleteLocalSharedSdocFinished()V

    :cond_0
    return-void
.end method
