.class abstract Lcom/samsung/android/support/senl/nt/app/trigger/task/AbsTriggerTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/os/AsyncTask<",
        "TParams;TProgress;TResult;>;"
    }
.end annotation


# instance fields
.field public mContextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field public mDialogManager:Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/trigger/task/AbsTriggerTask;->mContextRef:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/trigger/task/AbsTriggerTask;->mDialogManager:Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;

    return-void
.end method


# virtual methods
.method public dismissDialog()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/trigger/task/AbsTriggerTask;->mDialogManager:Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/trigger/task/AbsTriggerTask;->mDialogManager:Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;

    :cond_0
    return-void
.end method

.method public onCancelled()V
    .locals 0

    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/trigger/task/AbsTriggerTask;->dismissDialog()V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/trigger/task/AbsTriggerTask;->release()V

    return-void
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/trigger/task/AbsTriggerTask;->mContextRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/trigger/task/AbsTriggerTask;->mContextRef:Ljava/lang/ref/WeakReference;

    :cond_0
    return-void
.end method
