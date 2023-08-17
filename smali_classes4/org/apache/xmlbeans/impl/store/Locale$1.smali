.class final Lorg/apache/xmlbeans/impl/store/Locale$1;
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
    .locals 2

    new-instance v0, Ljava/lang/ref/SoftReference;

    new-instance v1, Lorg/apache/xmlbeans/impl/store/Locale$ScrubBuffer;

    invoke-direct {v1}, Lorg/apache/xmlbeans/impl/store/Locale$ScrubBuffer;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
