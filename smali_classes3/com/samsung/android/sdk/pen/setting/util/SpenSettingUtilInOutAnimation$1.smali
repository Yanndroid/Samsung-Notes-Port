.class Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilInOutAnimation$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilInOutAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilInOutAnimation;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilInOutAnimation;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilInOutAnimation$1;->this$0:Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilInOutAnimation;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilInOutAnimation$1;->this$0:Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilInOutAnimation;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilInOutAnimation;->access$000(Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilInOutAnimation;)Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilInOutAnimation$AnimationEndListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilInOutAnimation$1;->this$0:Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilInOutAnimation;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilInOutAnimation;->access$000(Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilInOutAnimation;)Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilInOutAnimation$AnimationEndListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilInOutAnimation$AnimationEndListener;->onShowAnimationEnd()V

    :cond_0
    return-void
.end method
