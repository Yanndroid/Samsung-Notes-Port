.class final Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController$LastCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LastCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$ResultValues;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mCallback:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback<",
            "TR;>;"
        }
    .end annotation
.end field

.field private final mIsSuccess:Z

.field private final mResult:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$ResultValues;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$ResultValues;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback<",
            "TR;>;TR;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController$LastCallback;->mCallback:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController$LastCallback;->mResult:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$ResultValues;

    iput-boolean p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController$LastCallback;->mIsSuccess:Z

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController$LastCallback;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController$LastCallback;->mCallback:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController$LastCallback;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController$LastCallback;->mIsSuccess:Z

    return p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController$LastCallback;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$ResultValues;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController$LastCallback;->mResult:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$ResultValues;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController$LastCallback;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController$LastCallback;->setActivity(Landroid/app/Activity;)V

    return-void
.end method

.method private setActivity(Landroid/app/Activity;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController$LastCallback;->mCallback:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;

    instance-of v1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/CallbackWithActivity;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/CallbackWithActivity;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/CallbackWithActivity;->setActivity(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method
