.class Lcom/google/common/collect/ImmutableBiMap$SerializedForm;
.super Lcom/google/common/collect/ImmutableMap$SerializedForm;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableBiMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SerializedForm"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableMap$SerializedForm<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method public constructor <init>(Lcom/google/common/collect/ImmutableBiMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableBiMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/common/collect/ImmutableMap$SerializedForm;-><init>(Lcom/google/common/collect/ImmutableMap;)V

    return-void
.end method


# virtual methods
.method public makeBuilder(I)Lcom/google/common/collect/ImmutableBiMap$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/ImmutableBiMap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/ImmutableBiMap$Builder;

    invoke-direct {v0, p1}, Lcom/google/common/collect/ImmutableBiMap$Builder;-><init>(I)V

    return-object v0
.end method

.method public bridge synthetic makeBuilder(I)Lcom/google/common/collect/ImmutableMap$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableBiMap$SerializedForm;->makeBuilder(I)Lcom/google/common/collect/ImmutableBiMap$Builder;

    move-result-object p1

    return-object p1
.end method
