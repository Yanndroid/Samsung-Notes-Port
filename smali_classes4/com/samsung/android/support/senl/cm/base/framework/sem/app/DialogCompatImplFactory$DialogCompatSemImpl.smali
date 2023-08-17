.class Lcom/samsung/android/support/senl/cm/base/framework/sem/app/DialogCompatImplFactory$DialogCompatSemImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/cm/base/framework/sem/app/AbsDialogCompatImplFactory$IDialogCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/cm/base/framework/sem/app/DialogCompatImplFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DialogCompatSemImpl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/cm/base/framework/sem/app/e;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/cm/base/framework/sem/app/DialogCompatImplFactory$DialogCompatSemImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getDefaultAnchorType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getToolbarAnchorType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setDialogAnchor(Landroid/app/Dialog;II)V
    .locals 0

    invoke-virtual {p1, p2, p3}, Landroid/app/Dialog;->semSetAnchor(II)V

    return-void
.end method

.method public setDialogAnchor(Landroid/app/Dialog;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->semSetAnchor(Landroid/view/View;)V

    return-void
.end method

.method public setDialogAnchor(Landroid/app/Dialog;Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p1, p2, p3}, Landroid/app/Dialog;->semSetAnchor(Landroid/view/View;I)V

    return-void
.end method
