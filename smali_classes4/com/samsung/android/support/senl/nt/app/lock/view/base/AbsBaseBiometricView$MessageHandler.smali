.class Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView$MessageHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MessageHandler"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;


# direct methods
.method private constructor <init>(Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView$MessageHandler;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;Lcom/samsung/android/support/senl/nt/app/lock/view/base/e;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView$MessageHandler;-><init>(Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;->f()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView$MessageHandler;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;->d(Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView$MessageHandler;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;->e(Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;)V

    :cond_1
    :goto_0
    return-void
.end method
