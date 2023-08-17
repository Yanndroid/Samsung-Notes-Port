.class Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/setting/SpenMiniPenControl$OnDataChangedListener;


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

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout$2;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPenChanged(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPenChanged() penName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenSettingPenMiniLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout$2;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->access$100(Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;Ljava/lang/String;)Z

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout$2;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;

    const/16 v0, 0x3f

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->access$200(Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;IZ)V

    return-void
.end method
