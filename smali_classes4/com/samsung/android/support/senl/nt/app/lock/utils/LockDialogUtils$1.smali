.class Lcom/samsung/android/support/senl/nt/app/lock/utils/LockDialogUtils$1;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/lock/utils/LockDialogUtils;->showTimerDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;I)Landroidx/appcompat/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public time:I

.field public final synthetic val$context:Landroid/content/Context;

.field public final synthetic val$dialog:Landroidx/appcompat/app/AlertDialog;

.field public final synthetic val$mainHandler:Landroid/os/Handler;

.field public final synthetic val$startTime:I

.field public final synthetic val$timer:Ljava/util/Timer;


# direct methods
.method public constructor <init>(ILjava/util/Timer;Landroidx/appcompat/app/AlertDialog;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/utils/LockDialogUtils$1;->val$startTime:I

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/lock/utils/LockDialogUtils$1;->val$timer:Ljava/util/Timer;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/app/lock/utils/LockDialogUtils$1;->val$dialog:Landroidx/appcompat/app/AlertDialog;

    iput-object p4, p0, Lcom/samsung/android/support/senl/nt/app/lock/utils/LockDialogUtils$1;->val$context:Landroid/content/Context;

    iput-object p5, p0, Lcom/samsung/android/support/senl/nt/app/lock/utils/LockDialogUtils$1;->val$mainHandler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/utils/LockDialogUtils$1;->time:I

    return-void
.end method

.method public static synthetic a(Landroidx/appcompat/app/AlertDialog;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/support/senl/nt/app/lock/utils/LockDialogUtils$1;->lambda$run$0(Landroidx/appcompat/app/AlertDialog;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$run$0(Landroidx/appcompat/app/AlertDialog;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/utils/LockDialogUtils$1;->time:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/utils/LockDialogUtils$1;->val$timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/utils/LockDialogUtils$1;->val$dialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/utils/LockDialogUtils$1;->val$dialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    move v1, v2

    :cond_0
    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/utils/LockDialogUtils$1;->val$dialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    :cond_1
    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/lock/utils/LockDialogUtils;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "run#, isAttached : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/utils/LockDialogUtils$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/samsung/android/support/senl/nt/app/R$plurals;->lock_out_dialog_message:I

    iget v4, p0, Lcom/samsung/android/support/senl/nt/app/lock/utils/LockDialogUtils$1;->time:I

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/lock/utils/LockDialogUtils$1;->val$mainHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/lock/utils/LockDialogUtils$1;->val$dialog:Landroidx/appcompat/app/AlertDialog;

    new-instance v4, Lcom/samsung/android/support/senl/nt/app/lock/utils/a;

    invoke-direct {v4, v3, v0}, Lcom/samsung/android/support/senl/nt/app/lock/utils/a;-><init>(Landroidx/appcompat/app/AlertDialog;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/utils/LockDialogUtils$1;->time:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/utils/LockDialogUtils$1;->time:I

    return-void
.end method
