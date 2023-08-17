.class public Lorg/apache/poi/util/IdentifierManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/util/IdentifierManager$Segment;
    }
.end annotation


# static fields
.field public static final MAX_ID:J = 0x7ffffffffffffffeL

.field public static final MIN_ID:J


# instance fields
.field private final lowerbound:J

.field private segments:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lorg/apache/poi/util/IdentifierManager$Segment;",
            ">;"
        }
    .end annotation
.end field

.field private final upperbound:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    cmp-long v0, p1, p3

    if-gtz v0, :cond_2

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    const-wide v0, 0x7ffffffffffffffeL

    cmp-long v2, p3, v0

    if-gtz v2, :cond_0

    iput-wide p1, p0, Lorg/apache/poi/util/IdentifierManager;->lowerbound:J

    iput-wide p3, p0, Lorg/apache/poi/util/IdentifierManager;->upperbound:J

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/util/IdentifierManager;->segments:Ljava/util/LinkedList;

    new-instance v1, Lorg/apache/poi/util/IdentifierManager$Segment;

    invoke-direct {v1, p1, p2, p3, p4}, Lorg/apache/poi/util/IdentifierManager$Segment;-><init>(JJ)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "upperbound must be less than or equal to "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " but had "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "lowerbound must be greater than or equal to "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lowerbound must not be greater than upperbound, had "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " and "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private verifyIdentifiersLeft()V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/util/IdentifierManager;->segments:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No identifiers left"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getRemainingIdentifiers()J
    .locals 6

    iget-object v0, p0, Lorg/apache/poi/util/IdentifierManager;->segments:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/util/IdentifierManager$Segment;

    iget-wide v4, v3, Lorg/apache/poi/util/IdentifierManager$Segment;->start:J

    sub-long/2addr v1, v4

    iget-wide v3, v3, Lorg/apache/poi/util/IdentifierManager$Segment;->end:J

    add-long/2addr v1, v3

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    goto :goto_0

    :cond_0
    return-wide v1
.end method

