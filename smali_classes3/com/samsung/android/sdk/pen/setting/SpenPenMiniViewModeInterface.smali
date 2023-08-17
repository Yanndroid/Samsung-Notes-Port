.class interface abstract Lcom/samsung/android/sdk/pen/setting/SpenPenMiniViewModeInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final VIEW_MODE_NORMAL:I = 0x1

.field public static final VIEW_MODE_POPUP:I = 0x2


# virtual methods
.method public abstract getNormalView(Landroid/view/View$OnClickListener;)Landroid/view/View;
.end method

.method public abstract getPopupView()Landroid/view/View;
.end method

.method public abstract getViewMode()I
.end method

.method public abstract setNormalViewTooltip(Z)V
.end method

.method public abstract setViewMode(IZ)V
.end method
