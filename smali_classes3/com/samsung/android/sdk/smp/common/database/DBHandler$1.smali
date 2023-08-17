.class Lcom/samsung/android/sdk/smp/common/database/DBHandler$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/smp/common/database/DBHandler$TransactionWithinLoop;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/smp/common/database/DBHandler;->deleteAckList(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/smp/common/database/DBHandler;

.field public final synthetic val$list:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/smp/common/database/DBHandler;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/sdk/smp/common/database/DBHandler$1;->this$0:Lcom/samsung/android/sdk/smp/common/database/DBHandler;

    iput-object p2, p0, Lcom/samsung/android/sdk/smp/common/database/DBHandler$1;->val$list:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/smp/common/database/DBHandler$1;->val$list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/smp/common/database/entity/AckDataEntity;

    iget-object v2, p0, Lcom/samsung/android/sdk/smp/common/database/DBHandler$1;->this$0:Lcom/samsung/android/sdk/smp/common/database/DBHandler;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/smp/common/database/entity/AckDataEntity;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->access$000(Lcom/samsung/android/sdk/smp/common/database/DBHandler;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method
