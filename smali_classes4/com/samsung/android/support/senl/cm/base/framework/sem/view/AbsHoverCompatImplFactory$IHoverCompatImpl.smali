.class public interface abstract Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsHoverCompatImplFactory$IHoverCompatImpl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsHoverCompatImplFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IHoverCompatImpl"
.end annotation


# static fields
.field public static final TYPE_NONE:I = 0x0

.field public static final TYPE_TOOLTIP:I = 0x1

.field public static final TYPE_USER_CUSTOM:I = 0x3

.field public static final TYPE_WIDGET_DEFAULT:I = 0x2


# virtual methods
.method public abstract dismiss(Landroid/view/View;)V
.end method

.method public abstract getHoverPopup(Landroid/view/View;)Ljava/lang/Object;
.end method

.method public abstract setCustomView(Landroid/view/View;Landroid/view/View;)V
.end method

.method public abstract setHoverScrollEnabled(Landroid/widget/AbsListView;Z)V
.end method

.method public abstract setPopupType(Landroid/view/View;I)V
.end method

.method public abstract setText(Landroid/view/View;Ljava/lang/CharSequence;)V
.end method

.method public abstract setThumb(Landroid/view/View;Landroid/view/View;)V
.end method

.method public abstract show(Landroid/view/View;I)V
.end method
