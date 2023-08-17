.class Lcom/samsung/android/support/senl/nt/base/common/MemoryLogger$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/base/common/MemoryLogger;->dump()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/MemoryLogger;->b(Z)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/MemoryLogger;->a()V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/MemoryLogger;->b(Z)V

    return-void
.end method
