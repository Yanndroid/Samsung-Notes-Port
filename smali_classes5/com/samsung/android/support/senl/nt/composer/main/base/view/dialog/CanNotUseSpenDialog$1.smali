.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/CanNotUseSpenDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/CanNotUseSpenDialog;-><init>(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$ICanNotUseSpenDialogPresenter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/CanNotUseSpenDialog;

.field public final synthetic val$presenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$ICanNotUseSpenDialogPresenter;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/CanNotUseSpenDialog;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$ICanNotUseSpenDialogPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/CanNotUseSpenDialog$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/CanNotUseSpenDialog;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/CanNotUseSpenDialog$1;->val$presenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$ICanNotUseSpenDialogPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/CanNotUseSpenDialog$1;->val$presenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$ICanNotUseSpenDialogPresenter;

    invoke-interface {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$ICanNotUseSpenDialogPresenter;->onClicked()V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
