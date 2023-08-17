.class public Lcom/samsung/android/app/notes/sync/quota/QuotaServiceTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ld1/g;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "QT/QuotaServiceTask"


# instance fields
.field public final mApp:I

.field public mAuthorization:Ljava/lang/String;

.field public final mContext:Landroid/content/Context;

.field public mListener:Lg2/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lg2/c;I)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/quota/QuotaServiceTask;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/app/notes/sync/quota/QuotaServiceTask;->mAuthorization:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/app/notes/sync/quota/QuotaServiceTask;->mListener:Lg2/c;

    iput p4, p0, Lcom/samsung/android/app/notes/sync/quota/QuotaServiceTask;->mApp:I

    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Void;)Ld1/g;
    .locals 9

    const-string p1, "QT/QuotaServiceTask"

    const-string/jumbo v0, "try to get Quota"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string v1, "QuotaTask"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/quota/QuotaServiceTask;->getRequestUrl()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ld1/g;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, v1, v2

    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/app/notes/sync/quota/QuotaServiceTask;->mAuthorization:Ljava/lang/String;

    invoke-static {v4}, Lc3/l;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    new-instance v6, Lcom/samsung/android/app/notes/sync/quota/QuotaServiceTask$a;

    invoke-direct {v6, p0, v1}, Lcom/samsung/android/app/notes/sync/quota/QuotaServiceTask$a;-><init>(Lcom/samsung/android/app/notes/sync/quota/QuotaServiceTask;[Ld1/g;)V

    invoke-static {v4, v0, v3, v5, v6}, Lcom/samsung/android/app/notes/sync/network/networkutils/b;->f(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/samsung/android/app/notes/sync/network/networkutils/b$b;)V
    :try_end_0
    .catch Ls0/c; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/quota/QuotaServiceTask;->mListener:Lg2/c;

    if-eqz v0, :cond_1

    aget-object v0, v1, v2

    if-nez v0, :cond_0

    const-string/jumbo v0, "update ERROR_CODE_SERVER_ERROR!"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/app/notes/sync/quota/QuotaServiceTask;->mListener:Lg2/c;

    const/16 v4, 0x8

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    goto :goto_1

    :cond_0
    const-string/jumbo v0, "update quota!"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/app/notes/sync/quota/QuotaServiceTask;->mListener:Lg2/c;

    const/4 v4, 0x0

    aget-object p1, v1, v2

    invoke-virtual {p1}, Ld1/g;->f()J

    move-result-wide v5

    aget-object p1, v1, v2

    invoke-virtual {p1}, Ld1/g;->e()J

    move-result-wide v7

    :goto_1
    invoke-interface/range {v3 .. v8}, Lg2/c;->onUpdate(IJJ)V

    goto :goto_2

    :cond_1
    const-string v0, "no mListener"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    aget-object p1, v1, v2

    return-object p1
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/notes/sync/quota/QuotaServiceTask;->doInBackground([Ljava/lang/Void;)Ld1/g;

    move-result-object p1

    return-object p1
.end method

.method public getRequestUrl()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lh2/b;->b()Lh2/b;

    move-result-object v0

    const-string v1, "/quota/v3/usage"

    invoke-virtual {v0, v1}, Lh2/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
