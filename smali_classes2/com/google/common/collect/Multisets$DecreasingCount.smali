.class final Lcom/google/common/collect/Multisets$DecreasingCount;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Multisets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DecreasingCount"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/google/common/collect/Multiset$Entry<",
        "*>;>;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/google/common/collect/Multisets$DecreasingCount;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/collect/Multisets$DecreasingCount;

    invoke-direct {v0}, Lcom/google/common/collect/Multisets$DecreasingCount;-><init>()V

    sput-object v0, Lcom/google/common/collect/Multisets$DecreasingCount;->INSTANCE:Lcom/google/common/collect/Multisets$DecreasingCount;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/google/common/collect/Multiset$Entry;Lcom/google/common/collect/Multiset$Entry;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Multiset$Entry<",
            "*>;",
            "Lcom/google/common/collect/Multiset$Entry<",
            "*>;)I"
        }
    .end annotation

    invoke-interface {p2}, Lcom/google/common/collect/Multiset$Entry;->getCount()I

    move-result p2

    invoke-interface {p1}, Lcom/google/common/collect/Multiset$Entry;->getCount()I

    move-result p1

    sub-int/2addr p2, p1

    return p2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/google/common/collect/Multiset$Entry;

    check-cast p2, Lcom/google/common/collect/Multiset$Entry;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/Multisets$DecreasingCount;->compare(Lcom/google/common/collect/Multiset$Entry;Lcom/google/common/collect/Multiset$Entry;)I

    move-result p1

    return p1
.end method
