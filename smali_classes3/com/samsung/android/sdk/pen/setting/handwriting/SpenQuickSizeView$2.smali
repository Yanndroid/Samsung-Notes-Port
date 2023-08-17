.class Lcom/samsung/android/sdk/pen/setting/handwriting/SpenQuickSizeView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider$OnLabelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/pen/setting/handwriting/SpenQuickSizeView;->construct(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenQuickSizeView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenQuickSizeView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenQuickSizeView$2;->this$0:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenQuickSizeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLabelChanged(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenQuickSizeView$2;->this$0:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenQuickSizeView;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenQuickSizeView;->access$100(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenQuickSizeView;)Lcom/samsung/android/sdk/pen/setting/handwriting/SpenQuickSizeView$OnSliderListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenQuickSizeView$2;->this$0:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenQuickSizeView;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenQuickSizeView;->access$100(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenQuickSizeView;)Lcom/samsung/android/sdk/pen/setting/handwriting/SpenQuickSizeView$OnSliderListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenQuickSizeView$OnSliderListener;->onLabelChanged(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onLabelStateChanged(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider$OnLabelListener$LabelState;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenQuickSizeView$2;->this$0:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenQuickSizeView;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenQuickSizeView;->access$100(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenQuickSizeView;)Lcom/samsung/android/sdk/pen/setting/handwriting/SpenQuickSizeView$OnSliderListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenQuickSizeView$2;->this$0:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenQuickSizeView;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenQuickSizeView;->access$100(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenQuickSizeView;)Lcom/samsung/android/sdk/pen/setting/handwriting/SpenQuickSizeView$OnSliderListener;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenQuickSizeView$2;->this$0:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenQuickSizeView;

    invoke-static {v1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenQuickSizeView;->access$200(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenQuickSizeView;)Landroid/view/View;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider$OnLabelListener$LabelState;->SHOW:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider$OnLabelListener$LabelState;

    invoke-virtual {p1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenQuickSizeView$OnSliderListener$LabelState;->SHOW:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenQuickSizeView$OnSliderListener$LabelState;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenQuickSizeView$OnSliderListener$LabelState;->HIDE:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenQuickSizeView$OnSliderListener$LabelState;

    :goto_0
    invoke-interface {v0, v1, p1, p2}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenQuickSizeView$OnSliderListener;->onLabelStateChanged(Landroid/view/View;Lcom/samsung/android/sdk/pen/setting/handwriting/SpenQuickSizeView$OnSliderListener$LabelState;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
