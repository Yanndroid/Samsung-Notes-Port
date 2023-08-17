.class interface abstract Lcom/samsung/android/sdk/pen/setting/SpenLayoutInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final VIEW_COLOR:I = 0x4

.field public static final VIEW_SIZE:I = 0x1

.field public static final VIEW_TYPE:I = 0x2


# virtual methods
.method public abstract addActionButton(Ljava/lang/CharSequence;)Landroid/view/View;
.end method

.method public abstract attachChild(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
.end method

.method public abstract close()V
.end method

.method public abstract detachChild()V
.end method

.method public abstract getActionButtonCount()I
.end method

.method public abstract getViewMode()I
.end method

.method public abstract isVisibleAlphaView()Z
.end method

.method public abstract isVisiblePatternView()Z
.end method

.method public abstract isVisibleWidthView()Z
.end method

.method public abstract setAttributeVisibility(ZZZ)Z
.end method

.method public abstract setContentView(Landroid/widget/LinearLayout;)V
.end method

.method public abstract setPatternViewVisibility(Z)Z
.end method

.method public abstract setViewMode(I)Z
.end method
