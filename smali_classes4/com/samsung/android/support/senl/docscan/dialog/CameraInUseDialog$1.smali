.class Lcom/samsung/android/support/senl/docscan/dialog/CameraInUseDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/docscan/dialog/CameraInUseDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/docscan/dialog/CameraInUseDialog;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/docscan/dialog/CameraInUseDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/docscan/dialog/CameraInUseDialog$1;->this$0:Lcom/samsung/android/support/senl/docscan/dialog/CameraInUseDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p1, "CameraAccessErrorDialog"

    const-string p2, "onPositiveButtonClicked# "

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/docscan/common/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
