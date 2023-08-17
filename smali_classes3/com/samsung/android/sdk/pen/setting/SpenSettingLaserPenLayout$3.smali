.class Lcom/samsung/android/sdk/pen/setting/SpenSettingLaserPenLayout$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/setting/laserpen/SpenLaserTypeLayout$OnDataChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/pen/setting/SpenSettingLaserPenLayout;->initTypeView(Landroid/content/Context;Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/setting/SpenSettingLaserPenLayout;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/setting/SpenSettingLaserPenLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingLaserPenLayout$3;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenSettingLaserPenLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLaserTypeChanged(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingLaserPenLayout$3;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenSettingLaserPenLayout;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingLaserPenLayout;->access$000(Lcom/samsung/android/sdk/pen/setting/SpenSettingLaserPenLayout;)Lcom/samsung/android/sdk/pen/setting/laserpen/SpenSettingLaserPenManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/laserpen/SpenSettingLaserPenManager;->changeType(I)Z

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingLaserPenLayout$3;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenSettingLaserPenLayout;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingLaserPenLayout;->access$100(Lcom/samsung/android/sdk/pen/setting/SpenSettingLaserPenLayout;IZ)V

    return-void
.end method
