.class Lcom/samsung/android/sdk/pen/setting/SpenSettingLaserPenLayout$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/setting/SpenSettingLaserPenLayout;
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

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingLaserPenLayout$4;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenSettingLaserPenLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCheckedChanged() checkedId="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SpenSettingLaserPenLayout"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingLaserPenLayout$4;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenSettingLaserPenLayout;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingLaserPenLayout;->access$000(Lcom/samsung/android/sdk/pen/setting/SpenSettingLaserPenLayout;)Lcom/samsung/android/sdk/pen/setting/laserpen/SpenSettingLaserPenManager;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingLaserPenLayout$4;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenSettingLaserPenLayout;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingLaserPenLayout;->access$000(Lcom/samsung/android/sdk/pen/setting/SpenSettingLaserPenLayout;)Lcom/samsung/android/sdk/pen/setting/laserpen/SpenSettingLaserPenManager;

    move-result-object p1

    sget v0, Lcom/samsung/android/spen/R$id;->line_option_fade_off_fast:I

    if-ne p2, v0, :cond_1

    const/16 p2, 0xa

    goto :goto_0

    :cond_1
    const/16 p2, 0x64

    :goto_0
    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/pen/setting/laserpen/SpenSettingLaserPenManager;->changeFadeOutTime(I)Z

    return-void
.end method
