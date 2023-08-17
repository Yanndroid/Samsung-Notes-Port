.class public Lo2/c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo2/c;->n()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lo2/c;


# direct methods
.method public constructor <init>(Lo2/c;)V
    .locals 0

    iput-object p1, p0, Lo2/c$b;->a:Lo2/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    new-instance v0, Lm2/a;

    invoke-direct {v0}, Lm2/a;-><init>()V

    invoke-virtual {v0}, Lm2/a;->f()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lo2/c$b;->a:Lo2/c;

    invoke-static {v2}, Lo2/c;->a(Lo2/c;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Ld2/c;->c(Landroid/content/Context;)Ld2/c;

    move-result-object v2

    invoke-virtual {v2}, Ld2/c;->d()Z

    move-result v2

    const-string v3, "SyncLogic"

    if-eqz v2, :cond_0

    iget-object v2, p0, Lo2/c$b;->a:Lo2/c;

    invoke-static {v2}, Lo2/c;->a(Lo2/c;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Ld2/c;->c(Landroid/content/Context;)Ld2/c;

    move-result-object v2

    invoke-virtual {v2}, Ld2/c;->i()V

    goto :goto_0

    :cond_0
    const-string v2, "initSyncLogic() : ignore registering push!"

    invoke-static {v3, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v2, p0, Lo2/c$b;->a:Lo2/c;

    invoke-static {v2}, Lo2/c;->a(Lo2/c;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lc3/h;->q(Landroid/content/Context;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreateSyncThread Finish - elapsed time : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
