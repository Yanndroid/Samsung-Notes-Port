.class Lcom/samsung/android/penup/internal/ProgressDialogHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/penup/internal/ProgressDialogHelper;->showProgressDialog(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/penup/internal/ProgressDialogHelper;


# direct methods
.method public constructor <init>(Lcom/samsung/android/penup/internal/ProgressDialogHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/penup/internal/ProgressDialogHelper$1;->this$0:Lcom/samsung/android/penup/internal/ProgressDialogHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/penup/internal/ProgressDialogHelper$1;->this$0:Lcom/samsung/android/penup/internal/ProgressDialogHelper;

    invoke-static {p1}, Lcom/samsung/android/penup/internal/ProgressDialogHelper;->access$000(Lcom/samsung/android/penup/internal/ProgressDialogHelper;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    iget-object p1, p0, Lcom/samsung/android/penup/internal/ProgressDialogHelper$1;->this$0:Lcom/samsung/android/penup/internal/ProgressDialogHelper;

    invoke-static {p1}, Lcom/samsung/android/penup/internal/ProgressDialogHelper;->access$100(Lcom/samsung/android/penup/internal/ProgressDialogHelper;)Lcom/samsung/android/penup/internal/ProgressDialogHelper$ProgressDialogListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/penup/internal/ProgressDialogHelper$1;->this$0:Lcom/samsung/android/penup/internal/ProgressDialogHelper;

    invoke-static {p1}, Lcom/samsung/android/penup/internal/ProgressDialogHelper;->access$100(Lcom/samsung/android/penup/internal/ProgressDialogHelper;)Lcom/samsung/android/penup/internal/ProgressDialogHelper$ProgressDialogListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/penup/internal/ProgressDialogHelper$ProgressDialogListener;->onCancel()V

    :cond_0
    return-void
.end method
