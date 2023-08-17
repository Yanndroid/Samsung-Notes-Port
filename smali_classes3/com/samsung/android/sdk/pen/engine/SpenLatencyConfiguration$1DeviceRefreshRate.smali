.class Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration$1DeviceRefreshRate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration;->getHwRefreshRate()F
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DeviceRefreshRate"
.end annotation


# instance fields
.field public displayRefreshRate:F

.field public name:Ljava/lang/String;

.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration;Ljava/lang/String;F)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration$1DeviceRefreshRate;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration$1DeviceRefreshRate;->name:Ljava/lang/String;

    iput p3, p0, Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration$1DeviceRefreshRate;->displayRefreshRate:F

    return-void
.end method
