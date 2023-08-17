.class Lcom/samsung/android/sdk/pen/control/runtimeObject/SpenObjectRuntime$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenObjectRuntimeInterface$UpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/pen/control/runtimeObject/SpenObjectRuntime;->setListener(Lcom/samsung/android/sdk/pen/control/runtimeObject/SpenObjectRuntime$UpdateListener;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/control/runtimeObject/SpenObjectRuntime;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/control/runtimeObject/SpenObjectRuntime;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/control/runtimeObject/SpenObjectRuntime$1;->this$0:Lcom/samsung/android/sdk/pen/control/runtimeObject/SpenObjectRuntime;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCanceled(ILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/control/runtimeObject/SpenObjectRuntime$1;->this$0:Lcom/samsung/android/sdk/pen/control/runtimeObject/SpenObjectRuntime;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/control/runtimeObject/SpenObjectRuntime;->access$000(Lcom/samsung/android/sdk/pen/control/runtimeObject/SpenObjectRuntime;)Lcom/samsung/android/sdk/pen/control/runtimeObject/SpenObjectRuntime$UpdateListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/sdk/pen/control/runtimeObject/SpenObjectRuntime$UpdateListener;->onCanceled(ILjava/lang/Object;)V

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/control/runtimeObject/SpenObjectRuntime;->access$102(Z)Z

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/control/runtimeObject/SpenObjectRuntime$1;->this$0:Lcom/samsung/android/sdk/pen/control/runtimeObject/SpenObjectRuntime;

    invoke-static {p2, p1}, Lcom/samsung/android/sdk/pen/control/runtimeObject/SpenObjectRuntime;->access$202(Lcom/samsung/android/sdk/pen/control/runtimeObject/SpenObjectRuntime;Z)Z

    return-void
.end method

.method public onCompleted(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/control/runtimeObject/SpenObjectRuntime$1;->this$0:Lcom/samsung/android/sdk/pen/control/runtimeObject/SpenObjectRuntime;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/control/runtimeObject/SpenObjectRuntime;->access$000(Lcom/samsung/android/sdk/pen/control/runtimeObject/SpenObjectRuntime;)Lcom/samsung/android/sdk/pen/control/runtimeObject/SpenObjectRuntime$UpdateListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/pen/control/runtimeObject/SpenObjectRuntime$UpdateListener;->onCompleted(Ljava/lang/Object;)V

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/control/runtimeObject/SpenObjectRuntime;->access$102(Z)Z

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/control/runtimeObject/SpenObjectRuntime$1;->this$0:Lcom/samsung/android/sdk/pen/control/runtimeObject/SpenObjectRuntime;

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/pen/control/runtimeObject/SpenObjectRuntime;->access$202(Lcom/samsung/android/sdk/pen/control/runtimeObject/SpenObjectRuntime;Z)Z

    return-void
.end method

.method public onObjectUpdated(Landroid/graphics/RectF;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/control/runtimeObject/SpenObjectRuntime$1;->this$0:Lcom/samsung/android/sdk/pen/control/runtimeObject/SpenObjectRuntime;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/control/runtimeObject/SpenObjectRuntime;->access$000(Lcom/samsung/android/sdk/pen/control/runtimeObject/SpenObjectRuntime;)Lcom/samsung/android/sdk/pen/control/runtimeObject/SpenObjectRuntime$UpdateListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/sdk/pen/control/runtimeObject/SpenObjectRuntime$UpdateListener;->onObjectUpdated(Landroid/graphics/RectF;Ljava/lang/Object;)V

    return-void
.end method
