.class Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration$1;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration$1;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration;->access$000(Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration;)V

    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0

    return-void
.end method
