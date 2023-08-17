.class interface abstract Lcom/samsung/android/support/senl/cm/base/framework/view/DisplayCutoutCompat$WindowDisplayCutoutDelegateImpl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/cm/base/framework/view/DisplayCutoutCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WindowDisplayCutoutDelegateImpl"
.end annotation


# virtual methods
.method public abstract getBoundingRects(Landroid/view/WindowInsets;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/WindowInsets;",
            ")",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end method

.method public abstract setDisplayCutoutBGColor(Landroid/app/Activity;I)V
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract setDisplayCutoutMode(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/WindowManager$LayoutParams;
    .param p1    # Landroid/view/WindowManager$LayoutParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract setDisplayCutoutMode(Landroid/app/Activity;I)V
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method
