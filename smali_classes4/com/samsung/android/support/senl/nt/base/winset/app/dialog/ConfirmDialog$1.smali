.class Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/ConfirmDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field public final synthetic val$onClickListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/ConfirmDialog;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/ConfirmDialog$1;->this$0:Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/ConfirmDialog;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/ConfirmDialog$1;->val$onClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/ConfirmDialog$1;->this$0:Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/ConfirmDialog;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/ConfirmDialog;->a(Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/ConfirmDialog;)Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics$LogParam;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/ConfirmDialog$1;->this$0:Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/ConfirmDialog;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/ConfirmDialog;->a(Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/ConfirmDialog;)Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics$LogParam;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics$LogParam;->insertLog()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/ConfirmDialog$1;->val$onClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :goto_0
    return-void
.end method
