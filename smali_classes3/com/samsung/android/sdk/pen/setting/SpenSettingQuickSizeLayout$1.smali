.class Lcom/samsung/android/sdk/pen/setting/SpenSettingQuickSizeLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/setting/handwriting/SpenQuickSizeView$OnSliderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/pen/setting/SpenSettingQuickSizeLayout;->construct(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/setting/SpenSettingQuickSizeLayout;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/setting/SpenSettingQuickSizeLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingQuickSizeLayout$1;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenSettingQuickSizeLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLabelChanged(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingQuickSizeLayout$1;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenSettingQuickSizeLayout;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingQuickSizeLayout;->access$000(Lcom/samsung/android/sdk/pen/setting/SpenSettingQuickSizeLayout;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingQuickSizeLayout$1;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenSettingQuickSizeLayout;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingQuickSizeLayout;->access$100(Lcom/samsung/android/sdk/pen/setting/SpenSettingQuickSizeLayout;)Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenSizePreview;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingQuickSizeLayout$1;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenSettingQuickSizeLayout;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingQuickSizeLayout;->access$100(Lcom/samsung/android/sdk/pen/setting/SpenSettingQuickSizeLayout;)Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenSizePreview;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenSizePreview;->setSizeLevel(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingQuickSizeLayout$1;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenSettingQuickSizeLayout;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingQuickSizeLayout;->access$500(Lcom/samsung/android/sdk/pen/setting/SpenSettingQuickSizeLayout;I)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingQuickSizeLayout$1;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenSettingQuickSizeLayout;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingQuickSizeLayout;->access$600(Lcom/samsung/android/sdk/pen/setting/SpenSettingQuickSizeLayout;)Lcom/samsung/android/sdk/pen/setting/SpenSettingQuickSizeLayout$OnSliderLabelListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingQuickSizeLayout$1;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenSettingQuickSizeLayout;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingQuickSizeLayout;->access$600(Lcom/samsung/android/sdk/pen/setting/SpenSettingQuickSizeLayout;)Lcom/samsung/android/sdk/pen/setting/SpenSettingQuickSizeLayout$OnSliderLabelListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenQuickSizeView$OnSliderListener;->onLabelChanged(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onLabelStateChanged(Landroid/view/View;Lcom/samsung/android/sdk/pen/setting/handwriting/SpenQuickSizeView$OnSliderListener$LabelState;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingQuickSizeLayout$1;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenSettingQuickSizeLayout;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingQuickSizeLayout;->access$000(Lcom/samsung/android/sdk/pen/setting/SpenSettingQuickSizeLayout;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingQuickSizeLayout$1;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenSettingQuickSizeLayout;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingQuickSizeLayout;->access$100(Lcom/samsung/android/sdk/pen/setting/SpenSettingQuickSizeLayout;)Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenSizePreview;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenQuickSizeView$OnSliderListener$LabelState;->SHOW:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenQuickSizeView$OnSliderListener$LabelState;

    invoke-virtual {p2, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingQuickSizeLayout$1;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenSettingQuickSizeLayout;

    invoke-static {v1, p1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingQuickSizeLayout;->access$202(Lcom/samsung/android/sdk/pen/setting/SpenSettingQuickSizeLayout;Landroid/view/View;)Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingQuickSizeLayout$1;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenSettingQuickSizeLayout;

    invoke-static {v1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingQuickSizeLayout;->access$300(Lcom/samsung/android/sdk/pen/setting/SpenSettingQuickSizeLayout;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingQuickSizeLayout$1;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenSettingQuickSizeLayout;

    invoke-static {v1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingQuickSizeLayout;->access$400(Lcom/samsung/android/sdk/pen/setting/SpenSettingQuickSizeLayout;)Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingQuickSizeLayout$1;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenSettingQuickSizeLayout;

    invoke-static {v1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingQuickSizeLayout;->access$400(Lcom/samsung/android/sdk/pen/setting/SpenSettingQuickSizeLayout;)Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->sizeLevel:I

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingQuickSizeLayout$1;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenSettingQuickSizeLayout;

    invoke-static {v1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingQuickSizeLayout;->access$100(Lcom/samsung/android/sdk/pen/setting/SpenSettingQuickSizeLayout;)Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenSizePreview;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingQuickSizeLayout$1;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenSettingQuickSizeLayout;

    invoke-static {v2}, Lcom/samsung/android/sdk/pen/setting/SpenSettingQuickSizeLayout;->access$400(Lcom/samsung/android/sdk/pen/setting/SpenSettingQuickSizeLayout;)Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenSizePreview;->setPenInfo(Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingQuickSizeLayout$1;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenSettingQuickSizeLayout;

    invoke-static {v1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingQuickSizeLayout;->access$400(Lcom/samsung/android/sdk/pen/setting/SpenSettingQuickSizeLayout;)Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    move-result-object v2

    iget v2, v2, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->sizeLevel:I

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/pen/setting/SpenSettingQuickSizeLayout;->access$500(Lcom/samsung/android/sdk/pen/setting/SpenSettingQuickSizeLayout;I)V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingQuickSizeLayout$1;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenSettingQuickSizeLayout;

    invoke-static {v1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingQuickSizeLayout;->access$100(Lcom/samsung/android/sdk/pen/setting/SpenSettingQuickSizeLayout;)Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenSizePreview;

    move-result-object v1

    invoke-virtual {p2, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingQuickSizeLayout$1;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenSettingQuickSizeLayout;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingQuickSizeLayout;->access$600(Lcom/samsung/android/sdk/pen/setting/SpenSettingQuickSizeLayout;)Lcom/samsung/android/sdk/pen/setting/SpenSettingQuickSizeLayout$OnSliderLabelListener;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingQuickSizeLayout$1;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenSettingQuickSizeLayout;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingQuickSizeLayout;->access$600(Lcom/samsung/android/sdk/pen/setting/SpenSettingQuickSizeLayout;)Lcom/samsung/android/sdk/pen/setting/SpenSettingQuickSizeLayout$OnSliderLabelListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenQuickSizeView$OnSliderListener;->onLabelStateChanged(Landroid/view/View;Lcom/samsung/android/sdk/pen/setting/handwriting/SpenQuickSizeView$OnSliderListener$LabelState;Ljava/lang/String;)V

    :cond_3
    return-void
.end method
