.class public Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscUnboundedAtomicArrayQueue;
.super Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public b000:B

.field public b001:B

.field public b002:B

.field public b003:B

.field public b004:B

.field public b005:B

.field public b006:B

.field public b007:B

.field public b010:B

.field public b011:B

.field public b012:B

.field public b013:B

.field public b014:B

.field public b015:B

.field public b016:B

.field public b017:B

.field public b020:B

.field public b021:B

.field public b022:B

.field public b023:B

.field public b024:B

.field public b025:B

.field public b026:B

.field public b027:B

.field public b030:B

.field public b031:B

.field public b032:B

.field public b033:B

.field public b034:B

.field public b035:B

.field public b036:B

.field public b037:B

.field public b040:B

.field public b041:B

.field public b042:B

.field public b043:B

.field public b044:B

.field public b045:B

.field public b046:B

.field public b047:B

.field public b050:B

.field public b051:B

.field public b052:B

.field public b053:B

.field public b054:B

.field public b055:B

.field public b056:B

.field public b057:B

.field public b060:B

.field public b061:B

.field public b062:B

.field public b063:B

.field public b064:B

.field public b065:B

.field public b066:B

.field public b067:B

.field public b070:B

.field public b071:B

.field public b072:B

.field public b073:B

.field public b074:B

.field public b075:B

.field public b076:B

.field public b077:B

.field public b100:B

.field public b101:B

.field public b102:B

.field public b103:B

.field public b104:B

.field public b105:B

.field public b106:B

.field public b107:B

.field public b110:B

.field public b111:B

.field public b112:B

.field public b113:B

.field public b114:B

.field public b115:B

.field public b116:B

.field public b117:B

.field public b120:B

.field public b121:B

.field public b122:B

.field public b123:B

.field public b124:B

.field public b125:B

.field public b126:B

.field public b127:B

.field public b130:B

.field public b131:B

.field public b132:B

.field public b133:B

.field public b134:B

.field public b135:B

.field public b136:B

.field public b137:B

.field public b140:B

.field public b141:B

.field public b142:B

.field public b143:B

.field public b144:B

.field public b145:B

.field public b146:B

.field public b147:B

.field public b150:B

.field public b151:B

.field public b152:B

.field public b153:B

.field public b154:B

.field public b155:B

.field public b156:B

.field public b157:B

.field public b160:B

.field public b161:B

.field public b162:B

.field public b163:B

.field public b164:B

.field public b165:B

.field public b166:B

.field public b167:B

.field public b170:B

.field public b171:B

.field public b172:B

.field public b173:B

.field public b174:B

.field public b175:B

.field public b176:B

.field public b177:B


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;-><init>(I)V

    return-void
.end method


# virtual methods
.method public availableInQueue(JJ)J
    .locals 0

    const-wide/32 p1, 0x7fffffff

    return-wide p1
.end method

.method public capacity()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public bridge synthetic currentConsumerIndex()J
    .locals 2

    invoke-super {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->currentConsumerIndex()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic currentProducerIndex()J
    .locals 2

    invoke-super {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->currentProducerIndex()J

    move-result-wide v0

    return-wide v0
.end method

.method public drain(Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer<",
            "TE;>;)I"
        }
    .end annotation

    const/16 v0, 0x1000

    invoke-virtual {p0, p1, v0}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscUnboundedAtomicArrayQueue;->drain(Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer;I)I

    move-result p1

    return p1
.end method

.method public bridge synthetic drain(Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer;I)I
    .locals 0

    invoke-super {p0, p1, p2}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->drain(Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer;I)I

    move-result p1

    return p1
.end method

.method public bridge synthetic drain(Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer;Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$WaitStrategy;Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$ExitCondition;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->drain(Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer;Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$WaitStrategy;Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$ExitCondition;)V

    return-void
.end method

.method public fill(Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier<",
            "TE;>;)I"
        }
    .end annotation

    invoke-static {p0, p1}, Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueueUtil;->fillUnbounded(Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue;Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic fill(Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier;I)I
    .locals 0

    invoke-super {p0, p1, p2}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->fill(Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier;I)I

    move-result p1

    return p1
.end method

.method public bridge synthetic fill(Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier;Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$WaitStrategy;Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$ExitCondition;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->fill(Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier;Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$WaitStrategy;Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$ExitCondition;)V

    return-void
.end method

.method public getCurrentBufferCapacity(J)J
    .locals 0

    return-wide p1
.end method

.method public getNextBufferSize(Ljava/util/concurrent/atomic/AtomicReferenceArray;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "TE;>;)I"
        }
    .end annotation

    invoke-static {p1}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/AtomicQueueUtil;->length(Ljava/util/concurrent/atomic/AtomicReferenceArray;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic isEmpty()Z
    .locals 1

    invoke-super {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-super {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic offer(Ljava/lang/Object;)Z
    .locals 0

    invoke-super {p0, p1}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->offer(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic peek()Ljava/lang/Object;
    .locals 1

    invoke-super {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic poll()Ljava/lang/Object;
    .locals 1

    invoke-super {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic relaxedOffer(Ljava/lang/Object;)Z
    .locals 0

    invoke-super {p0, p1}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->relaxedOffer(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic relaxedPeek()Ljava/lang/Object;
    .locals 1

    invoke-super {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->relaxedPeek()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic relaxedPoll()Ljava/lang/Object;
    .locals 1

    invoke-super {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->relaxedPoll()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic size()I
    .locals 1

    invoke-super {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseMpscLinkedAtomicArrayQueue;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
