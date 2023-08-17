.class Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsViewCompatImplFactory$ViewCompatPureImpl;
.super Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsViewCompatImplFactory$AbsViewCompatImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsViewCompatImplFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewCompatPureImpl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsViewCompatImplFactory$AbsViewCompatImpl;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/cm/base/framework/sem/view/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsViewCompatImplFactory$ViewCompatPureImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getHoveringSpenIconDefault()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getStylusScrollDownType()I
    .locals 1

    const/16 v0, 0xf

    return v0
.end method

.method public getStylusScrollLeftType()I
    .locals 1

    const/16 v0, 0x11

    return v0
.end method

.method public getStylusScrollRightType()I
    .locals 1

    const/16 v0, 0xd

    return v0
.end method

.method public getStylusScrollUpType()I
    .locals 1

    const/16 v0, 0xb

    return v0
.end method

.method public performHapticFeedback(Landroid/view/View;I)V
    .locals 0

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->performHapticFeedback(I)Z

    return-void
.end method

.method public requestAccessibilityFocus(Landroid/view/View;)V
    .locals 1

    const-string p1, "ViewCompat"

    const-string v0, "requestAccessibilityFocus"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setActionModeMenuItemEnabled(Landroid/widget/TextView;IZ)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setPointerIcon(Landroid/view/View;ILandroid/view/PointerIcon;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setRoundedCornerColor(Landroid/view/View;I)V
    .locals 0

    return-void
.end method

.method public setSystemUiVisibility(Landroid/view/View;I)V
    .locals 1

    invoke-virtual {p1, p2}, Landroid/view/View;->setSystemUiVisibility(I)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setSystemUiVisibility visibility : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ViewCompat"

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSystemUiVisibility(Landroid/view/View;IZZZ)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsViewCompatImplFactory$ViewCompatPureImpl;->setSystemUiVisibility(Landroid/view/View;I)V

    return-void
.end method

.method public setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    invoke-virtual {p1, p2}, Landroid/view/View;->setTooltipText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, Landroidx/appcompat/widget/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
