.class Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;->initView(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout$3;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout$3;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->hideAnimation(Landroid/view/animation/Animation$AnimationListener;)Z

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout$3;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;->access$200(Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;)Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout$LoggingListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout$3;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;->access$200(Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout;)Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout$LoggingListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingChangeStyleLayout$LoggingListener;->onClosed()V

    :cond_0
    return-void
.end method
