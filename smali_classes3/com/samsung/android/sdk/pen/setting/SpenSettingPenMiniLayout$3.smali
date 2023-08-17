.class Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl$OnDataChangedListener;


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

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout$3;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlphaChanged(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout$3;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->access$400(Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;)Lcom/samsung/android/sdk/pen/setting/handwriting/SpenSettingPenManager;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout$3;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->access$400(Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;)Lcom/samsung/android/sdk/pen/setting/handwriting/SpenSettingPenManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenSettingPenManager;->getCurrentUIPenInfo()Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget v1, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    invoke-static {v1, p1}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilOpacity;->setCurrentAlpha(II)I

    move-result p1

    iput p1, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout$3;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->access$400(Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;)Lcom/samsung/android/sdk/pen/setting/handwriting/SpenSettingPenManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenSettingPenManager;->setCurrentUIPenInfo(Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout$3;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->access$200(Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;IZ)V

    :cond_2
    return-void
.end method

.method public onFixedWidthChanged(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout$3;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->access$400(Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;)Lcom/samsung/android/sdk/pen/setting/handwriting/SpenSettingPenManager;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout$3;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->access$400(Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;)Lcom/samsung/android/sdk/pen/setting/handwriting/SpenSettingPenManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenSettingPenManager;->getCurrentUIPenInfo()Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iput-boolean p1, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->isFixedWidth:Z

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout$3;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->access$400(Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;)Lcom/samsung/android/sdk/pen/setting/handwriting/SpenSettingPenManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenSettingPenManager;->setCurrentUIPenInfo(Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout$3;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->access$200(Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;IZ)V

    :cond_2
    return-void
.end method

.method public onSizeChanged(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout$3;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->access$300(Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout$3;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->access$200(Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;IZ)V

    :cond_0
    return-void
.end method
