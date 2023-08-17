.class Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration$1Device;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration;->getHwRotation()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Device"
.end annotation


# instance fields
.field public name:Ljava/lang/String;

.field public rotation:I

.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration$1Device;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration$1Device;->name:Ljava/lang/String;

    iput p3, p0, Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration$1Device;->rotation:I

    return-void
.end method
