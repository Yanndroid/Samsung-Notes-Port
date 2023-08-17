.class public interface abstract Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/item/HwToolbarItemManager$IHwToolbarMenu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/IToolbarMenu;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/item/HwToolbarItemManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IHwToolbarMenu"
.end annotation


# virtual methods
.method public abstract getColorTheme(I)I
.end method

.method public abstract hideDirectWrite()V
.end method

.method public abstract isDirectWriteUsing()Z
.end method

.method public abstract isSupportDirectWrite()Z
.end method

.method public abstract onMovePosition(Landroid/view/View;)V
.end method

.method public abstract requestItemOnToolbarMenu(Landroid/view/View;)V
.end method

.method public abstract setDirectWrite(Z)V
.end method

.method public abstract showDirectWrite()V
.end method
