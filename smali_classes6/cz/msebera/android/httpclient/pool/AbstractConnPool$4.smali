.class Lcz/msebera/android/httpclient/pool/AbstractConnPool$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcz/msebera/android/httpclient/pool/PoolEntryCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcz/msebera/android/httpclient/pool/AbstractConnPool;->closeExpired()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcz/msebera/android/httpclient/pool/PoolEntryCallback<",
        "TT;TC;>;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcz/msebera/android/httpclient/pool/AbstractConnPool;

.field public final synthetic val$now:J


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/pool/AbstractConnPool;J)V
    .locals 0

    iput-object p1, p0, Lcz/msebera/android/httpclient/pool/AbstractConnPool$4;->this$0:Lcz/msebera/android/httpclient/pool/AbstractConnPool;

    iput-wide p2, p0, Lcz/msebera/android/httpclient/pool/AbstractConnPool$4;->val$now:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Lcz/msebera/android/httpclient/pool/PoolEntry;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcz/msebera/android/httpclient/pool/PoolEntry<",
            "TT;TC;>;)V"
        }
    .end annotation

    iget-wide v0, p0, Lcz/msebera/android/httpclient/pool/AbstractConnPool$4;->val$now:J

    invoke-virtual {p1, v0, v1}, Lcz/msebera/android/httpclient/pool/PoolEntry;->isExpired(J)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcz/msebera/android/httpclient/pool/PoolEntry;->close()V

    :cond_0
    return-void
.end method
