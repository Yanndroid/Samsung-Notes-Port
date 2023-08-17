.class Landroidx/biometric/FingerprintDialogFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/biometric/FingerprintDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Landroidx/biometric/FingerprintDialogFragment;


# direct methods
.method public constructor <init>(Landroidx/biometric/FingerprintDialogFragment;)V
    .locals 0

    iput-object p1, p0, Landroidx/biometric/FingerprintDialogFragment$1;->this$0:Landroidx/biometric/FingerprintDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    iget-object p2, p0, Landroidx/biometric/FingerprintDialogFragment$1;->this$0:Landroidx/biometric/FingerprintDialogFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    iget-object v0, p0, Landroidx/biometric/FingerprintDialogFragment$1;->this$0:Landroidx/biometric/FingerprintDialogFragment;

    invoke-static {v0}, Landroidx/biometric/FingerprintDialogFragment;->access$500(Landroidx/biometric/FingerprintDialogFragment;)Landroid/os/Bundle;

    move-result-object v0

    new-instance v1, Landroidx/biometric/FingerprintDialogFragment$1$1;

    invoke-direct {v1, p0, p1}, Landroidx/biometric/FingerprintDialogFragment$1$1;-><init>(Landroidx/biometric/FingerprintDialogFragment$1;Landroid/content/DialogInterface;)V

    const-string p1, "FingerprintDialogFrag"

    invoke-static {p1, p2, v0, v1}, Landroidx/biometric/Utils;->launchDeviceCredentialConfirmation(Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;Landroid/os/Bundle;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
