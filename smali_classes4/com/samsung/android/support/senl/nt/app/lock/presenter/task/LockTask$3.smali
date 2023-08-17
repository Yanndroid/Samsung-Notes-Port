.class Lcom/samsung/android/support/senl/nt/app/lock/presenter/task/LockTask$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/lock/presenter/task/LockTask;->toCallableSetUnLockNotes(Lcom/samsung/android/support/senl/nt/app/lock/presenter/task/LockTask$DocumentInfo;)Ljava/util/concurrent/Callable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/lock/presenter/task/LockTask;

.field public final synthetic val$docInfo:Lcom/samsung/android/support/senl/nt/app/lock/presenter/task/LockTask$DocumentInfo;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/lock/presenter/task/LockTask;Lcom/samsung/android/support/senl/nt/app/lock/presenter/task/LockTask$DocumentInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/task/LockTask$3;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/presenter/task/LockTask;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/task/LockTask$3;->val$docInfo:Lcom/samsung/android/support/senl/nt/app/lock/presenter/task/LockTask$DocumentInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/task/LockTask$3;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 4

    const-string v0, "LockTask"

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/task/LockTask$3;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/presenter/task/LockTask;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/task/LockTask;->a(Lcom/samsung/android/support/senl/nt/app/lock/presenter/task/LockTask;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/task/LockTask$3;->val$docInfo:Lcom/samsung/android/support/senl/nt/app/lock/presenter/task/LockTask$DocumentInfo;

    iget-object v3, v3, Lcom/samsung/android/support/senl/nt/app/lock/presenter/task/LockTask$DocumentInfo;->uuid:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/support/senl/nt/data/resolver/lock/DocumentLockResolver;->unlock(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/samsung/android/support/senl/nt/app/lock/presenter/task/LockTask;->mLockTaskSuccess:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "toCallableSetUnLockNotes# success - isSdoc : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/task/LockTask$3;->val$docInfo:Lcom/samsung/android/support/senl/nt/app/lock/presenter/task/LockTask$DocumentInfo;

    iget-boolean v2, v2, Lcom/samsung/android/support/senl/nt/app/lock/presenter/task/LockTask$DocumentInfo;->isSdoc:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "toCallableSetUnLockNotes# failed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method
