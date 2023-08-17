.class Lcz/msebera/android/httpclient/pool/AbstractConnPool$1;
.super Lcz/msebera/android/httpclient/pool/RouteSpecificPool;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcz/msebera/android/httpclient/pool/AbstractConnPool;->getPool(Ljava/lang/Object;)Lcz/msebera/android/httpclient/pool/RouteSpecificPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcz/msebera/android/httpclient/pool/RouteSpecificPool<",
        "TT;TC;TE;>;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcz/msebera/android/httpclient/pool/AbstractConnPool;

.field public final synthetic val$route:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/pool/AbstractConnPool;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcz/msebera/android/httpclient/pool/AbstractConnPool$1;->this$0:Lcz/msebera/android/httpclient/pool/AbstractConnPool;

    iput-object p3, p0, Lcz/msebera/android/httpclient/pool/AbstractConnPool$1;->val$route:Ljava/lang/Object;

    invoke-direct {p0, p2}, Lcz/msebera/android/httpclient/pool/RouteSpecificPool;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public createEntry(Ljava/lang/Object;)Lcz/msebera/android/httpclient/pool/PoolEntry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)TE;"
        }
    .end annotation

    iget-object v0, p0, Lcz/msebera/android/httpclient/pool/AbstractConnPool$1;->this$0:Lcz/msebera/android/httpclient/pool/AbstractConnPool;

    iget-object v1, p0, Lcz/msebera/android/httpclient/pool/AbstractConnPool$1;->val$route:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->createEntry(Ljava/lang/Object;Ljava/lang/Object;)Lcz/msebera/android/httpclient/pool/PoolEntry;

    move-result-object p1

    return-object p1
.end method
