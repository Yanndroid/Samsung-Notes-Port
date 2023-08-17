.class public interface abstract Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout$ChildOrientationChangedListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ChildOrientationChangedListener"
.end annotation


# static fields
.field public static final ORIENTATION_LANDSCAPE:I = 0x2

.field public static final ORIENTATION_PORTRAIT:I = 0x1


# virtual methods
.method public abstract onColorViewOrientationChanged(I)V
.end method

.method public abstract onPenViewOrientationChanged(I)V
.end method
