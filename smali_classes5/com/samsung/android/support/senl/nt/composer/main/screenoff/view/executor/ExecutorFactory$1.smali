.class Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/executor/ExecutorFactory$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/executor/executors/NotifyExecutionExecutor$IFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/executor/ExecutorFactory;->createExecutor(Landroid/content/Intent;)Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/executor/executors/AbsExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createExecutor(Landroid/content/Intent;)Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/executor/executors/AbsExecutor;
    .locals 0

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/executor/ExecutorFactory;->createExecutor(Landroid/content/Intent;)Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/executor/executors/AbsExecutor;

    move-result-object p1

    return-object p1
.end method
