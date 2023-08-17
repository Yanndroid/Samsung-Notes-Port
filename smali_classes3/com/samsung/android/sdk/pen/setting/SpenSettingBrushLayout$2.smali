.class Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout$ChildOrientationChangedListener;


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

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout$2;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onColorViewOrientationChanged(I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout$2;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;->getColorAlign()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout$2;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;

    invoke-static {v2}, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;->access$100(Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;)I

    move-result v2

    invoke-static {v0, p1, v1, v2}, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;->access$300(Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;III)V

    return-void
.end method

.method public onPenViewOrientationChanged(I)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout$2;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;->getPenAlign()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout$2;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;

    invoke-static {v2}, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;->access$100(Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v0, p1, v1, v2, v3}, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;->access$200(Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;IIIZ)V

    return-void
.end method
