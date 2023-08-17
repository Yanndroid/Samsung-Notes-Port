.class Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiAccountDialogFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiAccountDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiAccountDialogFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiAccountDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiAccountDialogFragment$1;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiAccountDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiAccountDialogFragment$1;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiAccountDialogFragment;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiAccountDialogFragment;->a(Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiAccountDialogFragment;)Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiAccountDialogFragment$ResultListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiAccountDialogFragment$1;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiAccountDialogFragment;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiAccountDialogFragment;->a(Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiAccountDialogFragment;)Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiAccountDialogFragment$ResultListener;

    move-result-object p1

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiAccountDialogFragment$ResultListener;->onResult(Z)V

    :cond_0
    return-void
.end method
