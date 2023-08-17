.class public interface abstract Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/RtMenuItem$IRtToolbarMenu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/IToolbarMenu;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/item/RtMenuItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IRtToolbarMenu"
.end annotation


# virtual methods
.method public abstract getColorTheme(I)I
.end method

.method public abstract getRtSettingPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/richtext/setting/RtSettingPresenter;
.end method

.method public abstract hideAllPopup()Z
.end method

.method public abstract hideDirectWrite()V
.end method

.method public abstract isDirectWriteRecognizing()Z
.end method

.method public abstract isDirectWriteUsing()Z
.end method

.method public abstract setDirectWrite(Z)V
.end method

.method public abstract showDirectWrite()V
.end method
