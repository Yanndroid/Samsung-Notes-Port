.class Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl$OnSliderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout$7;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLabelChanged(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout$7;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->access$700(Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;)Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout$7;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->access$700(Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;)Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;->onLabelChanged(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout$7;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->access$800(Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;)Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout$OnSliderLabelListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout$7;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->access$800(Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;)Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout$OnSliderLabelListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$OnSliderListener;->onLabelChanged(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onLabelStateChanged(Landroid/view/View;Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$OnSliderListener$LabelState;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout$7;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->access$700(Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;)Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout$7;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->access$700(Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;)Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;->onLabelStateChanged(Landroid/view/View;Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$OnSliderListener$LabelState;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout$7;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->access$800(Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;)Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout$OnSliderLabelListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout$7;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->access$800(Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;)Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout$OnSliderLabelListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$OnSliderListener;->onLabelStateChanged(Landroid/view/View;Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$OnSliderListener$LabelState;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
