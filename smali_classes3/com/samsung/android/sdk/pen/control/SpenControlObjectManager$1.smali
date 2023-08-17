.class Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager$1;->this$0:Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager$1;->this$0:Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;->updateObjectRuntimePos()V

    return-void
.end method
