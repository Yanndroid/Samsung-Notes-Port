.class public Lcom/samsung/android/spen/libsdl/SdlHoverPopupWindow;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/spen/libinterface/HoverPopupWindowInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/spen/libsdl/SdlHoverPopupWindow$Gravity;
    }
.end annotation


# static fields
.field public static TYPE_NONE:I = 0x0

.field public static TYPE_TOOLTIP:I = 0x1

.field public static TYPE_USER_CUSTOM:I = 0x3

.field public static TYPE_WIDGET_DEFAULT:I = 0x2


# instance fields
.field public instance:Landroid/widget/HoverPopupWindow;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/widget/HoverPopupWindow;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/spen/libsdl/SdlHoverPopupWindow;->instance:Landroid/widget/HoverPopupWindow;

    return-void
.end method


# virtual methods
.method public setContent(Landroid/view/View;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/spen/libsdl/SdlHoverPopupWindow;->instance:Landroid/widget/HoverPopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/HoverPopupWindow;->setContent(Landroid/view/View;)V
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
    iget-object v0, p0, Lcom/samsung/android/spen/libsdl/SdlHoverPopupWindow;->instance:Landroid/widget/HoverPopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/HoverPopupWindow;->setContent(Ljava/lang/CharSequence;)V
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
    iget-object v0, p0, Lcom/samsung/android/spen/libsdl/SdlHoverPopupWindow;->instance:Landroid/widget/HoverPopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/HoverPopupWindow;->setPopupGravity(I)V
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
    new-instance v0, Lcom/samsung/android/spen/libsdl/SdlHoverPopupWindow$1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/spen/libsdl/SdlHoverPopupWindow$1;-><init>(Lcom/samsung/android/spen/libsdl/SdlHoverPopupWindow;Lcom/samsung/android/spen/libinterface/HoverPopupWindowInterface$HoverPopupWindowListenerCallback;)V
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
    iget-object v0, p0, Lcom/samsung/android/spen/libsdl/SdlHoverPopupWindow;->instance:Landroid/widget/HoverPopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V
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
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/spen/libsdl/SdlHoverPopupWindow;->instance:Landroid/widget/HoverPopupWindow;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/HoverPopupWindow;->show(I)V
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
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/spen/libsdl/SdlHoverPopupWindow;->instance:Landroid/widget/HoverPopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/HoverPopupWindow;->show(I)V
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
