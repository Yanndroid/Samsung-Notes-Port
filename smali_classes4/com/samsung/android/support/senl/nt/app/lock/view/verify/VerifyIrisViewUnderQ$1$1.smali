.class Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyIrisViewUnderQ$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyIrisViewUnderQ$1;->onAuthenticationFailed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyIrisViewUnderQ$1;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyIrisViewUnderQ$1;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyIrisViewUnderQ$1$1;->this$1:Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyIrisViewUnderQ$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyIrisViewUnderQ$1$1;->this$1:Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyIrisViewUnderQ$1;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyIrisViewUnderQ$1;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyIrisViewUnderQ;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->lock_iris_dialog_no_match:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyIrisViewUnderQ;->i(Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyIrisViewUnderQ;Ljava/lang/CharSequence;)V

    return-void
.end method
