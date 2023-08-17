.class Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnSliderButtonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout$8;->this$0:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onButtonClick()V
    .locals 2

    const-string v0, "SpenBrushPenSettingLayout"

    const-string v1, "onSizeButtonPressed()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout$8;->this$0:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;->access$500(Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;)V

    return-void
.end method

.method public onStartButtonLongClick()V
    .locals 0

    return-void
.end method

.method public onStopButtonLongClick()V
    .locals 2

    const-string v0, "SpenBrushPenSettingLayout"

    const-string v1, "onSizeButtonLongPressed()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout$8;->this$0:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;->access$500(Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;)V

    return-void
.end method
