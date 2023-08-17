.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/UnlockConfirmDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/UnlockConfirmDialog;-><init>(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IUnlockConfirmDialogPresenter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/UnlockConfirmDialog;

.field public final synthetic val$activity:Landroid/app/Activity;

.field public final synthetic val$presenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IUnlockConfirmDialogPresenter;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/UnlockConfirmDialog;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IUnlockConfirmDialogPresenter;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/UnlockConfirmDialog$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/UnlockConfirmDialog;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/UnlockConfirmDialog$1;->val$presenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IUnlockConfirmDialogPresenter;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/UnlockConfirmDialog$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/UnlockConfirmDialog$1;->val$presenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IUnlockConfirmDialogPresenter;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/UnlockConfirmDialog$1;->val$activity:Landroid/app/Activity;

    invoke-interface {p2, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IUnlockConfirmDialogPresenter;->unlock(Landroid/app/Activity;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
