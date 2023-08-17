.class public Lx1/b;
.super Ljava/util/concurrent/CountDownLatch;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lx1/b$a;
    }
.end annotation


# static fields
.field public static final b:Ljava/lang/String;


# instance fields
.field public a:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "InterruptedCountDownLatch"

    invoke-static {v0}, Lx1/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lx1/b;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    sget-object v0, Lx1/b;->b:Ljava/lang/String;

    const-string v1, "interrupt"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lx1/b;->a:Z

    :goto_0
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public await()V
    .locals 2

    invoke-super {p0}, Ljava/util/concurrent/CountDownLatch;->await()V

    iget-boolean v0, p0, Lx1/b;->a:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lx1/b$a;

    const-string v1, "Interrupted"

    invoke-direct {v0, v1}, Lx1/b$a;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public await(JLjava/util/concurrent/TimeUnit;)Z
    .locals 0

    invoke-super {p0, p1, p2, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    iget-boolean p2, p0, Lx1/b;->a:Z

    if-nez p2, :cond_0

    return p1

    :cond_0
    new-instance p1, Lx1/b$a;

    const-string p2, "Interrupted"

    invoke-direct {p1, p2}, Lx1/b$a;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lx1/b;->a:Z

    return v0
.end method
