.class Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout$OnEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout$3;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSizeButtonPressed()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout$3;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->access$1000(Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;)V

    return-void
.end method

.method public onStartSizeButtonLongClick()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout$3;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->access$1102(Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;Z)Z

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout$3;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->access$1202(Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;Z)Z

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout$3;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->access$1000(Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;)V

    return-void
.end method

.method public onStartTrackingTouch()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout$3;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->access$1102(Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;Z)Z

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout$3;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->access$1202(Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;Z)Z

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout$3;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->access$1000(Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;)V

    return-void
.end method

.method public onStopSizeButtonLongClick()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout$3;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->access$1102(Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;Z)Z

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout$3;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->access$1300(Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout$3;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->access$1400(Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;)V

    :cond_0
    return-void
.end method

.method public onStopTrackingTouch()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout$3;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->access$1102(Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;Z)Z

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout$3;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->access$1300(Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout$3;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->access$1400(Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;)V

    :cond_0
    return-void
.end method
