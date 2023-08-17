.class public Lcom/samsung/android/support/senl/nt/stt/view/layout/WindowFocusLayout;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/stt/view/layout/WindowFocusLayout$OnWindowFocusChangeListener;
    }
.end annotation


# instance fields
.field private mWindowFocusChangeListener:Lcom/samsung/android/support/senl/nt/stt/view/layout/WindowFocusLayout$OnWindowFocusChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public onWindowFocusChanged(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowFocusChanged(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/view/layout/WindowFocusLayout;->mWindowFocusChangeListener:Lcom/samsung/android/support/senl/nt/stt/view/layout/WindowFocusLayout$OnWindowFocusChangeListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/stt/view/layout/WindowFocusLayout$OnWindowFocusChangeListener;->onWindowFocusChanged(Z)V

    :cond_0
    return-void
.end method

.method public setOnWindowFocusChangeListener(Lcom/samsung/android/support/senl/nt/stt/view/layout/WindowFocusLayout$OnWindowFocusChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/stt/view/layout/WindowFocusLayout;->mWindowFocusChangeListener:Lcom/samsung/android/support/senl/nt/stt/view/layout/WindowFocusLayout$OnWindowFocusChangeListener;

    return-void
.end method
