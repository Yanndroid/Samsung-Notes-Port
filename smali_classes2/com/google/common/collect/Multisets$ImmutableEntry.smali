.class Lcom/google/common/collect/Multisets$ImmutableEntry;
.super Lcom/google/common/collect/Multisets$AbstractEntry;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Multisets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImmutableEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/Multisets$AbstractEntry<",
        "TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final count:I

.field private final element:Ljava/lang/Object;
    .annotation runtime Lcom/google/common/collect/ParametricNullness;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/common/collect/Multisets$AbstractEntry;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/Multisets$ImmutableEntry;->element:Ljava/lang/Object;

    iput p2, p0, Lcom/google/common/collect/Multisets$ImmutableEntry;->count:I

    const-string p1, "count"

    invoke-static {p2, p1}, Lcom/google/common/collect/CollectPreconditions;->checkNonnegative(ILjava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    iget v0, p0, Lcom/google/common/collect/Multisets$ImmutableEntry;->count:I

    return v0
.end method

.method public final getElement()Ljava/lang/Object;
    .locals 1
    .annotation runtime Lcom/google/common/collect/ParametricNullness;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/Multisets$ImmutableEntry;->element:Ljava/lang/Object;

    return-object v0
.end method

.method public nextInBucket()Lcom/google/common/collect/Multisets$ImmutableEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multisets$ImmutableEntry<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method
