.class Lorg/apache/http/pool/AbstractConnPool$1;
.super Lorg/apache/http/pool/RouteSpecificPool;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/http/pool/AbstractConnPool;->getPool(Ljava/lang/Object;)Lorg/apache/http/pool/RouteSpecificPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/http/pool/RouteSpecificPool<",
        "TT;TC;TE;>;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lorg/apache/http/pool/AbstractConnPool;

.field private final synthetic val$route:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lorg/apache/http/pool/AbstractConnPool;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/http/pool/AbstractConnPool$1;->this$0:Lorg/apache/http/pool/AbstractConnPool;

    iput-object p3, p0, Lorg/apache/http/pool/AbstractConnPool$1;->val$route:Ljava/lang/Object;

    invoke-direct {p0, p2}, Lorg/apache/http/pool/RouteSpecificPool;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public createEntry(Ljava/lang/Object;)Lorg/apache/http/pool/PoolEntry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)TE;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/http/pool/AbstractConnPool$1;->this$0:Lorg/apache/http/pool/AbstractConnPool;

    iget-object v1, p0, Lorg/apache/http/pool/AbstractConnPool$1;->val$route:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lorg/apache/http/pool/AbstractConnPool;->createEntry(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/http/pool/PoolEntry;

    move-result-object p1

    return-object p1
.end method
