.class public interface abstract Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/ICustomToolbar;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/ICustomToolbar$VisibilityChangedListener;,
        Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/ICustomToolbar$TitleCallback;
    }
.end annotation


# virtual methods
.method public abstract addCustomView(Landroid/view/View;I)V
    .param p2    # I
        .annotation build Landroidx/annotation/GravityInt;
        .end annotation
    .end param
.end method

.method public abstract getVisibility()I
.end method

.method public abstract hideToolbar(Z)V
.end method

.method public abstract removeCustomView(Landroid/view/View;)V
.end method

.method public abstract setAnimationListener(Landroid/animation/AnimatorListenerAdapter;)V
.end method

.method public abstract setDisplayHomeAsUpEnabled(Z)V
.end method

.method public abstract setNavigationContentDescription(I)V
.end method

.method public abstract setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V
.end method

.method public abstract setTitle(I)V
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
.end method

.method public abstract setTitle(Ljava/lang/CharSequence;)V
.end method

.method public abstract setTitle(Ljava/lang/CharSequence;Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/ICustomToolbar$TitleCallback;)V
.end method

.method public abstract setVisibility(I)V
.end method

.method public abstract setVisibilityChangedListener(Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/ICustomToolbar$VisibilityChangedListener;)V
.end method

.method public abstract showToolbar(Z)V
.end method
