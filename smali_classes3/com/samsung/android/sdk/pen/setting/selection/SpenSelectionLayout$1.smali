.class Lcom/samsung/android/sdk/pen/setting/selection/SpenSelectionLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/setting/selection/SpenSelectionLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/setting/selection/SpenSelectionLayout;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/setting/selection/SpenSelectionLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/selection/SpenSelectionLayout$1;->this$0:Lcom/samsung/android/sdk/pen/setting/selection/SpenSelectionLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 1

    sget p1, Lcom/samsung/android/spen/R$id;->selection_radio_button_lasso:I

    const-string v0, "SpenSelectionLayout"

    if-ne p2, p1, :cond_0

    const-string p1, "mRadioBtnListener - 1"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/selection/SpenSelectionLayout$1;->this$0:Lcom/samsung/android/sdk/pen/setting/selection/SpenSelectionLayout;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/selection/SpenSelectionLayout;->access$000(Lcom/samsung/android/sdk/pen/setting/selection/SpenSelectionLayout;)Lcom/samsung/android/sdk/pen/SpenSettingSelectionInfo;

    move-result-object p1

    const/4 p2, 0x0

    :goto_0
    iput p2, p1, Lcom/samsung/android/sdk/pen/SpenSettingSelectionInfo;->type:I

    goto :goto_1

    :cond_0
    sget p1, Lcom/samsung/android/spen/R$id;->selection_radio_button_rect:I

    if-ne p2, p1, :cond_1

    const-string p1, "mRadioBtnListener - 2"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/selection/SpenSelectionLayout$1;->this$0:Lcom/samsung/android/sdk/pen/setting/selection/SpenSelectionLayout;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/selection/SpenSelectionLayout;->access$000(Lcom/samsung/android/sdk/pen/setting/selection/SpenSelectionLayout;)Lcom/samsung/android/sdk/pen/SpenSettingSelectionInfo;

    move-result-object p1

    const/4 p2, 0x1

    goto :goto_0

    :goto_1
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/selection/SpenSelectionLayout$1;->this$0:Lcom/samsung/android/sdk/pen/setting/selection/SpenSelectionLayout;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/selection/SpenSelectionLayout;->access$100(Lcom/samsung/android/sdk/pen/setting/selection/SpenSelectionLayout;)Lcom/samsung/android/sdk/pen/setting/selection/SpenSelectionLayout$OnActionListener;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/selection/SpenSelectionLayout$1;->this$0:Lcom/samsung/android/sdk/pen/setting/selection/SpenSelectionLayout;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/selection/SpenSelectionLayout;->access$100(Lcom/samsung/android/sdk/pen/setting/selection/SpenSelectionLayout;)Lcom/samsung/android/sdk/pen/setting/selection/SpenSelectionLayout$OnActionListener;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/selection/SpenSelectionLayout$1;->this$0:Lcom/samsung/android/sdk/pen/setting/selection/SpenSelectionLayout;

    invoke-static {p2}, Lcom/samsung/android/sdk/pen/setting/selection/SpenSelectionLayout;->access$000(Lcom/samsung/android/sdk/pen/setting/selection/SpenSelectionLayout;)Lcom/samsung/android/sdk/pen/SpenSettingSelectionInfo;

    move-result-object p2

    iget p2, p2, Lcom/samsung/android/sdk/pen/SpenSettingSelectionInfo;->type:I

    invoke-interface {p1, p2}, Lcom/samsung/android/sdk/pen/setting/selection/SpenSelectionLayout$OnActionListener;->onSelectionChanged(I)V

    :cond_1
    return-void
.end method
