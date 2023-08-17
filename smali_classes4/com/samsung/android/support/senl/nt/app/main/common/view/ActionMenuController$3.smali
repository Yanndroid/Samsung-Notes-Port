.class Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->inflateSelectAllLayout(Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController$OnClickSelectAllListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;

.field public final synthetic val$listener:Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController$OnClickSelectAllListener;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController$OnClickSelectAllListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController$3;->this$0:Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController$3;->val$listener:Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController$OnClickSelectAllListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController$3;->this$0:Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->c(Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;)Landroid/widget/CheckBox;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController$3;->this$0:Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->c(Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;)Landroid/widget/CheckBox;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController$3;->this$0:Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->c(Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController$3;->val$listener:Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController$OnClickSelectAllListener;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController$3;->this$0:Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->c(Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController$OnClickSelectAllListener;->onClick(Z)V

    return-void
.end method
