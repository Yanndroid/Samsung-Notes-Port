.class Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController$1;
.super Lcom/samsung/android/support/senl/nt/app/common/listener/OffsetUpdateListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->initExtendedToolbar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;

    invoke-direct {p0, p2}, Lcom/samsung/android/support/senl/nt/app/common/listener/OffsetUpdateListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOffsetChanged(Lcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/common/listener/OffsetUpdateListener;->onOffsetChanged(Lcom/google/android/material/appbar/AppBarLayout;I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    move p2, v1

    :goto_0
    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->e(Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;Z)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->a(Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;)Lcom/google/android/material/appbar/AppBarLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->seslIsCollapsed()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;

    invoke-static {p1, v1}, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->e(Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;Z)V

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;

    iget-object p2, p1, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mCheckInfoText:Landroid/widget/TextView;

    if-nez p2, :cond_2

    return-void

    :cond_2
    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->d(Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mCheckInfoText:Landroid/widget/TextView;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setImportantForAccessibility(I)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->mCheckInfoText:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setImportantForAccessibility(I)V

    :goto_1
    return-void
.end method
