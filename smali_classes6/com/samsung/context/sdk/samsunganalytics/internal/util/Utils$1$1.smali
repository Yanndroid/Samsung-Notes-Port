.class Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/diagmonagent/common/util/executor/AsyncTaskClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils$1;

.field public final synthetic val$context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils$1;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils$1$1;->this$0:Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils$1;

    iput-object p2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils$1$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils$1$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils$1$1;->this$0:Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils$1;

    iget-object v1, v1, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils$1;->val$configuration:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-static {v0, v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils;->sendSettings(Landroid/content/Context;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)V

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils$1$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils$1$1;->this$0:Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils$1;

    iget-object v1, v1, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils$1;->val$configuration:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-static {v0, v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils;->sendProperties(Landroid/content/Context;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)V

    return-void
.end method
