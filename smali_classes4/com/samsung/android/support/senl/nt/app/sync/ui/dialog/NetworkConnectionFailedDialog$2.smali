.class Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog;->showWarningDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog$2;->this$0:Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog$2;->this$0:Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog;->e(Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog;Landroidx/appcompat/app/AlertDialog;)V

    const-string p1, "NT$NetworkConnectionFailedDialog"

    const-string v0, "onDismiss()"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog$2;->this$0:Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog;->finish()V

    return-void
.end method
