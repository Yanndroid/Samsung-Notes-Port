.class public Lw2/d$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw2/d;->k(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:[Z

.field public final synthetic b:Lw2/d;


# direct methods
.method public constructor <init>(Lw2/d;[Z)V
    .locals 0

    iput-object p1, p0, Lw2/d$b;->b:Lw2/d;

    iput-object p2, p0, Lw2/d$b;->a:[Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "run() : result = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lw2/d$b;->a:[Z

    const/4 v2, 0x0

    aget-boolean v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SyncNote/SyncSDocxCreateTempLocalNote"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lw2/d$b;->b:Lw2/d;

    invoke-static {v0}, Lw2/d;->h(Lw2/d;)Lcom/samsung/android/support/senl/nt/base/common/sync/ITempServerNoteListener;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lw2/d$b;->a:[Z

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lw2/d$b;->b:Lw2/d;

    invoke-static {v0}, Lw2/d;->h(Lw2/d;)Lcom/samsung/android/support/senl/nt/base/common/sync/ITempServerNoteListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/base/common/sync/ITempServerNoteListener;->onReceived()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lw2/d$b;->b:Lw2/d;

    invoke-static {v0}, Lw2/d;->h(Lw2/d;)Lcom/samsung/android/support/senl/nt/base/common/sync/ITempServerNoteListener;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/samsung/android/support/senl/nt/base/common/sync/ITempServerNoteListener;->onFailed(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "perform() : After calling a listener, Exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "run() : No listener"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
