.class final Lorg/apache/xmlbeans/impl/store/CharUtil$1;
.super Ljava/lang/ThreadLocal;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method public initialValue()Ljava/lang/Object;
    .locals 3

    new-instance v0, Ljava/lang/ref/SoftReference;

    new-instance v1, Lorg/apache/xmlbeans/impl/store/CharUtil;

    invoke-static {}, Lorg/apache/xmlbeans/impl/store/CharUtil;->access$300()I

    move-result v2

    invoke-direct {v1, v2}, Lorg/apache/xmlbeans/impl/store/CharUtil;-><init>(I)V

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
