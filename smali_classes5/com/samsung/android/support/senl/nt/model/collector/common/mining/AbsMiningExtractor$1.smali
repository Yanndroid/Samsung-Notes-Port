.class Lcom/samsung/android/support/senl/nt/model/collector/common/mining/AbsMiningExtractor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/model/collector/common/mining/AbsMiningExtractor;->extract(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/model/collector/common/mining/ICompleteListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/model/collector/common/mining/AbsMiningExtractor;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/model/collector/common/mining/AbsMiningExtractor;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/mining/AbsMiningExtractor$1;->this$0:Lcom/samsung/android/support/senl/nt/model/collector/common/mining/AbsMiningExtractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method