.method public release(J)Z
    .locals 17

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    iget-wide v3, v0, Lorg/apache/poi/util/IdentifierManager;->lowerbound:J

    cmp-long v5, v1, v3

    if-ltz v5, :cond_c

    iget-wide v5, v0, Lorg/apache/poi/util/IdentifierManager;->upperbound:J

    cmp-long v7, v1, v5

    if-gtz v7, :cond_c

    cmp-long v5, v1, v5

    const/4 v6, 0x0

    const-wide/16 v7, 0x1

    const/4 v9, 0x1

    if-nez v5, :cond_2

    iget-object v1, v0, Lorg/apache/poi/util/IdentifierManager;->segments:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/util/IdentifierManager$Segment;

    iget-wide v2, v1, Lorg/apache/poi/util/IdentifierManager$Segment;->end:J

    iget-wide v4, v0, Lorg/apache/poi/util/IdentifierManager;->upperbound:J

    sub-long v7, v4, v7

    cmp-long v7, v2, v7

    if-nez v7, :cond_0

    iput-wide v4, v1, Lorg/apache/poi/util/IdentifierManager$Segment;->end:J

    return v9

    :cond_0
    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    return v6

    :cond_1
    iget-object v1, v0, Lorg/apache/poi/util/IdentifierManager;->segments:Ljava/util/LinkedList;

    new-instance v2, Lorg/apache/poi/util/IdentifierManager$Segment;

    invoke-direct {v2, v4, v5, v4, v5}, Lorg/apache/poi/util/IdentifierManager$Segment;-><init>(JJ)V

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return v9

    :cond_2
    cmp-long v3, v1, v3

    if-nez v3, :cond_5

    iget-object v1, v0, Lorg/apache/poi/util/IdentifierManager;->segments:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/util/IdentifierManager$Segment;

    iget-wide v2, v1, Lorg/apache/poi/util/IdentifierManager$Segment;->start:J

    iget-wide v4, v0, Lorg/apache/poi/util/IdentifierManager;->lowerbound:J

    add-long/2addr v7, v4

    cmp-long v7, v2, v7

    if-nez v7, :cond_3

    iput-wide v4, v1, Lorg/apache/poi/util/IdentifierManager$Segment;->start:J

    return v9

    :cond_3
    cmp-long v1, v2, v4

    if-nez v1, :cond_4

    return v6

    :cond_4
    iget-object v1, v0, Lorg/apache/poi/util/IdentifierManager;->segments:Ljava/util/LinkedList;

    new-instance v2, Lorg/apache/poi/util/IdentifierManager$Segment;

    invoke-direct {v2, v4, v5, v4, v5}, Lorg/apache/poi/util/IdentifierManager$Segment;-><init>(JJ)V

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    return v9

    :cond_5
    add-long v3, v1, v7

    sub-long v10, v1, v7

    iget-object v5, v0, Lorg/apache/poi/util/IdentifierManager;->segments:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/ListIterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_b

    invoke-interface {v5}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/poi/util/IdentifierManager$Segment;

    iget-wide v13, v12, Lorg/apache/poi/util/IdentifierManager$Segment;->end:J

    cmp-long v15, v13, v10

    if-gez v15, :cond_6

    goto :goto_0

    :cond_6
    iget-wide v6, v12, Lorg/apache/poi/util/IdentifierManager$Segment;->start:J

    cmp-long v16, v6, v3

    if-lez v16, :cond_7

    invoke-interface {v5}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    new-instance v3, Lorg/apache/poi/util/IdentifierManager$Segment;

    invoke-direct {v3, v1, v2, v1, v2}, Lorg/apache/poi/util/IdentifierManager$Segment;-><init>(JJ)V

    invoke-interface {v5, v3}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    return v9

    :cond_7
    cmp-long v3, v6, v3

    if-nez v3, :cond_8

    iput-wide v1, v12, Lorg/apache/poi/util/IdentifierManager$Segment;->start:J

    return v9

    :cond_8
    cmp-long v3, v13, v10

    if-nez v3, :cond_a

    iput-wide v1, v12, Lorg/apache/poi/util/IdentifierManager$Segment;->end:J

    invoke-interface {v5}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v5}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/util/IdentifierManager$Segment;

    iget-wide v2, v1, Lorg/apache/poi/util/IdentifierManager$Segment;->start:J

    iget-wide v6, v12, Lorg/apache/poi/util/IdentifierManager$Segment;->end:J

    const-wide/16 v10, 0x1

    add-long/2addr v6, v10

    cmp-long v2, v2, v6

    if-nez v2, :cond_9

    iget-wide v1, v1, Lorg/apache/poi/util/IdentifierManager$Segment;->end:J

    iput-wide v1, v12, Lorg/apache/poi/util/IdentifierManager$Segment;->end:J

    invoke-interface {v5}, Ljava/util/ListIterator;->remove()V

    :cond_9
    return v9

    :cond_a
    const/4 v1, 0x0

    goto :goto_1

    :cond_b
    move v1, v6

    :goto_1
    return v1

    :cond_c
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Value for parameter \'id\' was out of bounds, had "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", but should be within ["

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v0, Lorg/apache/poi/util/IdentifierManager;->lowerbound:J

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v0, Lorg/apache/poi/util/IdentifierManager;->upperbound:J

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public reserve(J)J
    .locals 9

    iget-wide v0, p0, Lorg/apache/poi/util/IdentifierManager;->lowerbound:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_d

    iget-wide v0, p0, Lorg/apache/poi/util/IdentifierManager;->upperbound:J

    cmp-long v0, p1, v0

    if-gtz v0, :cond_d

    invoke-direct {p0}, Lorg/apache/poi/util/IdentifierManager;->verifyIdentifiersLeft()V

    iget-wide v0, p0, Lorg/apache/poi/util/IdentifierManager;->upperbound:J

    cmp-long v0, p1, v0

    const-wide/16 v1, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/apache/poi/util/IdentifierManager;->segments:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/util/IdentifierManager$Segment;

    iget-wide v3, v0, Lorg/apache/poi/util/IdentifierManager$Segment;->end:J

    iget-wide v5, p0, Lorg/apache/poi/util/IdentifierManager;->upperbound:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    sub-long/2addr v5, v1

    iput-wide v5, v0, Lorg/apache/poi/util/IdentifierManager$Segment;->end:J

    iget-wide v0, v0, Lorg/apache/poi/util/IdentifierManager$Segment;->start:J

    cmp-long v0, v0, v5

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/util/IdentifierManager;->segments:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    :cond_0
    return-wide p1

    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/util/IdentifierManager;->reserveNew()J

    move-result-wide p1

    return-wide p1

    :cond_2
    iget-wide v3, p0, Lorg/apache/poi/util/IdentifierManager;->lowerbound:J

    cmp-long v0, p1, v3

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/apache/poi/util/IdentifierManager;->segments:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/util/IdentifierManager$Segment;

    iget-wide v3, v0, Lorg/apache/poi/util/IdentifierManager$Segment;->start:J

    iget-wide v5, p0, Lorg/apache/poi/util/IdentifierManager;->lowerbound:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_4

    add-long/2addr v5, v1

    iput-wide v5, v0, Lorg/apache/poi/util/IdentifierManager$Segment;->start:J

    iget-wide v0, v0, Lorg/apache/poi/util/IdentifierManager$Segment;->end:J

    cmp-long v0, v0, v5

    if-gez v0, :cond_3

    iget-object v0, p0, Lorg/apache/poi/util/IdentifierManager;->segments:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    :cond_3
    return-wide p1

    :cond_4
    invoke-virtual {p0}, Lorg/apache/poi/util/IdentifierManager;->reserveNew()J

    move-result-wide p1

    return-wide p1

    :cond_5
    iget-object v0, p0, Lorg/apache/poi/util/IdentifierManager;->segments:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/util/IdentifierManager$Segment;

    iget-wide v4, v3, Lorg/apache/poi/util/IdentifierManager$Segment;->end:J

    cmp-long v6, v4, p1

    if-gez v6, :cond_6

    goto :goto_0

    :cond_6
    iget-wide v6, v3, Lorg/apache/poi/util/IdentifierManager$Segment;->start:J

    cmp-long v8, v6, p1

    if-lez v8, :cond_7

    goto :goto_1

    :cond_7
    cmp-long v8, v6, p1

    if-nez v8, :cond_9

    add-long/2addr v1, p1

    iput-wide v1, v3, Lorg/apache/poi/util/IdentifierManager$Segment;->start:J

    cmp-long v1, v4, v1

    if-gez v1, :cond_8

    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    :cond_8
    return-wide p1

    :cond_9
    cmp-long v8, v4, p1

    if-nez v8, :cond_b

    sub-long v1, p1, v1

    iput-wide v1, v3, Lorg/apache/poi/util/IdentifierManager$Segment;->end:J

    cmp-long v1, v6, v1

    if-lez v1, :cond_a

    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    :cond_a
    return-wide p1

    :cond_b
    new-instance v6, Lorg/apache/poi/util/IdentifierManager$Segment;

    add-long v7, p1, v1

    invoke-direct {v6, v7, v8, v4, v5}, Lorg/apache/poi/util/IdentifierManager$Segment;-><init>(JJ)V

    invoke-interface {v0, v6}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    sub-long v0, p1, v1

    iput-wide v0, v3, Lorg/apache/poi/util/IdentifierManager$Segment;->end:J

    return-wide p1

    :cond_c
    :goto_1
    invoke-virtual {p0}, Lorg/apache/poi/util/IdentifierManager;->reserveNew()J

    move-result-wide p1

    return-wide p1

    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value for parameter \'id\' was out of bounds, had "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", but should be within ["

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p1, p0, Lorg/apache/poi/util/IdentifierManager;->lowerbound:J

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p1, p0, Lorg/apache/poi/util/IdentifierManager;->upperbound:J

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reserveNew()J
    .locals 7

    invoke-direct {p0}, Lorg/apache/poi/util/IdentifierManager;->verifyIdentifiersLeft()V

    iget-object v0, p0, Lorg/apache/poi/util/IdentifierManager;->segments:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/util/IdentifierManager$Segment;

    iget-wide v1, v0, Lorg/apache/poi/util/IdentifierManager$Segment;->start:J

    const-wide/16 v3, 0x1

    add-long/2addr v3, v1

    iput-wide v3, v0, Lorg/apache/poi/util/IdentifierManager$Segment;->start:J

    iget-wide v5, v0, Lorg/apache/poi/util/IdentifierManager$Segment;->end:J

    cmp-long v0, v3, v5

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/util/IdentifierManager;->segments:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    :cond_0
    return-wide v1
.end method
