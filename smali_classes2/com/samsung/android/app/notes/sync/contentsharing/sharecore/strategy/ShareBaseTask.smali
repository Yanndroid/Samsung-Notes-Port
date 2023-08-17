.class public abstract Lcom/samsung/android/app/notes/sync/contentsharing/sharecore/strategy/ShareBaseTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/notes/sync/contentsharing/sharecore/strategy/ShareBaseTask$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ShareBaseTask"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mDocShareInfo:Lw/b;

.field public mDocShareOperation:Lw/c;

.field public mErrorList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ly1/a;",
            ">;"
        }
    .end annotation
.end field

.field public mListener:Lcom/samsung/android/app/notes/sync/contentsharing/sharecore/strategy/ShareBaseTask$a;

.field public mSpaceId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/notes/sync/contentsharing/sharecore/strategy/ShareBaseTask$a;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sharecore/strategy/ShareBaseTask;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sharecore/strategy/ShareBaseTask;->mListener:Lcom/samsung/android/app/notes/sync/contentsharing/sharecore/strategy/ShareBaseTask$a;

    iput-object p3, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sharecore/strategy/ShareBaseTask;->mSpaceId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    const-string v0, "ShareBaseTask"

    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    const/4 p1, 0x3

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/k;->L()Lcom/samsung/android/app/notes/sync/contentsharing/sessession/k;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->m(I)V

    invoke-static {}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/k;->L()Lcom/samsung/android/app/notes/sync/contentsharing/sessession/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->A()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/contentsharing/sharecore/strategy/ShareBaseTask;->shareProgress()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sharecore/strategy/ShareBaseTask;->mErrorList:Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sharecore/strategy/ShareBaseTask;->mErrorList:Ljava/util/ArrayList;

    new-instance v2, Ls/h;

    const-string v3, ""

    invoke-direct {v2, v3, v0}, Ls/h;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sharecore/strategy/ShareBaseTask;->mErrorList:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sharecore/strategy/ShareBaseTask;->mListener:Lcom/samsung/android/app/notes/sync/contentsharing/sharecore/strategy/ShareBaseTask$a;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sharecore/strategy/ShareBaseTask;->mErrorList:Ljava/util/ArrayList;

    invoke-interface {v1, v2}, Lcom/samsung/android/app/notes/sync/contentsharing/sharecore/strategy/ShareBaseTask$a;->f(Ljava/util/ArrayList;)V

    :cond_1
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_2
    :goto_1
    :try_start_3
    invoke-static {}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/k;->L()Lcom/samsung/android/app/notes/sync/contentsharing/sessession/k;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->n(ILcom/samsung/android/support/senl/nt/base/common/sync/SesUiListener;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    const-string v0, "ShareBaseTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_2
    const-string v2, "fail to disconnect : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_3
    :try_start_4
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Error list is null!"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    :try_start_5
    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/Exception;)V

    instance-of v2, v1, Ly1/b;

    if-eqz v2, :cond_4

    check-cast v1, Ly1/b;

    invoke-virtual {v1}, Ly1/b;->a()Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;

    move-result-object v1

    invoke-static {v1}, Ls/i;->b(Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sharecore/strategy/ShareBaseTask;->mErrorList:Ljava/util/ArrayList;

    goto :goto_3

    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sharecore/strategy/ShareBaseTask;->mErrorList:Ljava/util/ArrayList;

    new-instance v2, Ls/k;

    const-string v3, ""

    invoke-direct {v2, v3, v0}, Ls/k;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    monitor-enter p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sharecore/strategy/ShareBaseTask;->mListener:Lcom/samsung/android/app/notes/sync/contentsharing/sharecore/strategy/ShareBaseTask$a;

    if-eqz v1, :cond_5

    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sharecore/strategy/ShareBaseTask;->mErrorList:Ljava/util/ArrayList;

    invoke-interface {v1, v2}, Lcom/samsung/android/app/notes/sync/contentsharing/sharecore/strategy/ShareBaseTask$a;->f(Ljava/util/ArrayList;)V

    :cond_5
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    invoke-static {}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/k;->L()Lcom/samsung/android/app/notes/sync/contentsharing/sessession/k;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->n(ILcom/samsung/android/support/senl/nt/base/common/sync/SesUiListener;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_4

    :catch_2
    move-exception p1

    const-string v0, "ShareBaseTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_2

    :goto_4
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    :catchall_2
    move-exception v1

    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :goto_5
    :try_start_a
    invoke-static {}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/k;->L()Lcom/samsung/android/app/notes/sync/contentsharing/sessession/k;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->n(ILcom/samsung/android/support/senl/nt/base/common/sync/SesUiListener;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    goto :goto_6

    :catch_3
    move-exception p1

    const-string v0, "ShareBaseTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fail to disconnect : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_6
    throw v1
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/notes/sync/contentsharing/sharecore/strategy/ShareBaseTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public onCancelled()V
    .locals 2

    const-string v0, "ShareBaseTask"

    const-string v1, "onCancelled()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    return-void
.end method

.method public onPostExecute(Ljava/lang/Boolean;)V
    .locals 2

    const-string p1, "ShareBaseTask"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPostExecute() v."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sharecore/strategy/ShareBaseTask;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/app/notes/sync/utils/a;->x(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sharecore/strategy/ShareBaseTask;->mListener:Lcom/samsung/android/app/notes/sync/contentsharing/sharecore/strategy/ShareBaseTask$a;

    if-eqz p1, :cond_1

    const-string p1, "ShareBaseTask"

    const-string v0, "finish sharing docs!"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sharecore/strategy/ShareBaseTask;->mErrorList:Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const-string p1, "ShareBaseTask"

    const-string v0, "call onShareEnded()"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sharecore/strategy/ShareBaseTask;->mListener:Lcom/samsung/android/app/notes/sync/contentsharing/sharecore/strategy/ShareBaseTask$a;

    invoke-interface {p1}, Lcom/samsung/android/app/notes/sync/contentsharing/sharecore/strategy/ShareBaseTask$a;->b()V

    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p1, "ShareBaseTask"

    const-string v0, "onPostExecute() ends"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/notes/sync/contentsharing/sharecore/strategy/ShareBaseTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 1

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sharecore/strategy/ShareBaseTask;->mListener:Lcom/samsung/android/app/notes/sync/contentsharing/sharecore/strategy/ShareBaseTask$a;

    invoke-interface {v0}, Lcom/samsung/android/app/notes/sync/contentsharing/sharecore/strategy/ShareBaseTask$a;->e()V

    return-void
.end method

.method public abstract shareProgress()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ly1/a;",
            ">;"
        }
    .end annotation
.end method

.method public stop()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sharecore/strategy/ShareBaseTask;->mListener:Lcom/samsung/android/app/notes/sync/contentsharing/sharecore/strategy/ShareBaseTask$a;

    const-string v0, "ShareBaseTask"

    const-string v1, "stop()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
