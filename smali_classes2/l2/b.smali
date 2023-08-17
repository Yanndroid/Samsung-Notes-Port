.class public Ll2/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Landroid/content/Context;

.field public b:Ljava/lang/String;

.field public c:Lcom/samsung/android/support/senl/nt/base/common/sync/IServerNoteInfoListener;

.field public final d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:La2/g$a;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/base/common/sync/IServerNoteInfoListener;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll2/b;->b:Ljava/lang/String;

    iput-object p2, p0, Ll2/b;->c:Lcom/samsung/android/support/senl/nt/base/common/sync/IServerNoteInfoListener;

    iput-object p3, p0, Ll2/b;->d:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Ll2/b;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    new-instance v0, La2/g$a;

    iget-object v1, p0, Ll2/b;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, La2/g$a;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ll2/b;->f:La2/g$a;

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, La2/g$a;->g(I)V

    iget-object v0, p0, Ll2/b;->f:La2/g$a;

    const-string v1, "ND"

    invoke-virtual {v0, v1}, La2/g$a;->h(Ljava/lang/String;)V

    return-void
.end method

.method public final b()V
    .locals 3

    new-instance v0, Lcom/samsung/android/app/notes/sync/db/s;

    iget-object v1, p0, Ll2/b;->a:Landroid/content/Context;

    iget-object v2, p0, Ll2/b;->d:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/notes/sync/db/s;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/db/s;->t()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ll2/b;->e:Ljava/lang/String;

    return-void
.end method

.method public final c(I)V
    .locals 2

    iget-object v0, p0, Ll2/b;->c:Lcom/samsung/android/support/senl/nt/base/common/sync/IServerNoteInfoListener;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/sync/IServerNoteInfoListener;->onFailed(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleErrorResult() : fail to call , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ServerNoteInfoTask"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public d(Lcom/samsung/android/support/senl/nt/base/common/sync/ServerNoteInfo;)V
    .locals 2

    iget-object v0, p0, Ll2/b;->c:Lcom/samsung/android/support/senl/nt/base/common/sync/IServerNoteInfoListener;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/sync/IServerNoteInfoListener;->onReceived(Lcom/samsung/android/support/senl/nt/base/common/sync/ServerNoteInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleResult() : fail to call , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ServerNoteInfoTask"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public run()V
    .locals 7

    const-string v0, "ServerNoteInfoTask"

    const-string v1, "start run()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    invoke-virtual {p0}, Ll2/b;->a()V

    invoke-virtual {p0}, Ll2/b;->b()V

    const/16 v1, 0x8

    :try_start_0
    new-instance v2, Lu2/g;

    iget-object v3, p0, Ll2/b;->f:La2/g$a;

    iget-object v4, p0, Ll2/b;->a:Landroid/content/Context;

    iget-object v5, p0, Ll2/b;->e:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Lu2/g;-><init>(La2/g$a;Landroid/content/Context;Ljava/lang/String;La2/g$b;)V

    invoke-virtual {v2}, Lu2/g;->c()Le1/i;

    move-result-object v2

    iget-object v3, p0, Ll2/b;->c:Lcom/samsung/android/support/senl/nt/base/common/sync/IServerNoteInfoListener;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v3, :cond_1

    :try_start_1
    invoke-virtual {v2}, Le1/i;->b()Lcom/samsung/android/support/senl/nt/base/common/sync/ServerNoteInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/base/common/sync/ServerNoteInfo;->getModifiedTime()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    invoke-virtual {p0, v1}, Ll2/b;->c(I)V

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Le1/i;->b()Lcom/samsung/android/support/senl/nt/base/common/sync/ServerNoteInfo;

    move-result-object v3

    invoke-virtual {p0, v3}, Ll2/b;->d(Lcom/samsung/android/support/senl/nt/base/common/sync/ServerNoteInfo;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "run() : fail to call onReceived , "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-static {v0, v3}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v3, "run() : no listener"

    goto :goto_0

    :goto_1
    invoke-virtual {v2}, Le1/i;->d()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fail to get server note info : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Ll2/b;->c:Lcom/samsung/android/support/senl/nt/base/common/sync/IServerNoteInfoListener;

    if-eqz v3, :cond_2

    :try_start_3
    invoke-virtual {p0, v1}, Ll2/b;->c(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :catch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "run() : fail to call onFailed , "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_2
    return-void
.end method
