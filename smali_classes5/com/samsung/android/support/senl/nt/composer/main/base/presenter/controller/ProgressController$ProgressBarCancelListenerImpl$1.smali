.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ProgressController$ProgressBarCancelListenerImpl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$ICancelCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ProgressController$ProgressBarCancelListenerImpl;->onCancel(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ProgressController$ProgressBarCancelListenerImpl;

.field public final synthetic val$dialog:Landroid/content/DialogInterface;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ProgressController$ProgressBarCancelListenerImpl;Landroid/content/DialogInterface;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ProgressController$ProgressBarCancelListenerImpl$1;->this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ProgressController$ProgressBarCancelListenerImpl;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ProgressController$ProgressBarCancelListenerImpl$1;->val$dialog:Landroid/content/DialogInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ProgressController$ProgressBarCancelListenerImpl$1;->val$dialog:Landroid/content/DialogInterface;

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :cond_0
    return-void
.end method
