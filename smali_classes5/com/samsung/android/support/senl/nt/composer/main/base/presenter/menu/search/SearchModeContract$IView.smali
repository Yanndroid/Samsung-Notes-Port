.class public interface abstract Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModeContract$IView;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModeContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IView"
.end annotation


# virtual methods
.method public abstract getView()Landroid/view/View;
.end method

.method public abstract hasFocusSearchText()Z
.end method

.method public abstract hide()V
.end method

.method public abstract isShowing()Z
.end method

.method public abstract release()V
.end method

.method public abstract setColorTheme(IZZ)V
.end method

.method public abstract setSearchText(Ljava/lang/String;)V
.end method

.method public abstract show(Ljava/lang/String;)V
.end method

.method public abstract updateMoveButton(ZZ)V
.end method
