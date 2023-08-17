.class Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout$ChildSizeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout$1;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnColorViewSizeChanged(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout$1;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;->access$000(Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;)Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout$ChildLayoutChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout$1;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;->access$000(Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;)Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout$ChildLayoutChangedListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout$ChildLayoutChangedListener;->onColorRectSizeChanged(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public OnPenViewSizeChanged(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout$1;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;->access$000(Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;)Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout$ChildLayoutChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout$1;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;->access$000(Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;)Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout$ChildLayoutChangedListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout$ChildLayoutChangedListener;->onPenRectChanged(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method
