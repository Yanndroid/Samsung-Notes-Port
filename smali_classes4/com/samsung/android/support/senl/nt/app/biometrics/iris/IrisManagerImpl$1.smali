.class Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisManagerImpl$1;
.super Lcom/samsung/android/camera/sdk/iris/SIrisManager$AuthenticationCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisManagerImpl;->authenticate(Landroid/content/Context;Landroid/view/View;Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi$OnAuthenticationListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisManagerImpl;

.field public final synthetic val$listener:Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi$OnAuthenticationListener;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisManagerImpl;Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi$OnAuthenticationListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisManagerImpl$1;->this$0:Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisManagerImpl;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisManagerImpl$1;->val$listener:Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi$OnAuthenticationListener;

    invoke-direct {p0}, Lcom/samsung/android/camera/sdk/iris/SIrisManager$AuthenticationCallback;-><init>()V

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

    const-string v1, "Biometrics$IrisManagerImpl"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisManagerImpl$1;->val$listener:Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi$OnAuthenticationListener;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi$OnAuthenticationListener;->onAuthenticationError(ILjava/lang/CharSequence;)V

    return-void
.end method

.method public onAuthenticationFailed()V
    .locals 2

    const-string v0, "Biometrics$IrisManagerImpl"

    const-string v1, "onAuthenticationFailed"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisManagerImpl$1;->val$listener:Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi$OnAuthenticationListener;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi$OnAuthenticationListener;->onAuthenticationFailed()V

    return-void
.end method

.method public onAuthenticationHelp(ILjava/lang/CharSequence;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAuthenticationHelp : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Biometrics$IrisManagerImpl"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisManagerImpl$1;->val$listener:Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi$OnAuthenticationListener;

    invoke-interface {p1, p2}, Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi$OnAuthenticationListener;->onAuthenticationHelp(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onAuthenticationSucceeded(Lcom/samsung/android/camera/sdk/iris/SIrisManager$AuthenticationResult;)V
    .locals 1

    const-string p1, "Biometrics$IrisManagerImpl"

    const-string v0, "onAuthenticationSucceeded"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisManagerImpl$1;->val$listener:Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi$OnAuthenticationListener;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi$OnAuthenticationListener;->onAuthenticationSucceeded()V

    return-void
.end method

.method public onIRImage([BII)V
    .locals 2

    const-string v0, "Biometrics$IrisManagerImpl"

    const-string v1, "onIRImage"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/camera/sdk/iris/SIrisManager$AuthenticationCallback;->onIRImage([BII)V

    return-void
.end method
