.class public Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/executor/ExecutorFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "ExecutorFactory"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/SOLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/executor/ExecutorFactory;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createExecutor(Landroid/content/Intent;)Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/executor/executors/AbsExecutor;
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/executor/ExecutorFactory;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createExecutor : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "NOTIFY_EXECUTION"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_1
    const-string v0, "SCREEN_OFF"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_2
    const-string v0, "PIN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_3
    const-string v0, "EXPOSE_SCREEN_OFF"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    new-instance p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/executor/executors/NoneExecutor;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/executor/executors/NoneExecutor;-><init>()V

    goto :goto_1

    :pswitch_0
    new-instance p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/executor/executors/NotifyExecutionExecutor;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/executor/executors/NotifyExecutionExecutor;-><init>()V

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/executor/ExecutorFactory$1;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/executor/ExecutorFactory$1;-><init>()V

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/executor/executors/NotifyExecutionExecutor;->setFactory(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/executor/executors/NotifyExecutionExecutor$IFactory;)V

    goto :goto_1

    :pswitch_1
    new-instance p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/executor/executors/ScreenOffExecutor;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/executor/executors/ScreenOffExecutor;-><init>()V

    goto :goto_1

    :pswitch_2
    new-instance p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/executor/executors/AODPinExecutor;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/executor/executors/AODPinExecutor;-><init>()V

    goto :goto_1

    :pswitch_3
    new-instance p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/executor/executors/AnimatorScreenOffExecutor;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/executor/executors/AnimatorScreenOffExecutor;-><init>()V

    :goto_1
    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x43b875a9 -> :sswitch_3
        0x13575 -> :sswitch_2
        0x41cfefc -> :sswitch_1
        0x7fb1d982 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
