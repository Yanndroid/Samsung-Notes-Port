.class Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration$4;
.super Ljava/util/HashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration;->getSupportPredictionInModel()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration$4;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenLatencyConfiguration;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const/4 p1, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "G998"

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
