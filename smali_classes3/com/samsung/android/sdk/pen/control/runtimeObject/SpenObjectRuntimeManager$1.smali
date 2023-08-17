.class Lcom/samsung/android/sdk/pen/control/runtimeObject/SpenObjectRuntimeManager$1;
.super Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager$PluginListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/pen/control/runtimeObject/SpenObjectRuntimeManager;->setListener(Lcom/samsung/android/sdk/pen/control/runtimeObject/SpenObjectRuntimeManager$InstallListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/control/runtimeObject/SpenObjectRuntimeManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/control/runtimeObject/SpenObjectRuntimeManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/control/runtimeObject/SpenObjectRuntimeManager$1;->this$0:Lcom/samsung/android/sdk/pen/control/runtimeObject/SpenObjectRuntimeManager;

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager$PluginListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onInstalled(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "ObjectRuntime"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/control/runtimeObject/SpenObjectRuntimeManager$1;->this$0:Lcom/samsung/android/sdk/pen/control/runtimeObject/SpenObjectRuntimeManager;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/control/runtimeObject/SpenObjectRuntimeManager;->access$000(Lcom/samsung/android/sdk/pen/control/runtimeObject/SpenObjectRuntimeManager;)Lcom/samsung/android/sdk/pen/control/runtimeObject/SpenObjectRuntimeManager$InstallListener;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/samsung/android/sdk/pen/control/runtimeObject/SpenObjectRuntimeManager$InstallListener;->onInstalled(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onUninstalled(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "ObjectRuntime"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/control/runtimeObject/SpenObjectRuntimeManager$1;->this$0:Lcom/samsung/android/sdk/pen/control/runtimeObject/SpenObjectRuntimeManager;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/control/runtimeObject/SpenObjectRuntimeManager;->access$000(Lcom/samsung/android/sdk/pen/control/runtimeObject/SpenObjectRuntimeManager;)Lcom/samsung/android/sdk/pen/control/runtimeObject/SpenObjectRuntimeManager$InstallListener;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/samsung/android/sdk/pen/control/runtimeObject/SpenObjectRuntimeManager$InstallListener;->onUninstalled(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
