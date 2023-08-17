.class Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public oldProgress:I

.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout$4;->this$0:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout$4;->oldProgress:I

    return-void
.end method


# virtual methods
.method public onChanged(IZ)V
    .locals 4

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout$4;->this$0:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;

    invoke-static {p2}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;->access$200(Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;)Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    move-result-object p2

    if-eqz p2, :cond_2

    iget p2, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout$4;->oldProgress:I

    if-ne p2, p1, :cond_0

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout$4;->oldProgress:I

    int-to-float p2, p1

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p2, v0

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout$4;->this$0:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;->access$200(Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;)Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    move-result-object v0

    shl-int/lit8 v1, p2, 0x18

    const/high16 v2, -0x1000000

    and-int/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout$4;->this$0:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;

    invoke-static {v2}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;->access$200(Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;)Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    move-result-object v2

    iget v2, v2, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    const v3, 0xffffff

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    const/4 p1, 0x1

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout$4;->this$0:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;

    invoke-static {v1}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;->access$200(Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;)Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    move-result-object v1

    iget v1, v1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, p1

    const-string p1, "%d%% - #%08X"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "SpenBrushPenSettingLayout"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout$4;->this$0:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;->access$100(Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;)Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingChildUpdater;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout$4;->this$0:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;->access$100(Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;)Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingChildUpdater;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingChildUpdater;->setAlpha(I)V

    :cond_2
    :goto_0
    return-void
.end method
