.class final Lcom/google/common/util/concurrent/InterruptibleTask$Blocker;
.super Ljava/util/concurrent/locks/AbstractOwnableSynchronizer;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/InterruptibleTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Blocker"
.end annotation


# instance fields
.field private final task:Lcom/google/common/util/concurrent/InterruptibleTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/InterruptibleTask<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/common/util/concurrent/InterruptibleTask;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/InterruptibleTask<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractOwnableSynchronizer;-><init>()V

    iput-object p1, p0, Lcom/google/common/util/concurrent/InterruptibleTask$Blocker;->task:Lcom/google/common/util/concurrent/InterruptibleTask;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/common/util/concurrent/InterruptibleTask;Lcom/google/common/util/concurrent/InterruptibleTask$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/InterruptibleTask$Blocker;-><init>(Lcom/google/common/util/concurrent/InterruptibleTask;)V

    return-void
.end method

.method public static synthetic access$200(Lcom/google/common/util/concurrent/InterruptibleTask$Blocker;Ljava/lang/Thread;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/InterruptibleTask$Blocker;->setOwner(Ljava/lang/Thread;)V

    return-void
.end method

.method private setOwner(Ljava/lang/Thread;)V
    .locals 0

    invoke-super {p0, p1}, Ljava/util/concurrent/locks/AbstractOwnableSynchronizer;->setExclusiveOwnerThread(Ljava/lang/Thread;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/common/util/concurrent/InterruptibleTask$Blocker;->task:Lcom/google/common/util/concurrent/InterruptibleTask;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/InterruptibleTask;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
