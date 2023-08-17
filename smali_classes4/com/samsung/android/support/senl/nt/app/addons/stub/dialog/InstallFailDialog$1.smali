.class Lcom/samsung/android/support/senl/nt/app/addons/stub/dialog/InstallFailDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/addons/stub/dialog/InstallFailDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/addons/stub/dialog/InstallFailDialog;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/addons/stub/dialog/InstallFailDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/addons/stub/dialog/InstallFailDialog$1;->this$0:Lcom/samsung/android/support/senl/nt/app/addons/stub/dialog/InstallFailDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/addons/stub/dialog/InstallFailDialog$1;->this$0:Lcom/samsung/android/support/senl/nt/app/addons/stub/dialog/InstallFailDialog;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/addons/stub/dialog/InstallFailDialog;->a(Lcom/samsung/android/support/senl/nt/app/addons/stub/dialog/InstallFailDialog;)Lcom/samsung/android/support/senl/nt/app/addons/stub/dialog/InstallFailDialog$IAddonsInstallFailDialog;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/addons/stub/dialog/InstallFailDialog$1;->this$0:Lcom/samsung/android/support/senl/nt/app/addons/stub/dialog/InstallFailDialog;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/addons/stub/dialog/InstallFailDialog;->a(Lcom/samsung/android/support/senl/nt/app/addons/stub/dialog/InstallFailDialog;)Lcom/samsung/android/support/senl/nt/app/addons/stub/dialog/InstallFailDialog$IAddonsInstallFailDialog;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/addons/stub/dialog/InstallFailDialog$IAddonsInstallFailDialog;->onDismiss()V

    :cond_0
    return-void
.end method
