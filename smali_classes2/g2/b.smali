.class public Lg2/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static e:Lg2/b;


# instance fields
.field public a:Landroid/content/Context;

.field public b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lg2/c;",
            ">;"
        }
    .end annotation
.end field

.field public c:Lcom/samsung/android/app/notes/sync/quota/QuotaServiceTask;

.field public d:Lg2/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lg2/b;->a:Landroid/content/Context;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lg2/b;->b:Ljava/util/ArrayList;

    iput-object v0, p0, Lg2/b;->c:Lcom/samsung/android/app/notes/sync/quota/QuotaServiceTask;

    new-instance v0, Lg2/b$a;

    invoke-direct {v0, p0}, Lg2/b$a;-><init>(Lg2/b;)V

    iput-object v0, p0, Lg2/b;->d:Lg2/c;

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v0

    invoke-virtual {v0}, Lx/e;->a()Lx/a;

    move-result-object v0

    invoke-interface {v0}, Lx/a;->getAppContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lg2/b;->a:Landroid/content/Context;

    return-void
.end method

.method public static bridge synthetic a(Lg2/b;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lg2/b;->a:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic b(Lg2/b;)Lg2/c;
    .locals 0

    iget-object p0, p0, Lg2/b;->d:Lg2/c;

    return-object p0
.end method

.method public static bridge synthetic c(Lg2/b;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lg2/b;->b:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic d(Lg2/b;)Lcom/samsung/android/app/notes/sync/quota/QuotaServiceTask;
    .locals 0

    iget-object p0, p0, Lg2/b;->c:Lcom/samsung/android/app/notes/sync/quota/QuotaServiceTask;

    return-object p0
.end method

.method public static bridge synthetic e(Lg2/b;Lcom/samsung/android/app/notes/sync/quota/QuotaServiceTask;)V
    .locals 0

    iput-object p1, p0, Lg2/b;->c:Lcom/samsung/android/app/notes/sync/quota/QuotaServiceTask;

    return-void
.end method

.method public static declared-synchronized i()Lg2/b;
    .locals 2

    const-class v0, Lg2/b;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lg2/b;->e:Lg2/b;

    if-nez v1, :cond_0

    new-instance v1, Lg2/b;

    invoke-direct {v1}, Lg2/b;-><init>()V

    sput-object v1, Lg2/b;->e:Lg2/b;

    :cond_0
    sget-object v1, Lg2/b;->e:Lg2/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static l()Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isQuotaUiChecked() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lg2/a;->d()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QT/QuotaHelper"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lg2/a;->d()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public f(Lg2/c;)V
    .locals 3

    const-string v0, "QT/QuotaHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addQuotaListener() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const-string v2, "null"

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-class v0, Lg2/c;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lg2/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg2/c;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    monitor-exit v0

    return-void

    :cond_2
    iget-object v1, p0, Lg2/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p1, "QT/QuotaHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Added Quota listener - size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lg2/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public g()V
    .locals 2

    const-string v0, "QT/QuotaHelper"

    const-string v1, "cancelGetQuota()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lg2/b;->c:Lcom/samsung/android/app/notes/sync/quota/QuotaServiceTask;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lg2/b;->c:Lcom/samsung/android/app/notes/sync/quota/QuotaServiceTask;

    :cond_0
    return-void
.end method

.method public h()V
    .locals 2

    const-string v0, "QT/QuotaHelper"

    const-string v1, "clear()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lg2/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lg2/a;->h(Z)V

    :cond_0
    invoke-static {}, Lg2/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_1

    invoke-static {v1}, Lg2/a;->g(Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lg2/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {v1}, Lg2/a;->e(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public j(I)V
    .locals 9

    const-string v0, "QT/QuotaHelper"

    const-string v1, "start getQuota()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {}, Ln/a;->b()Ln/a;

    move-result-object v2

    invoke-virtual {v2}, Ln/a;->f()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lg2/b;->d:Lg2/c;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lg2/b;->d:Lg2/c;

    const/4 v4, 0x4

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    invoke-interface/range {v3 .. v8}, Lg2/c;->onUpdate(IJJ)V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p1, "QT/QuotaHelper"

    const-string v0, "getQuota() : network not connected!"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_0
    iget-object v2, p0, Lg2/b;->a:Landroid/content/Context;

    invoke-static {v2}, Lf/a;->m(Landroid/content/Context;)Lf/a;

    move-result-object v2

    new-instance v3, Lg2/b$c;

    invoke-direct {v3, p0, p1}, Lg2/b$c;-><init>(Lg2/b;I)V

    invoke-virtual {v2, v3}, Lf/a;->w(Lcom/samsung/android/support/senl/nt/base/common/sync/IAuthInfoReqListener;)V

    const-string p1, "QT/QuotaHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "finish getQuota() elapsed time : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public k(Landroid/content/Context;)V
    .locals 2

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/util/CommonUtils;->hasCloudSetting(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "QT/QuotaHelper"

    if-eqz v0, :cond_0

    const-string p1, "initQuotaUi() : hasCloudSetting"

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Ln/a;->b()Ln/a;

    move-result-object v0

    invoke-virtual {v0}, Ln/a;->p()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lg2/b;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "initQuotaUi() : quota status checked!"

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-static {}, Ln/a;->b()Ln/a;

    move-result-object v0

    invoke-virtual {v0}, Ln/a;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p1}, Lf/a;->m(Landroid/content/Context;)Lf/a;

    move-result-object v0

    new-instance v1, Lg2/b$b;

    invoke-direct {v1, p0, p1}, Lg2/b$b;-><init>(Lg2/b;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lf/a;->w(Lcom/samsung/android/support/senl/nt/base/common/sync/IAuthInfoReqListener;)V

    goto :goto_0

    :cond_3
    const-string p1, "The data network is not available!"

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public m(Landroid/content/Context;)Z
    .locals 3

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/util/CommonUtils;->hasCloudSetting(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Ln/a;->b()Ln/a;

    move-result-object v0

    invoke-virtual {v0}, Ln/a;->p()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-static {}, Lg2/b;->l()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "QT/QuotaHelper"

    const-string v2, "isQuotaUiNeeded() : false (not checked)"

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lg2/b;->k(Landroid/content/Context;)V

    return v1

    :cond_2
    invoke-virtual {p0}, Lg2/b;->o()Z

    move-result p1

    if-eqz p1, :cond_3

    return v1

    :cond_3
    invoke-virtual {p0}, Lg2/b;->n()Z

    move-result p1

    if-eqz p1, :cond_4

    return v1

    :cond_4
    const/4 p1, 0x1

    return p1
.end method

.method public final n()Z
    .locals 5

    invoke-static {}, Lg2/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v1, "P3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x3

    goto :goto_0

    :pswitch_1
    const-string v1, "P2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x2

    goto :goto_0

    :pswitch_2
    const-string v1, "P1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move v4, v2

    goto :goto_0

    :pswitch_3
    const-string v1, "P0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    move v4, v3

    :goto_0
    const-string v0, "QT/QuotaHelper"

    packed-switch v4, :pswitch_data_1

    const-string v1, "isUnlimitedByEof() : false <- invalid status!"

    :goto_1
    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :pswitch_4
    const-string v1, "isUnlimitedByEof() : P3 -> true"

    :goto_2
    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :pswitch_5
    const-string v1, "isUnlimitedByEof() : P2 -> true"

    goto :goto_2

    :pswitch_6
    invoke-static {}, Lg2/a;->b()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "isUnlimitedByEof() : P1, newUser -> true"

    goto :goto_2

    :cond_4
    const-string v1, "isUnlimitedByEof() : P1 -> false"

    goto :goto_1

    :pswitch_7
    const-string v1, "isUnlimitedByEof() : P0 -> false"

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x9e0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public final o()Z
    .locals 5

    invoke-static {}, Lg2/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "LINKING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x4

    goto :goto_0

    :sswitch_1
    const-string v1, "UNLINKED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x3

    goto :goto_0

    :sswitch_2
    const-string v1, "NONE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x2

    goto :goto_0

    :sswitch_3
    const-string v1, "LINKED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    move v4, v2

    goto :goto_0

    :sswitch_4
    const-string v1, "UNSUPPORTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    move v4, v3

    :goto_0
    const-string v0, "QT/QuotaHelper"

    packed-switch v4, :pswitch_data_0

    const-string v1, "isUnlimitedByOd() : false <- invalid status!"

    :goto_1
    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :pswitch_0
    const-string v1, "isUnlimitedByOd() : true"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :pswitch_1
    const-string v1, "isUnlimitedByOd() : false"

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        -0x7cc649eb -> :sswitch_4
        -0x7a2665e7 -> :sswitch_3
        0x24a738 -> :sswitch_2
        0x21c38df2 -> :sswitch_1
        0x3559b988 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public p(Lg2/c;)V
    .locals 2

    const-class v0, Lg2/c;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lg2/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
