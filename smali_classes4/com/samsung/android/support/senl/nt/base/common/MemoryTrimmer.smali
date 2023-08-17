.class public abstract Lcom/samsung/android/support/senl/nt/base/common/MemoryTrimmer;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract trimCriticalMemory()V
.end method

.method public trimMemory(I)V
    .locals 1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_3

    const/16 v0, 0xf

    if-eq p1, v0, :cond_3

    const/16 v0, 0x14

    if-eq p1, v0, :cond_2

    const/16 v0, 0x3c

    if-eq p1, v0, :cond_1

    const/16 v0, 0x50

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/common/MemoryTrimmer;->trimCriticalMemory()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/common/MemoryTrimmer;->trimTaskMemory()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/common/MemoryTrimmer;->trimUIMemory()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/common/MemoryTrimmer;->trimRunningMemory()V

    :goto_0
    return-void
.end method

.method public abstract trimRunningMemory()V
.end method

.method public abstract trimTaskMemory()V
.end method

.method public abstract trimUIMemory()V
.end method
