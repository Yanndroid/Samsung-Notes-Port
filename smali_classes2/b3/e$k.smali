.class public Lb3/e$k;
.super Lb3/e$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb3/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "k"
.end annotation


# instance fields
.field public a:Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

.field public b:I

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lf1/a;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;ILjava/util/List;Ljava/lang/Runnable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;",
            "I",
            "Ljava/util/List<",
            "Lf1/a;",
            ">;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lb3/e$f;-><init>(Lb3/h;)V

    iput-object p1, p0, Lb3/e$k;->a:Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

    iput p2, p0, Lb3/e$k;->b:I

    iput-object p3, p0, Lb3/e$k;->c:Ljava/util/List;

    iput-object p4, p0, Lb3/e$k;->d:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;
    .locals 6

    iget-object v0, p0, Lb3/e$k;->a:Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

    sget-object v1, Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;->SDOCX:Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

    if-ne v0, v1, :cond_0

    const-string v0, "TipCardErrorManager"

    const-string v1, "Server Blocked by user!(SDOCX)"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "TipCardErrorManager"

    const-string v1, "Server Blocked by user!(SDOC)"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lb3/n;

    invoke-direct {v0}, Lb3/n;-><init>()V

    :goto_0
    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/TimeManager;->getCurrentTime(Landroid/content/Context;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lt2/a;->u(J)V

    iget-object p1, p0, Lb3/e$k;->c:Ljava/util/List;

    monitor-enter p1

    :try_start_0
    iget-object v1, p0, Lb3/e$k;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lb3/e$k;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf1/a;

    iget v3, p0, Lb3/e$k;->b:I

    const/16 v4, 0x200

    and-int/2addr v3, v4

    const/4 v5, 0x0

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    invoke-interface {v2, v5, v3}, Lf1/a;->onUpdate(ZZ)V

    goto :goto_1

    :cond_1
    invoke-interface {v2, v5, v5}, Lf1/a;->onUpdate(ZZ)V

    goto :goto_1

    :cond_2
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lb3/e$k;->d:Ljava/lang/Runnable;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_3
    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public d(ILjava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lb3/e$f;",
            ">;)Z"
        }
    .end annotation

    const/16 v0, 0x400

    invoke-virtual {p0, v0, p1, p2}, Lb3/e$f;->b(IILjava/util/List;)Z

    move-result p1

    return p1
.end method
