.class public Lorg/apache/xmlbeans/impl/common/GlobalLock;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final GLOBAL_MUTEX:Lorg/apache/xmlbeans/impl/common/Mutex;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/xmlbeans/impl/common/Mutex;

    invoke-direct {v0}, Lorg/apache/xmlbeans/impl/common/Mutex;-><init>()V

    sput-object v0, Lorg/apache/xmlbeans/impl/common/GlobalLock;->GLOBAL_MUTEX:Lorg/apache/xmlbeans/impl/common/Mutex;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static acquire()V
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/impl/common/GlobalLock;->GLOBAL_MUTEX:Lorg/apache/xmlbeans/impl/common/Mutex;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/common/Mutex;->acquire()V

    return-void
.end method

.method public static release()V
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/impl/common/GlobalLock;->GLOBAL_MUTEX:Lorg/apache/xmlbeans/impl/common/Mutex;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/common/Mutex;->release()V

    return-void
.end method

.method public static tryToAcquire()V
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/impl/common/GlobalLock;->GLOBAL_MUTEX:Lorg/apache/xmlbeans/impl/common/Mutex;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/common/Mutex;->tryToAcquire()Z

    return-void
.end method
