.class public interface abstract Lcom/samsung/android/sdk/pen/setting/SpenBrushDropListener$ActionListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/setting/SpenBrushDropListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ActionListener"
.end annotation


# virtual methods
.method public abstract onActionEnded(Landroid/view/View;Z)V
.end method

.method public abstract onActionStarted(Landroid/view/View;)V
.end method

.method public abstract onColorPositionChanged(ILandroid/graphics/Rect;)V
.end method

.method public abstract onDragLocationChanged(Landroid/graphics/Rect;)V
.end method

.method public abstract onPenPositionChanged(ILandroid/graphics/Rect;)V
.end method
