.class Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/ConfirmDialogFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/ConfirmDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/ConfirmDialogFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/ConfirmDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/ConfirmDialogFragment$1;->this$0:Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/ConfirmDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
