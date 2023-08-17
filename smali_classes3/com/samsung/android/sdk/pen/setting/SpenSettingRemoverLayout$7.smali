.class Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;
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

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout$7;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDelayRunnable mStartTracking= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout$7;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;

    invoke-static {v1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->access$1200(Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mStopTracking= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout$7;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;

    invoke-static {v1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->access$1100(Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenSettingRemoverLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout$7;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->access$1200(Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;)Z

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout$7;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;

    invoke-static {v1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->access$1100(Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;)Z

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout$7;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->access$1400(Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout$7;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->access$1302(Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;Z)Z

    return-void
.end method
