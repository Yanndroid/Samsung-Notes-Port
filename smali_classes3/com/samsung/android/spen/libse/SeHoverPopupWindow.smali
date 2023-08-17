.class public Lcom/samsung/android/spen/libse/SeHoverPopupWindow;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/spen/libinterface/HoverPopupWindowInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/spen/libse/SeHoverPopupWindow$Gravity;
    }
.end annotation


# static fields
.field public static TYPE_NONE:I = 0x0

.field public static TYPE_TOOLTIP:I = 0x1

.field public static TYPE_USER_CUSTOM:I = 0x3

.field public static TYPE_WIDGET_DEFAULT:I = 0x2


# instance fields
.field public instance:Lcom/samsung/android/widget/SemHoverPopupWindow;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/widget/SemHoverPopupWindow;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/spen/libse/SeHoverPopupWindow;->instance:Lcom/samsung/android/widget/SemHoverPopupWindow;

    return-void
.end method


# virtual methods
.method public setContent(Landroid/view/View;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/spen/libse/SeHoverPopupWindow;->instance:Lcom/samsung/android/widget/SemHoverPopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/widget/SemHoverPopupWindow;->setContent(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    throw p1
.end method

.method public setContent(Ljava/lang/CharSequence;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/spen/libse/SeHoverPopupWindow;->instance:Lcom/samsung/android/widget/SemHoverPopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/widget/SemHoverPopupWindow;->setContent(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    throw p1
.end method

.method public setGravity(I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/spen/libse/SeHoverPopupWindow;->instance:Lcom/samsung/android/widget/SemHoverPopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/widget/SemHoverPopupWindow;->setGravity(I)V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    throw p1
.end method

.method public setHoverPopupListener(Lcom/samsung/android/spen/libinterface/HoverPopupWindowInterface$HoverPopupWindowListenerCallback;)V
    .locals 1

    :try_start_0
    new-instance v0, Lcom/samsung/android/spen/libse/SeHoverPopupWindow$1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/spen/libse/SeHoverPopupWindow$1;-><init>(Lcom/samsung/android/spen/libse/SeHoverPopupWindow;Lcom/samsung/android/spen/libinterface/HoverPopupWindowInterface$HoverPopupWindowListenerCallback;)V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    throw p1
.end method

.method public setOffset(II)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/spen/libse/SeHoverPopupWindow;->instance:Lcom/samsung/android/widget/SemHoverPopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/widget/SemHoverPopupWindow;->setOffset(II)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    throw p1

    :catch_2
    move-exception p1

    throw p1
.end method

.method public show()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/spen/libse/SeHoverPopupWindow;->instance:Lcom/samsung/android/widget/SemHoverPopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->show()V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    throw v0
.end method

.method public show(I)V
    .locals 0

    :try_start_0
    iget-object p1, p0, Lcom/samsung/android/spen/libse/SeHoverPopupWindow;->instance:Lcom/samsung/android/widget/SemHoverPopupWindow;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/widget/SemHoverPopupWindow;->show()V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    throw p1
.end method
