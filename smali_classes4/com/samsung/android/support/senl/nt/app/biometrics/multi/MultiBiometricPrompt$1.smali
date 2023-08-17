.class Lcom/samsung/android/support/senl/nt/app/biometrics/multi/MultiBiometricPrompt$1;
.super Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/biometrics/multi/MultiBiometricPrompt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/biometrics/multi/MultiBiometricPrompt;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/biometrics/multi/MultiBiometricPrompt;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/biometrics/multi/MultiBiometricPrompt$1;->this$0:Lcom/samsung/android/support/senl/nt/app/biometrics/multi/MultiBiometricPrompt;

    invoke-direct {p0}, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAuthenticationError : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Biometrics$MultiBiometricPrompt"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/biometrics/multi/MultiBiometricPrompt$1;->this$0:Lcom/samsung/android/support/senl/nt/app/biometrics/multi/MultiBiometricPrompt;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/biometrics/multi/MultiBiometricPrompt;->b(Lcom/samsung/android/support/senl/nt/app/biometrics/multi/MultiBiometricPrompt;)Lcom/samsung/android/support/senl/nt/app/biometrics/multi/MultiBiometricPrompt$IMultiBiometricListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/biometrics/multi/MultiBiometricPrompt$IMultiBiometricListener;->onAuthenticationCanceled()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/biometrics/multi/MultiBiometricPrompt$1;->this$0:Lcom/samsung/android/support/senl/nt/app/biometrics/multi/MultiBiometricPrompt;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/biometrics/multi/MultiBiometricPrompt;->b(Lcom/samsung/android/support/senl/nt/app/biometrics/multi/MultiBiometricPrompt;)Lcom/samsung/android/support/senl/nt/app/biometrics/multi/MultiBiometricPrompt$IMultiBiometricListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/biometrics/multi/MultiBiometricPrompt$IMultiBiometricListener;->onAuthenticationError(ILjava/lang/CharSequence;)V

    return-void
.end method

.method public onAuthenticationFailed()V
    .locals 2

    const-string v0, "Biometrics$MultiBiometricPrompt"

    const-string v1, "onAuthenticationFailed"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/biometrics/multi/MultiBiometricPrompt$1;->this$0:Lcom/samsung/android/support/senl/nt/app/biometrics/multi/MultiBiometricPrompt;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/biometrics/multi/MultiBiometricPrompt;->b(Lcom/samsung/android/support/senl/nt/app/biometrics/multi/MultiBiometricPrompt;)Lcom/samsung/android/support/senl/nt/app/biometrics/multi/MultiBiometricPrompt$IMultiBiometricListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/biometrics/multi/MultiBiometricPrompt$IMultiBiometricListener;->onAuthenticationFailed()V

    return-void
.end method

.method public onAuthenticationHelp(ILjava/lang/CharSequence;)V
    .locals 1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onAuthenticationHelp : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Biometrics$MultiBiometricPrompt"

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAuthenticationSucceeded(Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;)V
    .locals 1

    const-string p1, "Biometrics$MultiBiometricPrompt"

    const-string v0, "onAuthenticationSucceeded"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/biometrics/multi/MultiBiometricPrompt$1;->this$0:Lcom/samsung/android/support/senl/nt/app/biometrics/multi/MultiBiometricPrompt;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/biometrics/multi/MultiBiometricPrompt;->b(Lcom/samsung/android/support/senl/nt/app/biometrics/multi/MultiBiometricPrompt;)Lcom/samsung/android/support/senl/nt/app/biometrics/multi/MultiBiometricPrompt$IMultiBiometricListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/biometrics/multi/MultiBiometricPrompt$IMultiBiometricListener;->onAuthenticationSucceeded()V

    return-void
.end method
