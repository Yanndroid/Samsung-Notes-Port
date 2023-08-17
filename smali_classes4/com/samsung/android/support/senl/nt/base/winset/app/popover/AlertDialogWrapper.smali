.class public Lcom/samsung/android/support/senl/nt/base/winset/app/popover/AlertDialogWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/base/winset/app/popover/AlertDialogWrapper$AnchorType;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static anchorLayoutStyle(Landroid/app/Dialog;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/base/winset/app/popover/PopOverUtils;->isAbleToSetAnchor(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/samsung/android/support/senl/nt/base/R$dimen;->alert_dialog_popover_shadow:I

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/4 v2, 0x0

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    const/16 v2, 0x51

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/samsung/android/support/senl/nt/base/R$dimen;->alert_dialog_normal_shadow:I

    :goto_0
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {v0, p0}, Landroid/view/Window;->setElevation(F)V

    return-void
.end method

.method public static setAnchorView(Landroid/app/Dialog;Landroid/graphics/Point;)V
    .locals 2

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/winset/app/popover/PopOverUtils;->isAbleToSetAnchor(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/app/DialogCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/app/DialogCompat;

    move-result-object v0

    iget v1, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, p0, v1, p1}, Lcom/samsung/android/support/senl/cm/base/framework/app/DialogCompat;->setAnchorView(Landroid/app/Dialog;II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static setAnchorView(Landroid/app/Dialog;Landroid/view/View;)V
    .locals 1

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/winset/app/popover/PopOverUtils;->isAbleToSetAnchor(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/app/DialogCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/app/DialogCompat;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/app/DialogCompat;->setAnchorView(Landroid/app/Dialog;Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static setAnchorView(Landroid/app/Dialog;Landroid/view/View;I)V
    .locals 1
    .param p2    # I
        .annotation build Lcom/samsung/android/support/senl/nt/base/winset/app/popover/AlertDialogWrapper$AnchorType;
        .end annotation
    .end param

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/winset/app/popover/PopOverUtils;->isAbleToSetAnchor(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/app/DialogCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/app/DialogCompat;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/app/DialogCompat;->setAnchorView(Landroid/app/Dialog;Landroid/view/View;I)V

    :cond_1
    :goto_0
    return-void
.end method
