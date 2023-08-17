.class Lcom/samsung/android/sdk/smp/common/database/DBHandler$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/smp/common/database/DBHandler$TransactionWithinLoop;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/smp/common/database/DBHandler;->incrementAckFailCount()V
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

    iput-object p1, p0, Lcom/samsung/android/sdk/smp/common/database/DBHandler$2;->this$0:Lcom/samsung/android/sdk/smp/common/database/DBHandler;

    iput-object p2, p0, Lcom/samsung/android/sdk/smp/common/database/DBHandler$2;->val$list:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/sdk/smp/common/database/DBHandler$2;->val$list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/smp/common/database/entity/AckDataEntity;

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v1}, Lcom/samsung/android/sdk/smp/common/database/entity/AckDataEntity;->getFailCount()J

    move-result-wide v3

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "fail"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v3, p0, Lcom/samsung/android/sdk/smp/common/database/DBHandler$2;->this$0:Lcom/samsung/android/sdk/smp/common/database/DBHandler;

    invoke-static {v3}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->access$100(Lcom/samsung/android/sdk/smp/common/database/DBHandler;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v1}, Lcom/samsung/android/sdk/smp/common/database/entity/AckDataEntity;->getRequestId()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    const-string v1, "ack"

    const-string v5, "rid=?"

    invoke-virtual {v3, v1, v2, v5, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    return-void
.end method
