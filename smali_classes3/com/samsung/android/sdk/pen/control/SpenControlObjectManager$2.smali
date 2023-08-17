.class Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/control/runtimeObject/WritingObjectRuntimeVideo$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;->playVideo(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;

.field public final synthetic val$objectBase:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager$2;->this$0:Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager$2;->val$objectBase:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCloseControl()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager$2;->this$0:Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;->closeControl()V

    return-void
.end method

.method public onCompleted()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager$2;->this$0:Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;->access$000(Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;)Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager$ControlActionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager$2;->this$0:Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;->access$000(Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;)Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager$ControlActionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager$2;->val$objectBase:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager$ControlActionListener;->onRequestSelectObject(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)V

    :cond_0
    return-void
.end method

.method public onUpdate()V
    .locals 0

    return-void
.end method
