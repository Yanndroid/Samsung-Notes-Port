.class Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/ConfirmDialog$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/ConfirmDialog;->buildDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)Lcom/samsung/android/support/senl/nt/base/winset/builder/AlertDialogBuilderForAppCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/ConfirmDialog;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/ConfirmDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/ConfirmDialog$2;->this$0:Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/ConfirmDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/ConfirmDialog$2;->this$0:Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/ConfirmDialog;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/ConfirmDialog;->b(Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/ConfirmDialog;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method
