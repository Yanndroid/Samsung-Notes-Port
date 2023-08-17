.class Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyFingerprintViewUnderP$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyFingerprintViewUnderP$1;->onAuthenticationFailed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyFingerprintViewUnderP$1;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyFingerprintViewUnderP$1;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyFingerprintViewUnderP$1$1;->this$1:Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyFingerprintViewUnderP$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyFingerprintViewUnderP$1$1;->this$1:Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyFingerprintViewUnderP$1;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyFingerprintViewUnderP$1;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyFingerprintViewUnderP;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->lock_fingerprint_no_match:I

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyFingerprintViewUnderP;->g(Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyFingerprintViewUnderP;I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyFingerprintViewUnderP$1$1;->this$1:Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyFingerprintViewUnderP$1;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyFingerprintViewUnderP$1;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyFingerprintViewUnderP;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$drawable;->lock_fingerprint_no_match:I

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyFingerprintViewUnderP;->f(Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyFingerprintViewUnderP;I)V

    return-void
.end method
