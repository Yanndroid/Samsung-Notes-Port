.class Landroidx/biometric/FingerprintHelperFragment$1$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/biometric/FingerprintHelperFragment$1;->onAuthenticationFailed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Landroidx/biometric/FingerprintHelperFragment$1;


# direct methods
.method public constructor <init>(Landroidx/biometric/FingerprintHelperFragment$1;)V
    .locals 0

    iput-object p1, p0, Landroidx/biometric/FingerprintHelperFragment$1$4;->this$1:Landroidx/biometric/FingerprintHelperFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Landroidx/biometric/FingerprintHelperFragment$1$4;->this$1:Landroidx/biometric/FingerprintHelperFragment$1;

    iget-object v0, v0, Landroidx/biometric/FingerprintHelperFragment$1;->this$0:Landroidx/biometric/FingerprintHelperFragment;

    iget-object v0, v0, Landroidx/biometric/FingerprintHelperFragment;->mClientAuthenticationCallback:Landroidx/biometric/BiometricPrompt$AuthenticationCallback;

    invoke-virtual {v0}, Landroidx/biometric/BiometricPrompt$AuthenticationCallback;->onAuthenticationFailed()V

    return-void
.end method
